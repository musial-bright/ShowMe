class ExternalStorage {
  
  ExternalStorage() {
  }
  
  void add(Object o) {
    showme.addElement(o);
  }
  
  ArrayList getElements() {
    // showme is the external javascript application
    elements = showme.getElements(); 
    
    ArrayList elementsArrayList  = new ArrayList();
    
    if (elements != null && elements != "") {
      for (int i=0; i < elements.length; i++) {
        String element = elements[i];
        element = element.replaceAll("{", "");
        element = element.replaceAll("}", "");
        elementArray = element.split(",");
        Line l = new Line(
          (elementArray[1].split(":"))[1],
          (elementArray[2].split(":"))[1],
          (elementArray[3].split(":"))[1],
          (elementArray[4].split(":"))[1]
        );
        elementsArrayList.add(l);
      }
    }
    return elementsArrayList;
  }

}
