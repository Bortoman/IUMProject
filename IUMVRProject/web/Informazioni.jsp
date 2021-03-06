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
        <link rel="stylesheet" href="css/informazioni.css">


        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/occorrenze.js"></script>
        <script src="js/input.js"></script>
        <script src="js/filtra.js"></script>
        <script src="js/maps.js"></script>
        <script type="text/javascript" src="//maps.googleapis.com/maps/api/js?key=AIzaSyDg4X8LoGc7MyqfSfylrH6BBLw5gYKEiec&callback=initMap"></script>


        <!-- bin/jquery.slider.min.css -->
        <link rel="stylesheet" href="css/jslider.css" type="text/css">
        <link rel="stylesheet" href="css/jslider.blue.css" type="text/css">
        <link rel="stylesheet" href="css/jslider.plastic.css" type="text/css">
        <link rel="stylesheet" href="css/jslider.round.css" type="text/css">
        <link rel="stylesheet" href="css/jslider.round.plastic.css" type="text/css">
        <!-- end -->


        <!-- bin/jquery.slider.min.js -->
        <script type="text/javascript" src="js/jshashtable-2.1_src.js"></script>
        <script type="text/javascript" src="js/jquery.numberformatter-1.2.3.js"></script>
        <script type="text/javascript" src="js/tmpl.js"></script>
        <script type="text/javascript" src="js/jquery.dependClass-0.1.js"></script>
        <script type="text/javascript" src="js/draggable-0.1.js"></script>
        <script type="text/javascript" src="js/jquery.slider.js"></script>
        <!-- end -->

        <style type="text/css" media="screen">
            .layout { padding: 50px; font-family: Georgia, serif; }
            .layout-slider { margin-bottom: 60px; width: 50%; }
            .layout-slider-settings { font-size: 12px; padding-bottom: 10px; }
            .layout-slider-settings pre { font-family: Courier; }
        </style>

    </head>
    <body onload="initialize()">

        <div id="box">
            <%@ include file="blocchi_dinamici/header.jsp" %>      
        </div>
        <div id="sfondo">
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
                        
                <div id="slider1">
                 <div class="sliderprezzo" style="width: 100%;">
                    Price<span class="sliderprezzo1">
                        <input id="SliderPrezzo" type="slider" name="price" value="1000;1000000"/>
                    </span>
                </div>
                <script type="text/javascript" charset='utf-8'>
                    
                        jQuery("#SliderPrezzo").slider({
                        
                        from: 1000, 
                        to: 1000000, 
                        heterogeneity: ['50/50000'], 
                        step: 1000, 
                        dimension: '&nbsp;€', 
                        skin: "round_plastic",
                        callback: function(){
                            var str = $("#SliderPrezzo").slider("value"); 
                            var trovatoPV= false;
                            var value1= '';
                            var value2= '';
                            for (var i = 0; i<str.length; i++){
                                if (str.charAt(i) === ';'){
                                    trovatoPV = true;
                                }else {
                                if (trovatoPV === false){
                                    value1 = value1 + str.charAt(i);
                                }
                                else
                                    value2 = value2 + str.charAt(i);
                            }
                            }
                            var v1 = parseInt(value1);
                            var v2 = parseInt(value2);
                            
                            
                            console.log(v1, v2);
                            
                            // visualizzazione messaggio di errore filtri
                            var tab1 = false;
                            var tab2 = false;
                            
                            if ( (v1 > 150000) || (v2 < 150000) ){
                                document.getElementById("on_off_480table").style.display = 'none';
                                document.getElementById("on_off_480table2").style.marginTop = '0px';
                                
                                tab1 = true;
                            }
                            
                            else{
                                document.getElementById("on_off_480table").style.display = '';
                                tab1 = false;
                            }
                                
                            
                            if ( (v1 > 350000) || (v2 < 350000) ){
                                document.getElementById("on_off_480table2").style.display = 'none';
                                tab2 = true;
                            }
                            
                            else
                            {
                                document.getElementById("on_off_480table2").style.display = '';
                                tab2 = false;
                            }
                            
                            if (tab1 && tab2){
                                document.getElementById("noresults").style.display = '';
                            }                    
                            else
                                document.getElementById("noresults").style.display = 'none';
                            
                            
                        }
                        });
                        
                   
                </script>

                <div class="slidermetratura" style="width: 100%;">
                    Footage<span class="slidermetratura1" >
                        <input id="SliderMetratura" type="slider" name="area" value="0;500" />
                    </span>
                </div>
                <script type="text/javascript" charset="utf-8">
                    jQuery("#SliderMetratura").slider({
                        from: 0, 
                        to: 500, 
                        heterogeneity: ['50/100', '75/250'], 
                        scale: [0, '|', 50, '|', '100', '|', 250, '|', 500], 
                        limits: false, 
                        step: 1, 
                        dimension: '&nbsp;m<small>2</small>', 
                        skin: "round_plastic",
                        callback: function(){
                            var str = $("#SliderMetratura").slider("value"); 
                            var trovatoPV= false;
                            var value1= '';
                            var value2= '';
                            for (var i = 0; i<str.length; i++){
                                if (str.charAt(i) === ';'){
                                    trovatoPV = true;
                                }else {
                                if (trovatoPV === false){
                                    value1 = value1 + str.charAt(i);
                                }
                                else
                                    value2 = value2 + str.charAt(i);
                            }
                            }
                            var v1 = parseInt(value1);
                            var v2 = parseInt(value2);
                            
                            
                            console.log(v1, v2);
                            
                            // visualizzazione messaggio di errore filtri
                            var tab1 = false;
                            var tab2 = false;
                            
                            if ( (v1 > 100) || (v2 < 100) ){
                                document.getElementById("on_off_480table").style.display = 'none';
                                document.getElementById("on_off_480table2").style.marginTop = '0px';
                                tab1 = true;
                            }
                            
                            else{
                                document.getElementById("on_off_480table").style.display = '';
                                tab1 = false;
                            }
                                
                            
                            if ( (v1 > 120) || (v2 < 120) ){
                                document.getElementById("on_off_480table2").style.display = 'none';
                                tab2 = true;
                            }
                            
                            else
                            {
                                document.getElementById("on_off_480table2").style.display = '';
                                tab2 = false;
                            }
                            
                            if (tab1 && tab2){
                                document.getElementById("noresults").style.display = '';
                            }                    
                            else
                                document.getElementById("noresults").style.display = 'none';
                            
                        }
                    });
                </script>
                </div>
                
                
                <div id="menu">
                   <select class="selectmenu" onchange="filt(this);" id="pop">
                   <option value="order">Choose an filter</option>                       
                   <option value="popularity">Popularity</option>
                   <option value="alfabetic+">Alfabetic: increasing</option>
                   <option value="alfabetic-">Alfabetic: decreasing</option>
                   <option value="price+">Price: increasing</option>
                   <option value="price-">Price: decreasing</option>
                   <option value="footage+">Footage: increasing</option>
                   <option value="footage-">Footage: decreasing</option>
                   </select>
                </div>
                
                 

            </div>

         <!-- messaggio di errore per input città -->
        <div class="isa_warning" id="errormsg" style="display:none;" >
            <i class="fa fa-warning" id="altboing"></i>
            Please select a city from the suggestions list!
        </div>

