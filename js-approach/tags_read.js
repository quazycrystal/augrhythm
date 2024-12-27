const cv = require('opencv-bindings');
const { Detector, families } = require('apriltag');
const maxAPI = require('max-api');

// Initialize AprilTag detector
const detector = new Detector({
  families: ['tag36h11'],
});

// Open a webcam capture (adjust the index for other cameras)
const videoCapture = new cv.VideoCapture(0);
videoCapture.set(cv.CAP_PROP_FRAME_WIDTH, 640);
videoCapture.set(cv.CAP_PROP_FRAME_HEIGHT, 480);

// Function to map angles to 0-360
function mapAngle(rawAngle) {
  return ((rawAngle + 360) % 360).toFixed(2); // Ensure angles are positive
}

// Main loop to capture frames and detect AprilTags
setInterval(() => {
  try {
    // Capture a frame
    const frame = videoCapture.read();
    if (frame.empty) return;

    // Convert frame to grayscale for AprilTag detection
    const grayFrame = frame.bgrToGray();

    // Detect AprilTags in the frame
    const detections = detector.detect(grayFrame);

    // Prepare the lists
    const detectedTags = [];
    const tagAngles = [];

    detections.forEach((tag) => {
      const tagId = tag.id;
      detectedTags.push(tagId);

      // Check if tag ID is between 24 and 31
      if (tagId >= 24 && tagId <= 31) {
        const angle = Math.atan2(tag.corners[1].y - tag.corners[0].y, tag.corners[1].x - tag.corners[0].x);
        const calibratedAngle = mapAngle((angle * (180 / Math.PI)) % 360); // Convert to degrees and map
        tagAngles.push(calibratedAngle);
      }
    });

    // Send the data to Max outlets
    maxAPI.outlet(0, detectedTags); // Detected tag numbers
    maxAPI.outlet(1, tagAngles);   // Angles for tags 24-31
  } catch (error) {
    maxAPI.post(`Error: ${error.message}`);
  }
}, 33); // Run at ~30 FPS
