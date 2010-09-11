class Paper {
  
  ArrayList internalStorage = new ArrayList();
  boolean externalStorageMode = false;
  ExternalStorage externalStorage = new ExternalStorage();

  Paper(boolean externalStorageMode) {
    this.externalStorageMode = externalStorageMode;
  }
  
  void addElement(Object o) {
    if (externalStorageMode) {
      externalStorage.add(o);
    } else {
      internalStorage.add(o);
    }
  }
  
  void draw() {
    ArrayList elements;
    if (externalStorageMode) {
      text("External Storage",0 , 10);
      elements = externalStorage.getElements();
    } else {
      text("Internal Storage",0 ,10);
      elements = internalStorage;
    }
    if (elements != null) {
      for (int i=0; i < elements.size(); i++) {
        Object l = elements.get(i);
        l.draw();
        //text("line " + l.x + "," + l.y + " -> " + l.xx + "," + l.yy , 0, 10 + (i * 20));
      }
    }
  }
  
}