<!--<h1>Città selezionata ${nome_citta}</h1> -->

        <div class="allinea">
            <!--
          <div id="search_results">
              <div id="result1">
                  <img src="img/ap1.jpg" alt="info+.jsp" width="220" height="220" class="apartimg">
                  <p>Nome</p>
                  <p>Dove</p>
                  <p>Stelle</p>
                  <p>Prezzo</p>
                  <button type="Submit" value="infobutton">Visualizza informazioni</button>
              </div>
          </div>-->

            <div id="cliente_480table">
                <!-- messaggio di errore dovuto ai filtri -->
                <div class="noresults1" id="noresults" style="display:none;">
                <i class="fa fa-warning" id="altboing"></i>
                No filter results!
                </div>
                 
                <table id="on_off_480table">
                    <tr>
                        <th rowspan="5">
                            <a href="stereo.jsp">    
                                <img title="Appartamento1" alt="Appartamento1" src="Foto/Appartamento1/Appartamento1.JPG" width="480" height="290">
                            </a>
                        </th>
                        <td class="spaziatura">Address: ${nome_citta}, Via Ospedale 72</td>
                    </tr>
                    <tr>
                        <td>
                            Footage: 100 mq </td>
                    </tr>
                    <tr>
                        <td>
                            <img class="star" title="star" alt="rank" src="img/star1.png" width="30" height="30"> 
                            <img class="star" title="star" alt="rank" src="img/star1.png" width="30" height="30">
                            <img class="star" title="star" alt="rank" src="img/star1.png" width="30" height="30">
                            </td>
                    </tr>
                    <tr>
                        <td>Price: 150.000 €</td>
                    </tr>
                    <tr>
                        <td><button class="bottoneinfo" onclick="location.href = 'stereo.jsp'" title="Visualizza informazioni">More info</button></td>
                    </tr>
                </table>
                <!-- prova con due elementi -->
                <table id="on_off_480table2">
                    <tr>
                        <th rowspan="5">
                            <a href="CasaMia.jsp">
                                <img title="Appartamento2" alt="Appartamento2" src="Foto/Appartamento2/Appartamento2.JPG" width="480" height="290">
                            </a>
                        </th>
                        <td>Address: ${nome_citta}, Viale Trieste 1</td>
                    </tr>
                    <tr>
                        <td>Footage: 120 mq</td>
                    </tr>
                    <tr>
                        <td>
                        <img class="star" title="star" alt="rank" src="img/star1.png" width="30" height="30"> 
                        <img class="star" title="star" alt="rank" src="img/star1.png" width="30" height="30">
                        <img class="star" title="star" alt="rank" src="img/star1.png" width="30" height="30">   
                        <img class="star" title="star" alt="rank" src="img/star1.png" width="30" height="30"> 
                            
                        </td>
                    </tr>
                    <tr>
                        <td>Price: 350.000 €</td>
                    </tr>
                    <tr>
                        <td><button class="bottoneinfo" onclick="location.href = 'CasaMia.jsp'" title="Visualizza informazioni">More info</button></td>
                    </tr>
                </table>
            </div>

            <div id="right_section">

                <div id="gmaps-canvas"></div>
            </div>

        </div>


    </div>
        </div>

     <%@ include file="blocchi_dinamici/footer.jsp" %>                   
</body>
</html>