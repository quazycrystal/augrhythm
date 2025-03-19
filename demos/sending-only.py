# Communicate with max using OSC
# Send: Available cams, Detected tags, Tag angles (24 - 31)
# Receive: Selected cam

import cv2
import numpy as np
from pyapriltags import Detector
from pythonosc import udp_client
import threading
import time
from cv2_enumerate_cameras import enumerate_cameras

# Initialize OSC clients for different ports
osc_client_cameras = udp_client.SimpleUDPClient("127.0.0.1", 7000)
osc_client_tags = udp_client.SimpleUDPClient("127.0.0.1", 7200)
osc_client_angles = udp_client.SimpleUDPClient("127.0.0.1", 7300)

def get_cams():
    """Enumerate available camera devices."""
    cams = []
    for camera_info in enumerate_cameras(cv2.CAP_MSMF):
        cams.append (f'{camera_info.index}: {camera_info.name}')
    print (cams)
    return cams

def send_cams():
    """Send the list of available cameras via OSC."""
    osc_client_cameras.send_message("/cams", get_cams())


def tags_and_angles():
    """Detect AprilTags in real-time and send data via OSC."""
    cap = cv2.VideoCapture(0)  # Change the index if necessary
    # Initialize the AprilTag detector
    detector = Detector(families="tagStandard41h12")

    # Read a frame from the camera
    ret, frame = cap.read()
    if not ret:
        return None, "Failed to grab frame"

    # Convert the frame to grayscale for tag detection
    gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

    # Detect AprilTags
    detections = detector.detect(gray_frame)

    while cap.isOpened():
        ret, frame = cap.read()
        if not ret:
            break

        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        tags = detector.detect(gray)

        # Send detected tag IDs
        tag_lists = [0] * 32
        detected_tags = [tag.tag_id for tag in tags]
        for tag_id in detected_tags:
            if 0 <= tag_id < 32:
                tag_lists[tag_id] = 1
        
        osc_client_tags.send_message("/tags", tag_lists)
        print ("/tags", detected_tags)

        # Send angles for tags 24-31
        detected_angles = []
        for tag in tags:
            if 24 <= tag.tag_id <= 31:
                corners = np.array(tag.corners, dtype=int)
                # Compute angle of rotation (in degrees)
                detected_angles = int(np.degrees(np.arctan2(corners[1][1] - corners[0][1], corners[1][0] - corners[0][0])) + 180) # Tag angle to MIDI (slider)
        osc_client_angles.send_message("/angles", detected_angles)

        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

    cap.release()
    cv2.destroyAllWindows()

def main():
    # Start the AprilTag detection in a separate thread
    detection_thread = threading.Thread(target=tags_and_angles)
    detection_thread.start()

    # Keep the main thread alive
    try:
        while True:
            # Send the list of available camerass
            send_cams()
            time.sleep(1)
    except KeyboardInterrupt:
        pass

if __name__ == "__main__":
    main()
