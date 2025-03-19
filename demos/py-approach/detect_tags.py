import cv2
import numpy as np
import base64
from pyapriltags import Detector

def detect_apriltags_realtime():
    # Initialize the camera
    cap = cv2.VideoCapture(0)  # Default camera
    if not cap.isOpened():
        return None, "Camera could not be opened"

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

    # Prepare detected tags list
    detected_tags = {det.tag_id for det in detections}

    # Annotate the frame
    for det in detections:
        corners = np.array(det.corners, dtype=np.int32)
        for i in range(4):
            cv2.line(frame, tuple(corners[i]), tuple(corners[(i + 1) % 4]), (0, 255, 0), 2)
        center_x, center_y = det.center.astype(int)
        cv2.putText(frame, str(det.tag_id), (center_x, center_y), cv2.FONT_HERSHEY_SIMPLEX, 0.8, (255, 0, 0), 2)

    # Encode the frame as a Base64 string
    _, buffer = cv2.imencode('.jpg', frame)
    frame_base64 = base64.b64encode(buffer).decode('utf-8')

    # Release the camera
    cap.release()

    # Return detected tags and the frame as a Base64 string
    return list(detected_tags), frame_base64
