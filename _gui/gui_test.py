from PyQt5 import QtWidgets, QtCore
from PyQt5.QtWidgets import QApplication, QMainWindow, QVBoxLayout, QComboBox, QSpinBox, QPushButton, QWidget, QHBoxLayout

class PortFunctionMapper(QMainWindow):
    def __init__(self):
        super().__init__()

        self.setWindowTitle("Port-Function Mapper")
        self.setGeometry(100, 100, 400, 400)

        self.central_widget = QWidget(self)
        self.setCentralWidget(self.central_widget)

        # Layout to hold the mappings
        self.layout = QVBoxLayout(self.central_widget)

        # Button to add a new mapping
        self.add_button = QPushButton("Add Port-Function")
        self.add_button.clicked.connect(self.add_mapping)
        self.layout.addWidget(self.add_button)

        # Button to get the current mappings
        self.get_button = QPushButton("Get Mappings")
        self.get_button.clicked.connect(self.get_mappings)
        self.layout.addWidget(self.get_button)

        # Container for mappings
        self.mapping_container = QWidget(self)
        self.mapping_layout = QVBoxLayout(self.mapping_container)
        self.layout.addWidget(self.mapping_container)

        # Store mapping widgets for easier management
        self.mappings = []

        # Add an initial mapping row
        self.add_mapping()

    def add_mapping(self):
        """Add a new mapping row"""
        # Create a new container for this mapping row
        mapping_widget = QWidget()
        mapping_layout = QHBoxLayout(mapping_widget)

        # Port selection (Spinbox for number input)
        port_spinbox = QSpinBox()
        port_spinbox.setRange(1, 100)
        mapping_layout.addWidget(port_spinbox)

        # Function selection (ComboBox for function choices)
        function_combobox = QComboBox()
        function_combobox.addItems(["note", "button", "knob"])
        mapping_layout.addWidget(function_combobox)

        # Delete button for removing this row
        delete_button = QPushButton("Delete")
        delete_button.clicked.connect(lambda: self.delete_mapping(mapping_widget))
        mapping_layout.addWidget(delete_button)

        # Add this widget to the main mapping layout
        self.mapping_layout.addWidget(mapping_widget)

        # Store this mapping
        self.mappings.append((port_spinbox, function_combobox, mapping_widget))

    def delete_mapping(self, mapping_widget):
        """Delete a specific mapping row"""
        # Remove the widget from the layout and delete it
        self.mapping_layout.removeWidget(mapping_widget)
        mapping_widget.deleteLater()

        # Remove from the mappings list
        self.mappings = [m for m in self.mappings if m[2] != mapping_widget]

    def get_mappings(self):
        """Retrieve current mappings and print them"""
        current_mappings = []
        for port_spinbox, function_combobox, _ in self.mappings:
            port = port_spinbox.value()
            function = function_combobox.currentText()
            current_mappings.append((port, function))

        print("Current Mappings:", current_mappings)  # You can replace this with further processing

if __name__ == "__main__":
    import sys
    app = QApplication(sys.argv)
    window = PortFunctionMapper()
    window.show()
    sys.exit(app.exec_())
