(function() {
    var elements = Array();

    showme = {
        addElement : function(element) {
            if (element.getClass() == "Line") {
                elements.push(
                    "" + element.x + "," + element.y + 
                    "," element.xx + "," + element.yy + ""
                );
            }
        },

        getElements : function() {
            return elements;
        },

        test : function(value) {
            alert(value.getClass());
        }
    }; 
}());
