# Libraries
import gradio as gr
import cv2
import numpy as np
from pyapriltags import Detector
from time import sleep

# Variables
# Initialize the AprilTag detector with the default tag family
detector = Detector(families='tagStandard41h12')
# Capture video from a camera (or use a video file)
cap = cv2.VideoCapture(0)

# Functions
def knob():
    while cap.isOpened():
        # Capture frame-by-frame from the webcam
        ret, frame = cap.read()
        if not ret or frame is None:
            continue  # Skip this iteration if no frame is captured

        # Convert frame to grayscale (required for the detector)
        try:
            gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
        except cv2.error as e:
            print(f"Error converting frame to grayscale: {e}")
            continue  # Skip this frame if conversion fails

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

        # Return the processed frame for streaming
        yield frame

# Define Gradio interface
gr.Interface(
    fn=knob,
    inputs=None,  # No specific user input is needed, using webcam directly
    outputs=gr.Video(format="mp4", sources="webcam", streaming=True, autoplay=True),  # Stream video output
    #live=True  # Enable real-time video streaming
).launch()
