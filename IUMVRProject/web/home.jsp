<%-- 
    Document   : home
    Created on : 30-dic-2016, 19.09.14
    Author     : Admin
    Page       : Home HiFi-Rooms
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>HiFi-Rooms - Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="HiFi-Rooms: trova il tuo appartamento ideale!">
        <meta name="author" content="goo.gl/qM2RWk">
        <meta name="keywords" content="da modificare">
        <link href="css/test.css" rel="stylesheet" type="text/css" media="screen" />
        <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
        <script type="text/javascript" src="js/jquery.autocomplete.min.js"></script>
        <script type="text/javascript" src="js/currency-autocomplete2.js"></script>              
    </head>
    <body>
        <div id="box">
        <%@ include file="blocchi_dinamici/header.jsp" %>      
        </div>
            
        <div id="searchbar">
                
        <h1>Find your next apartment</h1>

        <div id="searchfield">
            <form method="post" class="form-container" action="home.jsp">
              <input type="text" name="currency" class="biginput" id="autocomplete" alt="Go!" placeholder="Type a city name">
              <!--<input type="image" src="img/lente.png" alt="Submit" width="30" height="30">-->
              <div class="submit-container">
		<input type="submit" value="" class="submit" />
              </div>
            </form>
            
        <div id="outputbox">
              <p id="outputcontent"></p>
        </div>
        </div>
      
        </div>
        
        <div id="description">
        Qualche info random    
            
        </div>

        
    </body>
</html>
