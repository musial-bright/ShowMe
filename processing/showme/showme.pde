int startX;
int startY;
boolean previewLine = false;

Paper paper = new Paper(true);
  
void setup() {
  size(960, 800);
  background(0);
  stroke(255);
  strokeWeight(10);
  noFill();
}

void draw() {
  background(0);

  if (previewLine) {
    color(#444444);
    line(startX, startY, mouseX, mouseY);
  }
  paper.draw();
}

void mousePressed() {
  startX = mouseX;
  startY = mouseY;
  previewLine = true;
}

void mouseReleased() {
  paper.addElement(new Line(startX, startY, mouseX, mouseY));
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


