<%-- 
    Document   : Informazioni
    Created on : 12-gen-2017, 11.41.42
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
  <link rel="stylesheet" href="css/informazioni_1.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/occorrenze.js"></script>
  <script src="js/input2.js"></script>
</head>
<body>
    
    <div id="box">
        <%@ include file="blocchi_dinamici/header.jsp" %>      
    </div>
    
    <div id="info">
        <div id="filtri">
            
        <div id="searchfield">
        <!--<form method="post" class="form-container" action="" onSubmit="return checkAnswer();">-->
        <form class = "form-container" onSubmit="return checkAnswer();" action="/" id="form-action">
          <input type="text" name="citta" class="biginput" id="autocomplete" placeholder="Type a city name" value="${nome_citta}">
          <div class="submit-container">
		<input type="submit" value="" class="submit" name="Submit" />
          </div> 
                    
        </form>
        </div>    
            
         
            <select class="selectmenu">
            <option value="min">Min Price</option>
            <option value="200">200</option>
            <option value="300">300</option>
            <option value="400">400</option>
            <option value="500">500</option>
            </select>  
            
            <select class="selectmenu">
            <option value="max">Max Price</option>
            <option value="200">200</option>
            <option value="300">300</option>
            <option value="400">400</option>
            <option value="500">500</option>
            </select>
            
            <select class="selectmenu">
            <option value="beds">Beds</option>
            <option value="volvo">Volvo</option>
            <option value="saab">Saab</option>
            <option value="opel">Opel</option>
            <option value="audi">Audi</option>
            </select>
          
            
            
            
        </div> 
        
        <div class="isa_warning" id="errormsg" style="display:none;">
                <i class="fa fa-warning" id="altboing"></i>
                    Please select a city from the suggestions list!
        </div>
        
     <!--<h1>Città selezionata ${nome_citta}</h1> -->
     
      
     <div id="search_results" class="allinea">
         <div id="result1">
             <img src="img/ap1.jpg" alt="info+.jsp" width="200" height="200" style="float: left;">
             <p>Nome</p>
             <p>Dove</p>
             <p>Stelle</p>
             <p>Prezzo</p>
         </div>
     </div>
     
     <div id="right_section" class="allinea">
         Mappa
     </div>
        
        
        <!--<div id="infobox">
                
            <div id="search_results" class="test">
            Risultati
            </div>
     
            <div id="right_section" class="test">
            Mappa
            </div>
            </div>-->
        
    </div>
     <!--<div style="clear:both;"></div>-->

    
    <!--<div id="description">
        Qualche info random    
            
        </div>-->
    
</body>
</html>