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
# 2. send tagged video to jit
# 3. MIDI functions (can be deleted..)
# 4. effector funtions
# 5. how will you do with global on and offf??? get one more function for global controllers! if on = off


# Initialize OSC clients for different ports
osc_client_able_cams = udp_client.SimpleUDPClient("127.0.0.1", 7000)
osc_client_tags = udp_client.SimpleUDPClient("127.0.0.1", 7200)
osc_client_angles = udp_client.SimpleUDPClient("127.0.0.1", 7300)

def send_osc_message(client, address, data):
    """Send a custom OSC message."""
    client.send_message(address, data)

# make video sending code using udp
# Prevent initialization of "previous_cams" every time the function is called
# If it is initialized, it will lose info from the previous one
previous_cams = []

def send_able_cams():
    """Send the list of available cameras via OSC."""
    global previous_cams
    cams = [] # Local: isolate its usage, making the program safer and easier to understand.

    for camera_info in enumerate_cameras(cv2.CAP_MSMF):
        cams.append(f'{camera_info.index}: {camera_info.name}')


    if previous_cams != cams:
        previous_cams = cams
        send_osc_message(osc_client_able_cams, "/clear_cams", "clear")
        for cam in cams:
            send_osc_message(osc_client_able_cams, "/able_cams", cam)

# Args [0] is the index of selected cam
selected_cam = 0 
def selected_cam_handler(address, *args): 
    """Handle incoming OSC messages for selecting a camera."""
    global selected_cam
    if args == ():
        selected_cam = 0
    else:
        selected_cam = args [0]
print (selected_cam)


def start_osc_server(ip, port):
    """Start the OSC server in a separate thread."""
    dispatcher = Dispatcher()
    dispatcher.map("/selected_cam", selected_cam_handler)

    server = BlockingOSCUDPServer((ip, port), dispatcher)

    def server_thread():
        print(f"Listening for OSC messages on {ip}:{port}")
        server.serve_forever()

    thread = threading.Thread(target=server_thread, daemon=True)
    thread.start()


previous_selected_cam = 0
def tags_and_angles():
    """Detect AprilTags in real-time and send data via OSC."""
    global previous_selected_cam
    global selected_cam
    cap = cv2.VideoCapture(selected_cam)  # Change the index if necessary

    detector = Detector(families="tagStandard41h12")

    try:
        while True:
            if cap is None or not cap.isOpened(): # Camera disconnected
                print(f"Camera {selected_cam} disconnected. Switching to camera index 0.")
                selected_cam = 0  # Update the selected camera index to 0
                cap = cv2.VideoCapture(selected_cam)  # Open the default camera
                
            if previous_selected_cam != selected_cam:
                cap.release()
                cap = cv2.VideoCapture(selected_cam)  # Change the index if necessary
                previous_selected_cam = selected_cam

            ret, frame = cap.read()
            if not ret:
                break

            gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
            tags = detector.detect(gray)

            # Detected tags
            detected_tags = [tag.tag_id for tag in tags]
            max_tags = [1 if tag_id in detected_tags else 0 for tag_id in range(32)]
            send_osc_message(osc_client_tags, "/tags", max_tags)

            # Detected angles
            target_angle_tags = {4, 5, 6, 7, 24, 25, 26, 27, 28, 29, 30, 31}  # Use a set for fast membership checks
            detected_angles = [0] * 32 # Placeholder list for all possible tags

            for tag in tags:
                # Detect tag corners
                corners = np.array(tag.corners, dtype=int)
                dy = corners[1][1] - corners[0][1]
                dx = corners[1][0] - corners[0][0]

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
            
            send_osc_message(osc_client_angles, "/angles", detected_angles)

            # Display the camera feed with overlay
            cv2.imshow("Detected Tags and Angles", frame)

            if cv2.waitKey(1) & 0xFF == ord('q'):
                break

    finally:
        cap.release()
        cv2.destroyAllWindows()

def main():
    # Start the OSC server in a separate thread
    start_osc_server("127.0.0.1", 7100)

    # Start the AprilTag detection in a separate thread
    detection_thread = threading.Thread(target=tags_and_angles)
    detection_thread.start()


    # Keep the main thread alive
    try:
        while True:
            # Contineously track available and selected cams
            send_able_cams()
            print (f"now {selected_cam}")
            print (f"old {previous_selected_cam}")
            time.sleep(1)
    except KeyboardInterrupt:
        print("Exiting...")

if __name__ == "__main__":
    main()
