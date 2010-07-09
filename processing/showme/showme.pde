int startX;
int startY;
ArrayList lines = new ArrayList();
  
void setup() {
  size(960, 800);
  background(0);
  stroke(255);
}

void draw() {
  background(0);
  strokeWeight(2);
/*
  if (mouseReleased()) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  */
  for (int i=0; i < lines.size(); i++) {
    MyLine l = (MyLine)lines.get(i);
    l.drawLine();
    text("line " + l.x + "," + l.y + " -> " + l.xx + "," + l.yy , 0, 10 + (i * 20));
  }
  
}

void mousePressed() {
  startX = mouseX;
  startY = mouseY;
}

void mouseReleased() {
  lines.add(new MyLine(startX, startY, mouseX, mouseY));
}

void mouseMoved() {
  //if (mousePressed) {
    line(startX, startY, mouseX, mouseY);
  //}
}

void drawButtons() {
  strokeWeight(1);
}

class MyLine {
  int x, y, xx, yy;
  
  MyLine(int tempX, int tempY, int tempXX, int tempYY) {
    x = tempX;
    y = tempY;
    xx = tempXX;
    yy = tempYY;
  }
  
  void drawLine() {
    line(x, y, xx, yy);
  }
}
