import cv2
import numpy as np
import pyapriltags

# Load AR marker detector
detector = pyapriltags.Detector(families="tagStandard41h12")

# Load overlay image
overlay_img = cv2.imread("C:/Users/jiwon/Desktop/a.png")

# Open webcam
cap = cv2.VideoCapture(0)

while cap.isOpened():
    ret, frame = cap.read()
    if not ret:
        break

    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    detections = detector.detect(gray)

    for tag in detections:
        # Get marker corners
        corners = np.array(tag.corners, dtype=np.float32)
        corners = corners.reshape(-1, 1, 2)

        # Define target points for warping
        h, w, _ = overlay_img.shape
        target_pts = np.array([[0, 0], [w, 0], [w, h], [0, h]], dtype=np.float32)

        # Compute homography (perspective transformation)
        matrix, _ = cv2.findHomography(target_pts, corners)

        # Warp the overlay image
        warped = cv2.warpPerspective(overlay_img, matrix, (frame.shape[1], frame.shape[0]))

        # Create a mask to blend the image onto the frame
        mask = np.zeros_like(frame, dtype=np.uint8)
        cv2.fillConvexPoly(mask, corners.astype(int), (255, 255, 255))
        blended = cv2.bitwise_and(frame, cv2.bitwise_not(mask)) + cv2.bitwise_and(warped, mask)

        frame = blended

    cv2.imshow("AR Overlay", frame)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()
