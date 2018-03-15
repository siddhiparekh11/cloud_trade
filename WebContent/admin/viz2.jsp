<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Tableau Viz</title>
    <script type="text/javascript" 
	    src="https://public.tableau.com/javascripts/api/tableau-2.min.js"></script>
    <script type="text/javascript">
        function initTabViz() {
            var contTab1 = document.getElementById("vizContainer"),
                url = " https://us-east-1.online.tableau.com/#/site/poornimasrikanteshsjsuedu/views/newsheet/city_orderdetails?:iid=1",
                options = {
                    hideTabs: true,
                    onFirstInteractive: function () {
                       
                    }
                };
            
            var vizTab1 = new tableau.Viz(contTab1, url, options); 
                }
    </script>
</head>

<body onload="initTabViz();">
    <div id="vizContainer" style="width:900px; height:900px;"></div>    
</body>
</html>