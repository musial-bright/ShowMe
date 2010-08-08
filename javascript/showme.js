(function() {
    var elements = Array();

    showme = {
        addElement : function(element) {
            if (element.getClass() == "Line") {
                elements.push(
                    "{" +
                    "type : \"Line\"" + "," + 
                    "x : "  + element.x  + "," + 
                    "y : "  + element.y + "," + 
                    "xx : " + element.xx + "," + 
                    "yy : " + element.yy + 
                    "}"
                );
            }
            //alert(elements);
        },

        getElements : function() {
            return elements;
        },

        test : function(value) {
            alert(value.getClass());
        }
    }; 
}());
