import cv2
import numpy as np
from PyQt5 import QtWidgets, QtCore
from PyQt5.QtWidgets import QApplication, QMainWindow, QVBoxLayout, QComboBox, QSpinBox, QPushButton, QWidget, QHBoxLayout, QLabel, QScrollArea, QSplitter
from PyQt5.QtGui import QImage, QPixmap
from pyapriltags import Detector
from pygrabber.dshow_graph import FilterGraph
import rtmidi

# Initialize the AprilTag detector
detector = Detector(families='tagStandard41h12')

# Helper function to get available cameras
def get_available_cams():
    devices = FilterGraph().get_input_devices()
    available_cameras = {device_name: index for index, device_name in enumerate(devices)}
    return available_cameras

# Tag detection with dynamic drawing based on mappings
def rotation_detection(frame, current_mappings):
    gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    tags = detector.detect(gray_frame)

    for tag in tags:
        tag_id = tag.tag_id
        corners = np.array(tag.corners, dtype=int)
        center = (int(tag.center[0]), int(tag.center[1]))

        # Get the corresponding function for the tag from mappings
        tag_function = next((func for port, func in current_mappings if port == tag_id), None)

        # Different drawing styles based on function
        if tag_function == "button":
            color = (0, 255, 0)  # Green for "button"
            thickness = 2
        elif tag_function == "slider":
            color = (255, 0, 0)  # Blue for "slider"
            thickness = 4
        elif tag_function == "note":
            color = (0, 0, 255)  # Red for "note"
            thickness = 1
        else:
            color = (0, 255, 255)  # Yellow for unknown
            thickness = 2

        # Draw bounding box and center point
        for i in range(4):
            cv2.line(frame, tuple(corners[i]), tuple(corners[(i + 1) % 4]), color, thickness)
        cv2.circle(frame, center, 5, color, -1)

        # Display the tag ID and function
        cv2.putText(frame, f"{tag_id} ({tag_function})", (center[0], center[1] - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, color, 2)

    return frame

class PortFunctionMapper(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Port-Function Mapper with Camera Feed")
        self.setGeometry(100, 100, 1000, 600)
        splitter = QSplitter(QtCore.Qt.Horizontal)
        self.setCentralWidget(splitter)

        self.camera_label = QLabel(self)
        self.camera_label.setAlignment(QtCore.Qt.AlignCenter)
        splitter.addWidget(self.camera_label)

        scroll_area = QScrollArea(self)
        scroll_area.setWidgetResizable(True)
        scroll_content = QWidget()
        scroll_area.setWidget(scroll_content)
        splitter.addWidget(scroll_area)
        
        self.layout = QVBoxLayout(scroll_content)
        self.layout.setAlignment(QtCore.Qt.AlignTop)
        self.layout.setSpacing(10)

        # Initialize available cameras
        self.available_cams = get_available_cams()
        self.cam_selection = QComboBox()
        self.layout.addWidget(self.cam_selection)
        for name in self.available_cams.keys():
            self.cam_selection.addItem(name)
        self.cam_selection.currentIndexChanged.connect(self.get_selected_cam)

        # Add new mapping button
        self.add_button = QPushButton("New mapping")
        self.add_button.clicked.connect(self.add_mapping)
        self.layout.addWidget(self.add_button)

        # Confirm mapping button
        self.update_button = QPushButton("Confirm mapping")
        self.update_button.clicked.connect(self.get_mappings)
        self.layout.addWidget(self.update_button)

        self.mapping_container = QWidget(self)
        self.mapping_layout = QVBoxLayout(self.mapping_container)
        self.layout.addWidget(self.mapping_container)
        self.mappings = []
        self.current_mappings = []  # Initialize to prevent errors on first run

        # Set up camera feed timer
        self.timer = QtCore.QTimer(self)
        self.timer.timeout.connect(self.update_frame)
        self.cap = cv2.VideoCapture(0)
        self.timer.start(30)

    def get_selected_cam(self):
        current_cam = self.cam_selection.currentText()
        cam_index = self.available_cams.get(current_cam)
        if self.cap.isOpened():
            self.cap.release()
        self.cap = cv2.VideoCapture(cam_index)

    def add_mapping(self):
        mapping_widget = QWidget()
        mapping_layout = QHBoxLayout(mapping_widget)
        port_spinbox = QSpinBox()
        port_spinbox.setRange(0, 2114)
        function_combobox = QComboBox()
        function_combobox.addItems(["button", "slider", "note"])
        delete_button = QPushButton("Delete")
        delete_button.clicked.connect(lambda: self.delete_mapping(mapping_widget))

        mapping_layout.addWidget(port_spinbox)
        mapping_layout.addWidget(function_combobox)
        mapping_layout.addWidget(delete_button)
        self.mapping_layout.addWidget(mapping_widget)
        self.mappings.append((port_spinbox, function_combobox, mapping_widget))

    def delete_mapping(self, mapping_widget):
        self.mapping_layout.removeWidget(mapping_widget)
        mapping_widget.deleteLater()
        self.mappings = [m for m in self.mappings if m[2] != mapping_widget]

    def get_mappings(self):
        self.current_mappings = []
        for port_spinbox, function_combobox, _ in self.mappings:
            port = port_spinbox.value()
            function = function_combobox.currentText()
            self.current_mappings.append([port, function])
        print(self.current_mappings)

    def update_frame(self):
        ret, frame = self.cap.read()
        if ret:
            processed_frame = rotation_detection(frame, self.current_mappings)
            rgb_image = cv2.cvtColor(processed_frame, cv2.COLOR_BGR2RGB)
            h, w, ch = rgb_image.shape
            qt_image = QImage(rgb_image.data, w, h, ch * w, QImage.Format_RGB888)
            self.camera_label.setPixmap(QPixmap.fromImage(qt_image))

    def closeEvent(self, event):
        self.cap.release()
        event.accept()

if __name__ == "__main__":
    import sys
    app = QApplication(sys.argv)
    window = PortFunctionMapper()
    window.show()
    sys.exit(app.exec_())
