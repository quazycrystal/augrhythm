import cv2
from pyapriltags import Detector  # For AprilTag detection

# Initialize the AprilTag detector
detector = Detector(families='tagStandard41h12')  # Tag family: tagStandard41h12
def __init__(self):
        super().__init__()

        # Store mapping "layout" widgets for easier management
        self.mappings = []
        # Store mapping "rows" for easier management
        self.current_mappings = []  # Initialize to prevent errors on first run

        # Track previous tag detections
        self.previous_tags = set()


# Configure the video capture
cap = cv2.VideoCapture(0)  # Use the first available camera
def tag_detection(self, frame, current_mappings):
        gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        tags = detector.detect(gray_frame)
 
        # Get a set of detected tag IDs in the current frame
        # print(self.previous_tags)
        current_tags = set(d.tag_id for d in tags)

        # Determine new and disappeared tags
        new_tags = current_tags - self.previous_tags
        disappeared_tags = self.previous_tags - current_tags

        # Update the previous tags for the next iteration
        self.previous_tags = current_tags

        for tag in tags:
            tag_id = tag.tag_id
            corners = np.array(tag.corners, dtype=int)
            center = (int(tag.center[0]), int(tag.center[1]))
            # Compute angle of rotation (in degrees)
            self.angle = int(np.degrees(np.arctan2(corners[1][1] - corners[0][1], corners[1][0] - corners[0][0])) + 180) # Tag angle to MIDI (slider)

            color = (0, 255, 255)  # Yellow for unknown
            thickness = 2

            # Draw bounding box and center point
            for i in range(4):
                cv2.line(frame, tuple(corners[i]), tuple(corners[(i + 1) % 4]), color, thickness)
                cv2.circle(frame, center, 5, color, -1)
                cv2.putText(frame, f"#{tag_id}, {self.tag_function}, {self.angle}", (center[0], center[1] - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, color, 2)
        
        # Send MIDI signals for new tags
        for tag_id in new_tags:
            self.send_midi_signal(tag_id=tag_id, action="appear")

        # Send MIDI signals for disappeared tags
        for tag_id in disappeared_tags:
            
        
        return frame
