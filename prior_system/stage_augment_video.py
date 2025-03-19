import cv2
import numpy as np
import pyapriltags

# Initialize AprilTag Detector
detector = pyapriltags.Detector(families="tagStandard41h12")

# Open Webcam
cap = cv2.VideoCapture(0)

# Load video (Change this to your actual file path)
video_path = "C:/Users/jiwon/Desktop/demo_final_video.mp4"
video = cv2.VideoCapture(video_path)
video.set(cv2.CAP_PROP_FPS, cap.get(cv2.CAP_PROP_FPS))


# Ensure video is valid
if not video.isOpened():
    print(f"Error: Could not open video file at {video_path}")
    exit()

while cap.isOpened():
    ret, frame = cap.read()
    if not ret:
        print("Error: Camera feed not available!")
        break

    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    detections = detector.detect(gray)

    if detections:
        ret_vid, video_frame = video.read()
        if not ret_vid:  # Loop the video
            video.set(cv2.CAP_PROP_POS_FRAMES, 0)
            ret_vid, video_frame = video.read()

        if ret_vid:
            for tag in detections:
                corners = np.array(tag.corners, dtype=np.float32)

                # Calculate the center of the marker
                center_x = int(np.mean(corners[:, 0]))
                center_y = int(np.mean(corners[:, 1]))

                # Calculate the size of the marker
                width = int(np.linalg.norm(corners[0] - corners[1]))
                height = int(np.linalg.norm(corners[1] - corners[2]))

                # Scale the video to be larger than the marker
                scale_factor = 2.0  # Adjust scale factor as needed
                video_width = int(160 * scale_factor)
                video_height = int(90 * scale_factor)

                # Resize the video frame
                video_frame = cv2.resize(video_frame, (video_width, video_height))

                # Calculate the new target points for the larger video
                half_width = video_width // 2
                half_height = video_height // 2

                # Define the four target points for the video overlay
                target_pts = np.array([
                    [center_x - half_width, center_y - half_height],  # Top-left
                    [center_x + half_width, center_y - half_height],  # Top-right
                    [center_x + half_width, center_y + half_height],  # Bottom-right
                    [center_x - half_width, center_y + half_height],  # Bottom-left
                ], dtype=np.float32)

                # Define the corresponding points from the video frame
                src_pts = np.array([
                    [0, 0],
                    [video_width, 0],
                    [video_width, video_height],
                    [0, video_height]
                ], dtype=np.float32)

                # Compute homography transformation to warp the video onto the marker
                matrix, _ = cv2.findHomography(src_pts, target_pts)

                # Warp the video frame to align with the detected marker
                warped_video = cv2.warpPerspective(video_frame, matrix, (frame.shape[1], frame.shape[0]))

                # Create a mask to blend the video onto the frame
                mask = np.zeros_like(frame, dtype=np.uint8)
                cv2.fillConvexPoly(mask, target_pts.astype(int), (255, 255, 255))

                # Instead of blending, directly replace only the pixels in the masked area
                frame = np.where(mask > 0, warped_video, frame)

    # Display the output frame
    cv2.imshow("AR Video Overlay", frame)

    if cv2.waitKey(30) & 0xFF == ord('q'):
        break

# Release resources
cap.release()
video.release()
cv2.destroyAllWindows()
