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
            //alert(elements);
            jQuery.ajax(
                {
                    type: "POST",
                    url: "/sketches/1",
                    data: { _method: "PUT, ", sketch_data: elements }
                }
            );
        },

        getElements : function() {
            /*
            jQuery.get('/sketches/1.text', function(data) {
                elements = data.split("},{");
            });
            */
            return elements;
        },

        test : function(value) {
            alert(value.getClass());
        }
    }; 
}());
