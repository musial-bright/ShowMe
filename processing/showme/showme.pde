int startX;
int startY;
ArrayList lines = new ArrayList();
boolean previewLine = false;
  
void setup() {
  size(960, 800);
  background(0);
  stroke(255);
}

void draw() {
  background(0);
  strokeWeight(5);

  if (previewLine) {
    color(#444444);
    line(startX, startY, mouseX, mouseY);
  } 
  
  for (int i=0; i < lines.size(); i++) {
    Line l = (Line)lines.get(i);
    l.draw();
    text("line " + l.x + "," + l.y + " -> " + l.xx + "," + l.yy , 0, 10 + (i * 20));
  }
  
}

void mousePressed() {
  startX = mouseX;
  startY = mouseY;
  previewLine = true;
}

void mouseReleased() {
  lines.add(new Line(startX, startY, mouseX, mouseY));
  previewLine = false;
}

void mouseMoved() {
  //if (mousePressed) {
    //line(startX, startY, mouseX, mouseY);
  //}
}

void drawButtons() {
  strokeWeight(1);
}


