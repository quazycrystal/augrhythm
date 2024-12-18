# Libraries
import cv2
import numpy as np
from PyQt5 import QtWidgets, QtCore
from PyQt5.QtWidgets import QApplication, QMainWindow, QVBoxLayout, QComboBox, QSpinBox, QPushButton, QWidget, QHBoxLayout, QLabel, QScrollArea, QSplitter, QDialog
from PyQt5.QtGui import QImage, QPixmap
from pyapriltags import Detector
from pygrabber.dshow_graph import FilterGraph
import rtmidi
    
# Create GUI
# Get available cameras from the system while running
# Keys -> CV2, Values -> GUI
def get_available_cams() :
    devices = FilterGraph().get_input_devices()
    available_cameras = {device_name: index for index, device_name in enumerate(devices)}
    return available_cameras

# Convert MIDI number to musical note format
def midi_to_note_name(midi_number):
    notes = ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B']
    octave = (midi_number // 12) - 1
    note = notes[midi_number % 12]
    return f"{note}{octave}"

# Port warning pop-up
# class PopupDialog(QDialog):
#     def __init__(self, port_list):
#         super().__init__()
#         dialog = QDialog(self)
#         dialog.setWindowTitle("Popup Dialog")
#         dialog.setGeometry(300, 300, 200, 100)

#         print(port_list)
#         # Layout and Label for popup content
#         for ports in port_list:
#             if port_list.count(ports) != 1:
#                 print ("d")
#                 self.update_button.clicked.connect(self.open_popup)

#                 # Layout and content for the popup dialog
#                 layout = QVBoxLayout()
#                 layout.addWidget(QLabel(f"{port_list.index(ports)} Only one function should be designated to a tag"))
#                 dialog.setLayout(layout)

detector = Detector(families='tagStandard41h12') # Global variable
class PortFunctionMapper(QMainWindow):
    # Send MIDI signal
    def send_midi_signal(self, tag_id, action):
        if self.tag_function == "button":
            velocity = 127 if action == "appear" else 0 # If tag appeared and the state changed
            self.midi_out.send_message([0xB0, tag_id, velocity])  # Control change, max value
        elif self.tag_function == "slider":
            slider_value = int (self.angle * (127/360)) # 360 degrees -> 127 steps
            if action == "appear": # If tag appeared and the state changed
                self.midi_out.send_message([0xB0, tag_id, slider_value])  # Control change with slider value
        elif self.tag_function == "note":
            for values in self.note_value_list:
                velocity = 127 if action == "appear" and tag_id == values[0] else 0 # If tag appeared and the state changed
                note_number = values[1]
                self.midi_out.send_message([0x90, note_number, velocity]) # "Note On", note, velocity
        else:
            None

    # Detection of virtual controllers (April tags)
    # Initialize the AprilTag detector with the default tag family
    # Tag detection with dynamic drawing based on mappings

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

            # Get the corresponding function for the tag from mappings
            self.tag_function = next(((func) for port, func, tone in current_mappings if port == tag_id), (None, None)) #get func, send to MIDI
            tag_tone = next(((tone) for port, func, tone in current_mappings if port == tag_id), (None, None)) #get tone name

            # Different drawing styles based on function
            if self.tag_function == "button":
                color = (0, 255, 0)  # Green for "button"
                thickness = 2
            elif self.tag_function == "slider":
                color = (255, 0, 0)  # Blue for "slider"
                thickness = 4
            elif self.tag_function == "note":
                color = (0, 0, 255)  # Red for "note"
                thickness = 1
            else:
                color = (0, 255, 255)  # Yellow for unknown
                thickness = 2

            # Draw bounding box and center point
            for i in range(4):
                cv2.line(frame, tuple(corners[i]), tuple(corners[(i + 1) % 4]), color, thickness)
            cv2.circle(frame, center, 5, color, -1)

            #Display the tag ID and function
            if self.tag_function == "button":
                cv2.putText(frame, f"#{tag_id}, {self.tag_function}", (center[0], center[1] - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, color, 2)
            elif self.tag_function == "slider": #get real angle value and put it
                cv2.putText(frame, f"#{tag_id}, {self.tag_function}, {self.angle}", (center[0], center[1] - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, color, 2)
            elif self.tag_function == "note":
                cv2.putText(frame, f"#{tag_id}, {self.tag_function} {tag_tone}", (center[0], center[1] - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, color, 2)
            else:
                cv2.putText(frame, f"#{tag_id}, undefined", (center[0], center[1] - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, color, 2)

        # Send MIDI signals for new tags
        for tag_id in new_tags:
            self.send_midi_signal(tag_id=tag_id, action="appear")

        # Send MIDI signals for disappeared tags
        for tag_id in disappeared_tags:
            self.send_midi_signal(tag_id=tag_id, action="disappear")

        return frame

    def __init__(self):
        super().__init__()

        # GUI custom style
        self.setWindowTitle("RealMIDI")
        self.setStyleSheet("background-color: #FAFAFA;")  # Light background color
        self.setGeometry(100, 100, 1000, 600)  # Initial window size

        # Main widget and layout using QSplitter for equal resizing
        splitter = QSplitter(QtCore.Qt.Horizontal)
        self.setCentralWidget(splitter)
        
        # Camera feed display on the left side
        self.camera_label = QLabel(self)
        self.camera_label.setSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Expanding)
        self.camera_label.setAlignment(QtCore.Qt.AlignCenter)
        splitter.addWidget(self.camera_label)

        # 0. Defalt Layout: Create right-side widget with main vertical layout
        # Non-scrollable area for camera selection, MIDI selection, and buttons
        right_side_widget = QWidget()
        self.right_side_layout = QVBoxLayout(right_side_widget)
        self.top_layout = QVBoxLayout()
        self.top_layout.setAlignment(QtCore.Qt.AlignTop)  # Aligns items to the top
        self.top_layout.setSpacing(10)  # Optional: adjust spacing between rows if needed

        # 1. Camera: Container for camera selection
        self.available_cams = get_available_cams()
        self.cam_selection = QComboBox()
        cam_name = self.available_cams.keys()
        #self.layout.addWidget(self.cam_selection)
        for name in cam_name:
            self.cam_selection.addItem(name)
        self.cam_selection.currentIndexChanged.connect(self.get_selected_cam)
        self.top_layout.addWidget(QLabel("Camera"))
        self.top_layout.addWidget(self.cam_selection)

        # MIDI
        # Get MIDI port
        self.midi_out = rtmidi.MidiOut()
        self.available_ports = self.midi_out.get_ports()
        self.available_midis = {}# Make "available_midis" dic
        for index, ports in enumerate(self.available_ports):
            self.available_midis[ports] = index

        # 2. MIDI: Container for MIDI output selection
        self.midi_selection = QComboBox()
        midi_name = self.available_midis.keys()
        #self.layout.addWidget(self.midi_selection)
        for name in midi_name:
            self.midi_selection.addItem(name)
        self.midi_selection.currentIndexChanged.connect(self.get_selected_midi)
        self.top_layout.addWidget(QLabel("MIDI Output"))
        self.top_layout.addWidget(self.midi_selection)
        
        # 3. New mapping: Button to add a new mapping
        self.add_button = QPushButton("New mapping")
        self.add_button.clicked.connect(self.add_mappings)
        #self.layout.addWidget(self.add_button)
        self.top_layout.addWidget(self.add_button)

        # 4. Confirm mapping: Button to update mappings
        self.update_button = QPushButton("Confirm mapping")
        self.update_button.clicked.connect(self.get_mappings)
        #self.layout.addWidget(self.update_button)
        self.top_layout.addWidget(self.update_button)

        #Scroll Area for the mappings
        scroll_area = QScrollArea(self)
        scroll_area.setWidgetResizable(True)
        scroll_content = QWidget()
        scroll_content_layout = QVBoxLayout(scroll_content)  # Layout for the scroll area content
        scroll_area.setWidget(scroll_content)

        # 5. Container for mappings
        self.mapping_container = QWidget()
        self.mapping_layout = QVBoxLayout(self.mapping_container)
        self.mapping_layout.setAlignment(QtCore.Qt.AlignTop)  # Aligns items to the top
        self.mapping_layout.setSpacing(10)

        #self.layout.addWidget(self.mapping_container)
        scroll_content_layout.addWidget(self.mapping_container)  # Add the mapping container to the scrollable content layout
    
        # Add top_layout to the right side layout
        self.right_side_layout.addLayout(self.top_layout)
        # Add the scroll area to the right side layout
        self.right_side_layout.addWidget(scroll_area)
        # Add the right-side widget to the splitter
        splitter.addWidget(right_side_widget)

        # Set equal stretch factor to maintain half-half split
        splitter.setStretchFactor(0, 1)
        splitter.setStretchFactor(1, 1)
        
        # Add minimum size for balance
        self.camera_label.setMinimumSize(300, 300)
        scroll_area.setMinimumSize(300, 300)

        # Store mapping "layout" widgets for easier management
        self.mappings = []
        # Store mapping "rows" for easier management
        self.current_mappings = []  # Initialize to prevent errors on first run

        # Set up a QTimer to update the camera feed
        self.timer = QtCore.QTimer(self)
        self.timer.timeout.connect(self.update_frame) # auto-refresh the cam frame
        self.timer.timeout.connect(self.update_cam_list) # auto-refresh cam list
        self.timer.timeout.connect(self.update_midi_list) # auto-refresh MIDI list
        #self.timer.timeout.connect(self.send_midi) # auto-refresh send_midi
        self.cap = cv2.VideoCapture(0)  # Open selected camera
        self.midi = self.midi_out.open_port(0)
        self.midi_out.send_message([0x90, 100, 64]) # Check MIDI port by sound
        self.timer.start(30)  # Update the cam frame and list every 30 ms

        # Track previous tag detections
        self.previous_tags = set()

    def update_cam_list(self):
        # Retrieve the current list of available cameras
        new_available_cams = get_available_cams()

        # Check if the list has changed
        if new_available_cams != self.available_cams:
            self.available_cams = new_available_cams
            self.cam_selection.clear()
            self.cam_selection.addItems(self.available_cams.keys())

    def get_selected_cam(self):
        """Get current cam ports"""
        current_cam = self.cam_selection.currentText()
        cam_index = self.available_cams.get(current_cam)
        if self.cap and self.cap.isOpened():
            self.cap.release() # If the cam port already opened, close it
        # Initialize the new capture source
        self.cap = cv2.VideoCapture(cam_index)

    def update_midi_list(self):
        # Retrieve the current list of available midis
        new_available_midis = self.available_midis

        # Check if the list has changed
        if new_available_midis != self.available_midis:
            self.available_cams = new_available_midis
            self.cam_selection.clear()
            self.cam_selection.addItems(self.available_cams.keys())

    def get_selected_midi(self):
        """Retrieve current midi ports"""
        current_midi = self.midi_selection.currentText()
        midi_index = self.available_midis.get(current_midi)
        if self.midi and self.midi.is_port_open():
            self.midi_out.close_port() #If the MIDI port already opened, close it
        self.midi = self.midi_out.open_port(midi_index)
        self.midi_out.send_message([0x90, 100, 64]) # Check MIDI port by sound

    def add_mappings(self):
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
        self.current_mappings = []
        self.note_value_list = []
        self.port_list = []
        
        for port_spinbox, function_combobox, note_combobox, _ in self.mappings:
            port = port_spinbox.value()
            function = function_combobox.currentText()
            note = note_combobox.currentText() if function == "note" else None
            note_value = note_combobox.currentIndex() # To send note MIDI value

            self.current_mappings.append([port, function, note])
            self.note_value_list.append([port, note_value])
            self.port_list.append(port)

        # "self".current_mappings -> connect GUI and tracking
        print(self.current_mappings)  # You can replace this with further processing
        print(self.note_value_list)
        print(self.port_list)

 
        self.dialog = QDialog(self)
        self.dialog.setWindowTitle("Popup Dialog")
        self.dialog.setGeometry(300, 300, 200, 100)

        # Layout and content for the popup dialog
        layout = QVBoxLayout()
        # Layout and Label for popup content
        for ports in self.port_list:
            if self.port_list.count(ports) != 1:
                print ("d")
                layout.addWidget(QLabel(f"Row {self.port_list.index(ports)} Only one function should be designated to a tag"))
                self.dialog.setLayout(layout)
                self.update_button.clicked.connect(self.open_popup)
            else:
                None
             
    def update_frame(self):
        """Read a frame from the camera, apply rotation detection, and update the QLabel."""
        ret, frame = self.cap.read()
        if ret:
            # Apply rotation detection to the captured frame
            processed_frame = self.tag_detection(frame, self.current_mappings)

            # Convert the processed frame to RGB format
            rgb_image = cv2.cvtColor(processed_frame, cv2.COLOR_BGR2RGB)
            h, w, ch = rgb_image.shape
            bytes_per_line = ch * w

            # Convert the image to QImage and scale it to fit the label
            qt_image = QImage(rgb_image.data, w, h, bytes_per_line, QImage.Format_RGB888)
            scaled_qt_image = qt_image.scaled(self.camera_label.size(), QtCore.Qt.KeepAspectRatio)

            # Update the QLabel with the scaled QPixmap
            self.camera_label.setPixmap(QPixmap.fromImage(scaled_qt_image))
    
    def open_popup(self):
        self.dialog.exec_()  # This makes the popup modal (blocking)

    def resizeEvent(self, event):
        """Handle window resizing to adjust camera feed and scroll area size"""
        self.update_frame()  # Resize camera feed to fit the new label size
        super().resizeEvent(event)

    def closeEvent(self, event):
        """Release the camera and midi when the window is closed"""
        # Close the cam
        self.cap.release()
        # Close the MIDI
        self.midi_out.close_port()
        event.accept()

if __name__ == "__main__":
    import sys
    app = QApplication(sys.argv)
    window = PortFunctionMapper()
    window.show()
    sys.exit(app.exec_())
