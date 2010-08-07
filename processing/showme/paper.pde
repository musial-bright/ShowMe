class Paper {
  
  ArrayList elements = new ArrayList();
  
  Paper() {
  }
  
  void addElement(Object o) {
    //elements.add(o);
    showme.addElement(o);
  }
  
  void draw() {
    
    text("hello", 0, 10, 20);
    //elements = showme.getElements();
    //text("" + elements.size(), 0, 40, 20);
    //for (int i=0; i < elements.size(); i++) {
      //text(elements.get(i), 0, 40, (i * 20));
      //Line l = (Line)elements.get(i);
      //l.draw();
      //text("line " + l.x + "," + l.y + " -> " + l.xx + "," + l.yy , 0, 10 + (i * 20));
    //}
  }
}
