# Libraries
import cv2
import numpy as np
from PyQt5 import QtWidgets, QtCore
from PyQt5.QtWidgets import QApplication, QMainWindow, QVBoxLayout, QComboBox, QSpinBox, QPushButton, QWidget, QHBoxLayout, QLabel, QScrollArea, QSplitter
from PyQt5.QtGui import QImage, QPixmap
from pyapriltags import Detector
from pygrabber.dshow_graph import FilterGraph
import rtmidi

# Detection of virtual controllers (April tags)
# Initialize the AprilTag detector with the default tag family
detector = Detector(families='tagStandard41h12')

# 1. Touch detection

# 2. Rotation detection
def rotation_detection(frame):
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
        cv2.putText(frame, f"{angle:.2f}", 
                    (center[0] - 50, center[1] - 20), 
                    cv2.FONT_HERSHEY_SIMPLEX, 
                    0.5, 
                    (255, 0, 0), 
                    2, 
                    cv2.LINE_AA)

    return frame

# Convert MIDI number to musical note format
def midi_to_note_name(midi_number):
    notes = ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B']
    octave = (midi_number // 12) - 1
    note = notes[midi_number % 12]
    return f"{note}{octave}"

# Get available cameras from the system while running
# Keys -> CV2, Values -> GUI
def get_available_cams() :
    devices = FilterGraph().get_input_devices()
    available_cameras = {device_name: index for index, device_name in enumerate(devices)}
    return available_cameras

# Get available MIDIs from the system while running
# Keys -> rtmidi, Values -> GUI
def get_available_midis() :
    midi_out = rtmidi.MidiOut()
    midi_ports = midi_out.get_ports()
    available_midis = {}
    for index, ports in enumerate(midi_ports):
        available_midis[ports] = index
    return available_midis

# Create GUI
class PortFunctionMapper(QMainWindow):

    def __init__(self):
        super().__init__()

        self.setWindowTitle("Port-Function Mapper with Camera Feed")
        self.setGeometry(100, 100, 1000, 600)  # Initial window size

        # Main widget and layout using QSplitter for equal resizing
        splitter = QSplitter(QtCore.Qt.Horizontal)
        self.setCentralWidget(splitter)
        
        # Camera feed display on the left side
        self.camera_label = QLabel(self)
        self.camera_label.setSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        self.camera_label.setAlignment(QtCore.Qt.AlignCenter)
        splitter.addWidget(self.camera_label)

        # Scroll Area for the mapping and buttons on the right side
        scroll_area = QScrollArea(self)
        scroll_area.setWidgetResizable(True)
        scroll_content = QWidget()
        scroll_area.setWidget(scroll_content)
        splitter.addWidget(scroll_area)

        # Set equal stretch factor to maintain half-half split
        splitter.setStretchFactor(0, 1)
        splitter.setStretchFactor(1, 1)
        
        # Add minimum size for balance
        self.camera_label.setMinimumSize(300, 300)
        scroll_area.setMinimumSize(300, 300)

        # Layout within the scroll area for mappings and buttons
        self.layout = QVBoxLayout(scroll_content)
        self.layout.setAlignment(QtCore.Qt.AlignTop)  # Aligns items to the top
        self.layout.setSpacing(10)  # Optional: adjust spacing between rows if needed

        # Default window settings
        # 1. Camera: Container for camera selection
        self.available_cams = get_available_cams()
        self.cam_selection = QComboBox()
        cam_name = self.available_cams.keys()
        self.layout.addWidget(self.cam_selection)
        for name in cam_name:
            self.cam_selection.addItem(name)
        self.cam_selection.currentIndexChanged.connect(self.get_selected_cam)

        # 2. MIDI: Container for MIDI output selection
        self.available_midis = get_available_midis()
        self.midi_selection = QComboBox()
        midi_name = self.available_midis.keys()
        self.layout.addWidget(self.midi_selection)
        for name in midi_name:
            self.midi_selection.addItem(name)
        self.midi_selection.currentIndexChanged.connect(self.get_selected_midi)
        

        # 3. New mapping: Button to add a new mapping
        self.add_button = QPushButton("New mapping")
        self.add_button.clicked.connect(self.add_mapping)
        self.layout.addWidget(self.add_button)

        # 4. Confirm mapping: Button to update mappings
        self.update_button = QPushButton("Confirm mapping")
        self.update_button.clicked.connect(self.get_mappings)
        self.layout.addWidget(self.update_button)

        # Container for mappings
        self.mapping_container = QWidget(self)
        self.mapping_layout = QVBoxLayout(self.mapping_container)
        self.layout.addWidget(self.mapping_container)

        # Store mapping widgets for easier management
        self.mappings = []

        # Set up a QTimer to update the camera feed
        self.timer = QtCore.QTimer(self)
        self.timer.timeout.connect(self.update_frame) # auto-refresh the cam frame
        self.timer.timeout.connect(self.update_camera_list) # auto-refresh the cam list
        self.cap = cv2.VideoCapture(0)  # Open selected camera
        self.timer.start(30)  # Update the cam frame and list every 30 ms

    def update_camera_list(self):
        # Retrieve the current list of available cameras
        new_available_cams = get_available_cams()

        # Check if the list has changed
        if new_available_cams != self.available_cams:
            self.available_cams = new_available_cams
            self.cam_selection.clear()
            self.cam_selection.addItems(self.available_cams.keys())

    def get_selected_cam(self):
        """Retrieve current cam ports"""
        current_cam = self.cam_selection.currentText()
        cam_index = self.available_cams.get(current_cam)
        if self.cap and self.cap.isOpened():
            self.cap.release()
        # Initialize the new capture source
        self.cap = cv2.VideoCapture(cam_index)

    def close_cam(self, event):
        # Release the cam port when the application is closed
        if self.cap and self.cap.isOpened():
            self.cap.release()
        event.accept()

    def get_selected_midi(self):
        """Retrieve current midi ports"""
        current_midi = self.midi_selection.currentText()
        midi_index = self.available_midis.get(current_midi)

    # def close_midi(self, event):
    #     # Release the midi port when the application is closed
    #     if self.cap and self.cap.isOpened():
    #         self.cap.release()
    #     event.accept()


    def add_mapping(self):
        """Add a new mapping row"""
        # Create a new container for this mapping row
        mapping_widget = QWidget()
        mapping_layout = QHBoxLayout(mapping_widget)

        # Port selection (Spinbox for number input)
        port_spinbox = QSpinBox()
        port_spinbox.setRange(0, 2114)
        port_spinbox.setSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        mapping_layout.addWidget(port_spinbox)

        # Function selection (ComboBox for function choices)
        function_combobox = QComboBox()
        function_combobox.addItems(["button", "slider", "note"])
        function_combobox.setSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        mapping_layout.addWidget(function_combobox)

        # Note selection (only visible when "note" is selected)
        note_combobox = QComboBox()
        note_combobox.addItems([midi_to_note_name(i) for i in range(0, 128)])  # MIDI note numbers (0-127) in musical format
        note_combobox.setVisible(False)  # Initially hidden
        note_combobox.setSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Fixed)
        mapping_layout.addWidget(note_combobox)

        # Delete button for removing this row
        delete_button = QPushButton("Delete")
        delete_button.setSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        delete_button.clicked.connect(lambda: self.delete_mapping(mapping_widget))
        mapping_layout.addWidget(delete_button)

        # Add this widget to the main mapping layout
        self.mapping_layout.addWidget(mapping_widget)

        # Store this mapping
        self.mappings.append((port_spinbox, function_combobox, note_combobox, mapping_widget))

        # Connect signals to show note combobox based on function selection
        function_combobox.currentIndexChanged.connect(lambda: self.toggle_note_selection(function_combobox, note_combobox))

    def toggle_note_selection(self, function_combobox, note_combobox):
        """Show or hide the note combobox based on the selected function"""
        if function_combobox.currentText() == "note":
            note_combobox.setVisible(True)
        else:
            note_combobox.setVisible(False)

    def delete_mapping(self, mapping_widget):
        """Delete a specific mapping row"""
        # Remove the widget from the layout and delete it
        self.mapping_layout.removeWidget(mapping_widget)
        mapping_widget.deleteLater()

        # Remove from the mappings list
        self.mappings = [m for m in self.mappings if m[3] != mapping_widget]

    def get_mappings(self):
        """Retrieve current mappings and print them (only when 'Mapping update' is clicked)"""
        current_mappings = []
        
        for port_spinbox, function_combobox, note_combobox, _ in self.mappings:
            port = port_spinbox.value()
            function = function_combobox.currentText()
            note = note_combobox.currentText() if function == "note" else None
            current_mappings.append((port, function, note))

        print(current_mappings)  # You can replace this with further processing

    def update_frame(self):
        """Read a frame from the camera, apply rotation detection, and update the QLabel."""
        ret, frame = self.cap.read()
        if ret:
            # Apply rotation detection to the captured frame
            processed_frame = rotation_detection(frame)

            # Convert the processed frame to RGB format
            rgb_image = cv2.cvtColor(processed_frame, cv2.COLOR_BGR2RGB)
            h, w, ch = rgb_image.shape
            bytes_per_line = ch * w

            # Convert the image to QImage and scale it to fit the label
            qt_image = QImage(rgb_image.data, w, h, bytes_per_line, QImage.Format_RGB888)
            scaled_qt_image = qt_image.scaled(self.camera_label.size(), QtCore.Qt.KeepAspectRatio)

            # Update the QLabel with the scaled QPixmap
            self.camera_label.setPixmap(QPixmap.fromImage(scaled_qt_image))

    def resizeEvent(self, event):
        """Handle window resizing to adjust camera feed and scroll area size"""
        self.update_frame()  # Resize camera feed to fit the new label size
        super().resizeEvent(event)

    def closeEvent(self, event):
        """Release the camera when the window is closed"""
        self.cap.release()
        event.accept()

if __name__ == "__main__":
    import sys
    app = QApplication(sys.argv)
    window = PortFunctionMapper()
    window.show()
    sys.exit(app.exec_())

# Create MIDI signals