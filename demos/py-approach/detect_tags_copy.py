import cv2
from pyapriltags import Detector
from pygrabber.dshow_graph import FilterGraph

class AprilTagDetector:
    def __init__(self):
        self.detector = Detector(families='tagStandard41h12')
        self.cap = cv2.VideoCapture(0)
        self.previous_tags = set()
        self.available_cams = self.get_available_cams()

    def get_available_cams(self):
        devices = FilterGraph().get_input_devices()
        return {device_name: index for index, device_name in enumerate(devices)}

    def update_cam_list(self):
        new_available_cams = self.get_available_cams()
        if new_available_cams != self.available_cams:
            self.available_cams = new_available_cams
            # Update camera selection UI component if applicable

    def get_selected_cam(self, cam_index):
        if self.cap and self.cap.isOpened():
            self.cap.release()
        self.cap = cv2.VideoCapture(cam_index)

    def send_tag_list(self, tag_list):
        print(f"Detected AprilTag IDs: {tag_list}")

    def run(self):
        try:
            while True:
                ret, frame = self.cap.read()
                if not ret:
                    print("Failed to capture frame")
                    break

                gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
                detections = self.detector.detect(gray_frame)
                tag_ids = [detection.tag_id for detection in detections]

                if tag_ids:
                    self.send_tag_list(tag_ids)

                for detection in detections:
                    corners = detection.corners
                    for i in range(4):
                        pt1 = (int(corners[i][0]), int(corners[i][1]))
                        pt2 = (int(corners[(i + 1) % 4][0]), int(corners[(i + 1) % 4][1]))
                        cv2.line(frame, pt1, pt2, (0, 255, 0), 2)
                    center = (int(detection.center[0]), int(detection.center[1]))
                    cv2.putText(frame, str(detection.tag_id), center, cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 0, 0), 2)

                cv2.imshow("AprilTag Detection", frame)
                if cv2.waitKey(1) & 0xFF == ord('q'):
                    break
        except Exception as e:
            print(f"An error occurred: {e}")
        finally:
            self.cap.release()
            cv2.destroyAllWindows()

if __name__ == "__main__":
    detector = AprilTagDetector()
    detector.run()
