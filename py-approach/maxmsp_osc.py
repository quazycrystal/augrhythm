# 1. Opencv: Find out pre-designated tags
# 2. Tags detecteed: Send OSC signal to MAX msp (Turn on the toggle)
# 3. Multiple tags -> sent them as a list and MAX will separate

# No need to print tags, No MIDI, No GUI (All in MAX msp)
#===================================================================

import cv2
from pyapriltags import Detector  # For AprilTag detection
from pythonosc import udp_client  # For sending OSC messages

# Configure OSC client to send signals to Max/MSP
osc_ip = "127.0.0.1"  # Replace with the IP address of Max/MSP (use 127.0.0.1 for local)
osc_port = 7400       # Replace with the port Max/MSP is listening on
osc_client = udp_client.SimpleUDPClient(osc_ip, osc_port)

# Initialize the AprilTag detector
detector = Detector(families='tagStandard41h12')  # Tag family: tagStandard41h12

# Configure the video capture
cap = cv2.VideoCapture(0)  # Use the first available camera

def send_osc_message(address, value):
    """
    Send an OSC message to Max/MSP.
    :param address: OSC address (e.g., "/april_tag")
    :param value: Value to send with the message
    """
    osc_client.send_message(address, value)
    print(f"Sent OSC message: {address} {value}")

try:
    while True:
        # Capture a frame from the camera
        ret, frame = cap.read()
        if not ret:
            print("Failed to capture frame")
            break

        # Convert the frame to grayscale for tag detection
        gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

        # Detect AprilTags in the frame
        detections = detector.detect(gray_frame)

        for detection in detections:
            # Extract the tag ID
            tag_id = detection.tag_id

            print(f"Detected AprilTag ID: {tag_id}")

            # Send the detected tag ID as an OSC message to Max/MSP
            send_osc_message("/april_tag", tag_id)

            # Draw the tag's outline on the frame
            corners = detection.corners
            for i in range(4):
                pt1 = (int(corners[i][0]), int(corners[i][1]))
                pt2 = (int(corners[(i + 1) % 4][0]), int(corners[(i + 1) % 4][1]))
                cv2.line(frame, pt1, pt2, (0, 255, 0), 2)

        # Display the frame with the tag annotations
        cv2.imshow("AprilTag Detection", frame)

        # Press 'q' to exit the loop
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

except KeyboardInterrupt:
    print("Exiting...")

finally:
    cap.release()
    cv2.destroyAllWindows()
