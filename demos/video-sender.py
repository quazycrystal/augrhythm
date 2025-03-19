import cv2
import subprocess
import numpy as np

# RTSP
# Initialize webcam capture
cap = cv2.VideoCapture(0)

# Check if the webcam is opened correctly
if not cap.isOpened():
    print("Error: Could not open webcam.")
    exit()

# Define the FFmpeg command to stream over RTSP
ffmpeg_command = [
    'ffmpeg',
    '-re',  # Read input at native frame rate
    '-f', 'rawvideo',  # Input format
    '-pix_fmt', 'bgr24',  # Pixel format
    '-s', '640x480',  # Frame size; adjust as needed
    '-i', '-',  # Input comes from stdin
    '-c:v', 'libx264',  # Video codec
    '-f', 'rtsp',  # Output format
    'rtsp://localhost:8554/stream'  # RTSP server URL
]

# Start the FFmpeg process
process = subprocess.Popen(ffmpeg_command, stdin=subprocess.PIPE)

try:
    while True:
        # Capture frame-by-frame
        ret, frame = cap.read()
        if not ret:
            print("Error: Failed to capture image.")
            break

        # Write the frame to FFmpeg's stdin
        process.stdin.write(frame.tobytes())

except KeyboardInterrupt:
    print("Streaming stopped.")

finally:
    # Release resources
    cap.release()
    process.stdin.close()
    process.wait()

# # UDP / TCP
# # Define the FFmpeg command
# ffmpeg_command = [
#     'ffmpeg',
#     '-y',  # Overwrite output files without asking
#     '-f', 'rawvideo',  # Input format
#     '-vcodec', 'rawvideo',  # Input codec
#     '-pix_fmt', 'bgr24',  # Input pixel format
#     '-s', '640x480',  # Input resolution
#     '-r', '30',  # Input frame rate
#     '-i', '-',  # Input comes from stdin
#     '-an',  # No audio
#     '-c:v', 'libx264',  # Output codec default: libx264
#     '-preset', 'ultrafast',  # Encoding speed
#     '-f', 'mpegts',  # Output format default: mpegts
#     'udp://127.0.0.1:8000/stream'  # Output URL
# ]

# # Start the FFmpeg process
# ffmpeg_process = subprocess.Popen(ffmpeg_command, stdin=subprocess.PIPE)

# # Open the webcam
# cap = cv2.VideoCapture(0)

# # Set the desired frame width and height
# cap.set(cv2.CAP_PROP_FRAME_WIDTH, 640)
# cap.set(cv2.CAP_PROP_FRAME_HEIGHT, 480)

# while True:
#     ret, frame = cap.read()
#     if not ret:
#         print("Failed to capture frame from webcam. Exiting...")
#         break

#     # Process the frame (example: convert to grayscale)
#     processed_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
#     processed_frame = cv2.cvtColor(processed_frame, cv2.COLOR_GRAY2BGR)  # Convert back to BGR

#     # Write the processed frame to FFmpeg's stdin
#     try:
#         ffmpeg_process.stdin.write(processed_frame.tobytes())
#     except BrokenPipeError:
#         print("FFmpeg process has terminated. Exiting...")
#         break

#     # Display the processed frame locally
#     cv2.imshow('Processed Webcam Feed', processed_frame)
#     if cv2.waitKey(1) & 0xFF == ord('q'):
#         break

# # Release resources
# cap.release()
# ffmpeg_process.stdin.close()
# ffmpeg_process.wait()
# cv2.destroyAllWindows()
