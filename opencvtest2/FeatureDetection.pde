public class FeatureDetection {

  Mat image;
  FeatureDetector featuer;
  MatOfKeyPoint keyPoints;

  public FeatureDetection(int _type) {
    image = new Mat();
    featuer = FeatureDetector.create(_type);
    keyPoints = new MatOfKeyPoint();
  }

  public void detection() {
    featuer.detect(image, keyPoints);
  }

  public Point[] getPoints() {
    Point[] points = new Point[keyPoints.toArray().length];
    for (int i = 0; i < points.length; i++) {
      points[i] = keyPoints.toArray()[i].pt;
    }
    return points;
  }

  public void setImage(Mat _image) {
    image = _image;
  }
}
