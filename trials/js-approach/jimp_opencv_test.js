const cv = require('opencv-bindings');
const Jimp = require('jimp');

Jimp.read('path_to_image.jpg')
  .then(image => {
    let src = cv.matFromImageData(image.bitmap);
    // Process the image with OpenCV
    let dst = new cv.Mat();
    cv.cvtColor(src, dst, cv.COLOR_RGBA2GRAY);

    // Convert processed image back to Jimp
    let dstImage = new Jimp({
      width: dst.cols,
      height: dst.rows,
      data: Buffer.from(dst.data)
    });

    dstImage.write('output_image.jpg');
    src.delete();
    dst.delete();
  })
  .catch(err => {
    console.error(err);
  });
