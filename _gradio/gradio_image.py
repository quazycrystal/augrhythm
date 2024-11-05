# Libraries
import gradio as gr
import cv2
import numpy as np
from pyapriltags import Detector

# Variables
# Initialize the AprilTag detector with the default tag family
detector = Detector(families='tagStandard41h12')
# Capture video from a camera (or use a video file)
cap = cv2.VideoCapture(0)

# Functions
def knob():
    # Capture frame-by-frame from the webcam
    ret, frame = cap.read()
    if not ret:
        return None

    # Convert frame to grayscale (required for the detector)
    gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    
    # Detect AprilTags in the frame
    tags = detector.detect(gray_frame)
    
    for tag in tags:
        # Extract the center and corners of the tag
        center = (int(tag.center[0]), int(tag.center[1]))
        corners = np.array(tag.corners, dtype=int)
        
        # Compute angle of rotation (in degrees)
        angle = np.degrees(np.arctan2(corners[1][1] - corners[0][1], corners[1][0] - corners[0][0]))
        
        # Draw a bounding box around the tag
        for i in range(4):
            cv2.line(frame, tuple(corners[i]), tuple(corners[(i + 1) % 4]), (0, 255, 0), 2)
        
        # Draw center point
        cv2.circle(frame, center, 5, (0, 0, 255), -1)
        
        # Display the angle
        cv2.putText(frame, f"Angle: {angle:.2f} degrees", 
                    (center[0] - 50, center[1] - 20), 
                    cv2.FONT_HERSHEY_SIMPLEX, 
                    0.5, 
                    (255, 0, 0), 
                    2, 
                    cv2.LINE_AA)

    return frame  # Return the frame directly as a NumPy array

# Define Gradio interface
demo = gr.Interface(
    fn=knob,          # The function providing frames
    inputs=None,       # No specific user input is needed
    outputs=gr.Image(type="numpy"),  # Output should be a NumPy array image format
    live=True          # Enable real-time streaming
)

demo.launch()
