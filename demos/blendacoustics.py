import cv2
import numpy as np
from pyapriltags import Detector
from pythonosc import udp_client
from pythonosc.dispatcher import Dispatcher
from pythonosc.osc_server import BlockingOSCUDPServer
import threading
import time
from cv2_enumerate_cameras import enumerate_cameras

# things to do (12/29)
# 1. selected cam - available cam communication: Done
# 2. send tagged video to jit: Done, just add python window
# 3. MIDI functions (can be deleted..): Done -> just change into audio clip tracks
# 4. effector funtions and global controllers
# 5. how will you do with global on and offf??? get one more function for global controllers! if on = off: Done

class Backend:
    def __init__(self):
        self.selected_cam = 0
        self.previous_selected_cam = 0
        self.cap = None
        self.selected_cam = 0
        self.fps = 60
        self.previous_fps = 60
        self.exposure = -6
        self.previous_exposure = -6

        # Initialize OSC clients
        self.osc_client_able_cams = udp_client.SimpleUDPClient("127.0.0.1", 7000)
        self.osc_client_tags = udp_client.SimpleUDPClient("127.0.0.1", 7200)
        self.osc_client_angles = udp_client.SimpleUDPClient("127.0.0.1", 7300)

        # Initialize detector
        self.detector = Detector(families="tagStandard41h12")

    def send_osc_message(self, client, address, data):
        """Send a custom OSC message."""
        client.send_message(address, data)

    def start_osc_server(self, ip, port):
        """Start the OSC server in a separate thread."""
        dispatcher = Dispatcher()
        dispatcher.map("/selected_cam", self.selected_cam_handler)
        dispatcher.map("/fps", self.fps_handler)
        dispatcher.map("/exposure", self.exposure_handler)
        server = BlockingOSCUDPServer((ip, port), dispatcher)

        def server_thread():
            print(f"Listening for OSC messages on {ip}:{port}")
            server.serve_forever()

        thread = threading.Thread(target=server_thread, daemon=True)
        thread.start()

    def selected_cam_handler(self, address, *args):
        """Handle incoming OSC messages for selecting a camera."""
        if args:
            self.selected_cam = args[0]
            print(f"cam: {self.selected_cam}")

    def fps_handler(self, address, *args):
        if args:
            self.fps = args[0]
            print(f"fps: {self.fps}")

    def exposure_handler(self, address, *args):
        if args:
            self.exposure = args [0]
            print(f"exp: {self.exposure}")

    def send_able_cams(self):
        """Send the list of available cameras via OSC."""
        cams = []
        for camera_info in enumerate_cameras(cv2.CAP_MSMF):
            cams.append(f"{camera_info.index}: {camera_info.name}")

        self.send_osc_message(self.osc_client_able_cams, "/clear_cams", "clear")
        for cam in cams:
            self.send_osc_message(self.osc_client_able_cams, "/able_cams", cam)

    def handle_camera_disconnection(self):
        """Handle camera disconnection by switching to default camera."""
        # print(f"Camera {self.selected_cam} disconnected. Switching to camera index 0.")
        self.selected_cam = 0
        self.previous_selected_cam = 0
        self.cap = cv2.VideoCapture(self.selected_cam)

    def tags_and_angles(self):
        """Detect AprilTags in real-time and send data via OSC."""
        self.cap = cv2.VideoCapture(self.selected_cam)
        self.cap.set(cv2.CAP_PROP_FPS, self.fps)
        self.cap.set(cv2.CAP_PROP_EXPOSURE, self.exposure)  # Adjust the value based on your camera
        try:
            while True:

                if not self.cap or not self.cap.isOpened():
                    self.handle_camera_disconnection()

                if self.previous_selected_cam != self.selected_cam:
                    self.cap.release()
                    self.cap = cv2.VideoCapture(self.selected_cam)
                    self.previous_selected_cam = self.selected_cam

                ret, frame = self.cap.read()
                if not ret:
                    self.handle_camera_disconnection()
                    continue

                if self.previous_fps != self.fps:
                    self.cap.set(cv2.CAP_PROP_FPS, self.fps)
                    self.previous_fps = self.fps
                
                if self.previous_exposure != self.exposure:
                    self.cap.set(cv2.CAP_PROP_EXPOSURE, self.exposure)
                    self.previous_exposure = self.exposure

                gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
                tags = self.detector.detect(gray)

                # Detected tags
                detected_tags = [tag.tag_id for tag in tags]
                max_tags = [1 if tag_id in detected_tags else 0 for tag_id in range(32)]
                self.send_osc_message(self.osc_client_tags, "/tags", max_tags)

                # Detected angles
                target_angle_tags = {4, 5, 6, 7, 24, 25, 26, 27, 28, 29, 30, 31}  # Use a set for fast membership checks
                detected_angles = [0] * 32 # just make whole 32 list

                for tag in tags:
                    corners = np.array(tag.corners, dtype=int)
                    dy = corners[1][1] - corners[0][1]
                    dx = corners[1][0] - corners[0][0]
                    angle = int((np.degrees(np.arctan2(dy, dx)) + 360) % 360)

                    if tag.tag_id in target_angle_tags:
                        detected_angles[tag.tag_id] = angle
                    black = (0, 0, 0)  # Black for IDs and angles
                    green = (0, 255, 0) # Green for frames

                    for i in range(4):
                        # Sending video
                        # Draw detected tag corners and ID on the frame
                        cv2.line(frame, tuple(corners[i]), tuple(corners[(i + 1) % 4]), green, 2)
                    cv2.putText(frame, f"#{tag.tag_id}", (corners[0][0], corners[0][1] - 10),
                    cv2.FONT_HERSHEY_SIMPLEX, 0.6, black, 2)

                    if tag.tag_id in target_angle_tags:
                        angle = int((np.degrees(np.arctan2(dy, dx)) + 360) % 360)
                        detected_angles[tag.tag_id] = angle

                        # Draw detected angle on the frame (only knobs)
                        cv2.putText(frame, f"{angle} dgr", (corners[0][0], corners[0][1] - 30),
                        cv2.FONT_HERSHEY_SIMPLEX, 0.6, black, 2) 

                self.send_osc_message(self.osc_client_angles, "/angles", detected_angles)

                # Display the frame
                cv2.imshow("Blendacoustics", frame)
                if cv2.waitKey(1) & 0xFF == ord("q"):
                    break
        finally:
            self.cap.release()
            cv2.destroyAllWindows()

    def run(self):
        """Start the OSC server and detection loop."""
        self.start_osc_server("127.0.0.1", 7100)
        detection_thread = threading.Thread(target=self.tags_and_angles)
        detection_thread.start()

        try:
            while True:
                self.send_able_cams()
                # print (f"now {self.selected_cam}")
                # print (f"old {self.previous_selected_cam}")
                time.sleep(1)
        except KeyboardInterrupt:
            print("Exiting...")


if __name__ == "__main__":
    manager = Backend()
    manager.run()
