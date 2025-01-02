import cv2
import numpy as np
from pyapriltags import Detector
from pythonosc import udp_client
from pythonosc.dispatcher import Dispatcher
from pythonosc.osc_server import BlockingOSCUDPServer
import threading
import time
from cv2_enumerate_cameras import enumerate_cameras

# Initialize OSC clients for different ports
osc_client_able_cams = udp_client.SimpleUDPClient("127.0.0.1", 7000)
osc_client_tags = udp_client.SimpleUDPClient("127.0.0.1", 7200)
osc_client_angles = udp_client.SimpleUDPClient("127.0.0.1", 7300)

def send_osc_message(client, address, data):
    """Send a custom OSC message."""
    client.send_message(address, data)

def send_able_cams():
    """Send the list of available cameras via OSC."""
    previous_cams = []
    cams = []

    for camera_info in enumerate_cameras(cv2.CAP_MSMF):
        cams.append(f'{camera_info.index}: {camera_info.name}')

    if previous_cams != cams:
        previous_cams = cams
        send_osc_message(osc_client_able_cams, "/able_cams", "clear")
        for cam in cams:
            send_osc_message(osc_client_able_cams, "/able_cams", f"append {cam}")


def selected_cam_handler(address, *args):
    """Handle incoming OSC messages for selecting a camera."""
    print(f"Received OSC message on {address}: {args}")
    # Add your logic for handling the selected camera here

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

def tags_and_angles():
    """Detect AprilTags in real-time and send data via OSC."""
    cap = cv2.VideoCapture(0)  # Change the index if necessary
    detector = Detector(families="tagStandard41h12")

    while cap.isOpened():
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
        detected_angles = [0] * 32 # just make whole 32 list

        for tag in tags:
             if tag.tag_id in target_angle_tags:

                # Calculate angle using the corners
                corners = np.array(tag.corners, dtype=int)
                dy = corners[1][1] - corners[0][1]
                dx = corners[1][0] - corners[0][0]
                angle = int((np.degrees(np.arctan2(dy, dx)) + 360) % 360)

                detected_angles[tag.tag_id] = angle

        send_osc_message(osc_client_angles, "/angles", detected_angles)

        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

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
            # Send the list of available cameras
            send_able_cams()
            time.sleep(1)
    except KeyboardInterrupt:
        print("Exiting...")

if __name__ == "__main__":
    main()
