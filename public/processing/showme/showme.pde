int startX;
int startY;
boolean previewLine = false;
boolean externalStorage = true;

Paper paper = new Paper(externalStorage);
  
void setup() {
  size(400, 400);
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

void drawButtons() {
  strokeWeight(1);
}


