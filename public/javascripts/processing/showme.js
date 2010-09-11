(function() {
    var elements = Array();

    showme = {
        addElement : function(element) {
            if (element.getClassName() == "line") {
                elements.push(
                    "{" +
                    "type : \"line\"" + "," + 
                    "x:"  + element.x  + "," + 
                    "y:"  + element.y + "," + 
                    "xx:" + element.xx + "," + 
                    "yy:" + element.yy + 
                    "}"
                );
            }
            alert(elements);
        },

        getElements : function() {
            return elements;
        },

        test : function(value) {
            alert(value.getClass());
        }
    }; 
}());
