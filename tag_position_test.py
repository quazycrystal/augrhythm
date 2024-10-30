import cv2
import numpy as np
import pyapriltags

# Initialize the AprilTag detector
detector = pyapriltags.Detector()

# Open the camera (change the index to use a different camera or video file)
cap = cv2.VideoCapture(0)

while True:
    ret, frame = cap.read()
    if not ret:
        break

    # Convert frame to grayscale as the detector expects gray images
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

    # Detect AprilTags in the image
    tags = detector.detect(gray)

    # Loop through detected tags
    for tag in tags:
        # Draw a rectangle around the detected tag
        for idx in range(4):
            pt1 = (int(tag.corners[idx][0]), int(tag.corners[idx][1]))
            pt2 = (int(tag.corners[(idx + 1) % 4][0]), int(tag.corners[(idx + 1) % 4][1]))
            cv2.line(frame, pt1, pt2, (0, 255, 0), 2)

        # Print out the tag's center and corners
        print(f"Tag ID: {tag.tag_id}")
        print(f"Center: {tag.center}")
        print(f"Corners: {tag.corners}")

        # Calculate pose (translation and rotation) using intrinsic camera parameters
        camera_matrix = np.array([[600, 0, 320],
                                  [0, 600, 240],
                                  [0, 0, 1]])
        dist_coeffs = np.zeros((4, 1))  # Assuming no lens distortion

        # Define the tag size in meters (change as per your tag's physical size)
        tag_size = 0.1  # 10 cm

        # Get the 3D points of the AprilTag corners in the object frame
        obj_points = np.array([[-tag_size / 2, -tag_size / 2, 0],
                               [ tag_size / 2, -tag_size / 2, 0],
                               [ tag_size / 2,  tag_size / 2, 0],
                               [-tag_size / 2,  tag_size / 2, 0]], dtype=np.float32)

        # Solve for pose using the tag's detected corners
        ret, rvec, tvec = cv2.solvePnP(obj_points, tag.corners, camera_matrix, dist_coeffs)

        # Convert rotation vector to a rotation matrix
        R, _ = cv2.Rodrigues(rvec)

        # Calculate Euler angles (roll, pitch, yaw) from the rotation matrix
        sy = np.sqrt(R[0, 0] ** 2 + R[1, 0] ** 2)
        singular = sy < 1e-6

        if not singular:
            roll = np.arctan2(R[2, 1], R[2, 2])
            pitch = np.arctan2(-R[2, 0], sy)
            yaw = np.arctan2(R[1, 0], R[0, 0])
        else:
            roll = np.arctan2(-R[1, 2], R[1, 1])
            pitch = np.arctan2(-R[2, 0], sy)
            yaw = 0

        # Print translation and rotation details
        print(f"Translation Vector (tvec): {tvec.ravel()}")
        print(f"Rotation Matrix (R):\n{R}")
        print(f"Euler Angles (roll, pitch, yaw): {(roll, pitch, yaw)}\n")

    # Show the frame with drawn tags
    cv2.imshow("AprilTag Detection", frame)

    # Exit loop if 'q' is pressed
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# Release the camera and close windows
cap.release()
cv2.destroyAllWindows()
