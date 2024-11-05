import cv2
from pyapriltags import Detector
import rtmidi

# Initialize the AprilTag detector
detector = Detector(families='tagStandard41h12')

# Setup MIDI output
midi_out = rtmidi.MidiOut()
available_ports = midi_out.get_ports() # MIDI OUT to Ableton


# Open the first available MIDI port, or create a new virtual port
if available_ports:
    midi_out.open_port(0)
    print("Available MIDI Output Ports:")
    for i, port in enumerate(available_ports):
        print(f"[{i}] {port}")
else:
    midi_out.open_virtual_port("AprilTag_MIDI")

# Helper function to send MIDI signals
def send_midi_signal(tag_id, action):
    # Example: Send a Note On message for tag appearance or disappearance
    note = (tag_id + 400) % 128  # Example of mapping tag ID to a MIDI note
    velocity = 64 if action == "appear" else 0  # Velocity 64 for appearance, 0 for disappearance

    midi_out.send_message([0x90, note, velocity])  # 0x90 is Note On

# Capture video from camera (camera index 0)
cap = cv2.VideoCapture(0) # If I make additional hardware -> change

# Track previous tag detections
previous_tags = set()

try:
    while True:
        # Read frame from the camera
        ret, frame = cap.read()
        if not ret:
            break

        # Convert the frame to grayscale (required by the detector)
        gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

        # Detect AprilTags
        detections = detector.detect(gray_frame)

        # Get a set of detected tag IDs in the current frame
        current_tags = set(d.tag_id for d in detections)

        # Determine new and disappeared tags
        new_tags = current_tags - previous_tags
        disappeared_tags = previous_tags - current_tags

        # Send MIDI signals for new tags
        for tag_id in new_tags:
            send_midi_signal(tag_id, "appear")

        # Send MIDI signals for disappeared tags
        for tag_id in disappeared_tags:
            send_midi_signal(tag_id, "disappear")

        # Update the previous tags for the next iteration
        previous_tags = current_tags

        # Display the frame with detected tags for debugging
        for detection in detections:
            corners = detection.corners
            cv2.polylines(frame, [corners.astype(int)], isClosed=True, color=(0, 255, 0), thickness=2)
            cv2.putText(frame, str(detection.tag_id), tuple(corners[0].astype(int)), 
                        cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 0, 0), 2)
        
        cv2.imshow("AprilTag Detection", frame)

        # Break the loop if 'q' is pressed
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break
finally:
    # Cleanup
    cap.release()
    cv2.destroyAllWindows()
    midi_out.close_port()