from PyQt5.QtWidgets import QApplication, QMainWindow, QComboBox, QLabel, QVBoxLayout, QWidget
import sys

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()

        self.setWindowTitle("QComboBox Example")

        # Create a QComboBox and add items
        self.combo_box = QComboBox()
        self.combo_box.addItems(["Option 1", "Option 2", "Option 3"])

        # Create a QLabel to display the selected option
        self.label = QLabel("Selected: None")

        # Connect the currentIndexChanged signal to a custom slot
        self.combo_box.currentIndexChanged.connect(self.update_label)

        # Set up the layout
        layout = QVBoxLayout()
        layout.addWidget(self.combo_box)
        layout.addWidget(self.label)

        container = QWidget()
        container.setLayout(layout)
        self.setCentralWidget(container)

    def update_label(self):
        # Retrieve the current text from the combo box
        current_text = self.combo_box.currentText()
        self.label.setText(f"Selected: {current_text}")

if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())
