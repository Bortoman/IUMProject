<%-- 
    Document   : index
    Created on : 2-gen-2017, 13.24.22
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>HiFi-Rooms</title>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="css/style2.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/occorrenze.js"></script>
        <script src="js/input.js"></script>
    </head>
    <body>

       
            <%@ include file="blocchi_dinamici/header.jsp" %>      
        
        <div id="sfondo">
            <div id="searchbar"> 
                <h1>Find your next apartment</h1>
                <div id="searchfield">
                    <!--<form method="post" class="form-container" action="" onSubmit="return checkAnswer();">-->
                    <form class = "form-container" onSubmit="return checkAnswer();" action="/" id="form-action">
                        <input type="text" name="citta" class="biginput" id="autocomplete" placeholder="Type a city name">
                        <div class="submit-container">
                            <input type="submit" value="" class="submit" name="Submit" />
                        </div> 

                    </form>
                </div>

                <div class="isa_warning" id="errormsg">
                    <i class="fa fa-warning" id="altboing"></i>
                    Please select a city from the suggestions list!
                </div>
            </div>
        </div>
        <%@ include file="blocchi_dinamici/footer.jsp" %>
    </body>
</html>