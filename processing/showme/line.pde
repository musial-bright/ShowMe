class Line {
  int x, y, xx, yy;
  
  Line(int tempX, int tempY, int tempXX, int tempYY) {
    x = tempX;
    y = tempY;
    xx = tempXX;
    yy = tempYY;
  }
  
  void draw() {
    line(x, y, xx, yy);
  }
  
  void getClass() {
    return "Line";
  }
}
