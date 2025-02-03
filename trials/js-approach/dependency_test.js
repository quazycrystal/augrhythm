const cv = require('opencv-bindings');
const { Detector, families } = require('apriltag');
const maxAPI = require('max-api');

// Debug opencv-bindings
try {
  maxAPI.post(`OpenCV version: ${cv.version}`);
} catch (error) {
  maxAPI.post(`Error loading OpenCV: ${error.message}`);
}

// Debug apriltag library
try {
  const apriltag = require('apriltag');

  // Debug the properties of apriltag
  const apriltagKeys = Object.keys(apriltag || {});
  maxAPI.post(`Apriltag module loaded. Available properties: ${apriltagKeys}`);

  // Safely check for families and Detector
  const { Detector, families } = apriltag;

  if (!families) {
    maxAPI.post('Families object is undefined or null.');
  } else {
    maxAPI.post(`Families keys: ${Object.keys(families)}`);
  }

  if (!Detector) {
    maxAPI.post('Detector is undefined or null.');
  } else {
    const detector = new Detector({ families: ['tag36h11'] });
    maxAPI.post('Detector initialized successfully.');
  }
} catch (error) {
  maxAPI.post(`Error with apriltag library: ${error.message}`);
}


// Notify script is running
maxAPI.post('Debugging script is running!');

