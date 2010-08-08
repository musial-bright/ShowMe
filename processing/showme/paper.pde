class Paper {
  
  ArrayList internalStorage = new ArrayList();
  boolean externalStorageMode = false;
  
  Paper(boolean externalStorageMode) {
    this.externalStorageMode = externalStorageMode;
  }
  
  void addElement(Object o) {
    if (externalStorageMode) {
      showme.addElement(o);
    } else {
      internalStorage.add(o);
    }
  }
  
  void draw() {   
    if (externalStorageMode) {
        externalStorage = showme.getElements();
        text("externalStorage=" + externalStorage, 0, 10, 20);
        
      if (externalStorage != null && externalStorage != "") {
        text("ok", 0, 20, 20);
        //String[] e = externalStorage.split(",");
        text("e=" + externalStorage[0], 0, 100, 20); 
        /*      
        for (int i=0; i < e.length; i++) {
          text("" + e[i], 0, 40, 20);  
        } 
        */     
      }
   
   
    } else {
      for (int i=0; i < internalStorage.size(); i++) {
        text(internalStorage.get(i), 0, 40, (i * 20));
        Line l = (Line)internalStorage.get(i);
        l.draw();
        text("line " + l.x + "," + l.y + " -> " + l.xx + "," + l.yy , 0, 10 + (i * 20));
      }
    }
  }
}
