<%-- 
    Document   : stereo
    Created on : 15-gen-2017, 19.10.09
    Author     : Alessandro Mainas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Cardboard Example</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
        <link rel="stylesheet" href="css/style2.css">
        <style>
            /*TOURVR*/
            body{
               
            }
            #TourVR{
                width: 100%;
                height: 792px;
            }
            .startTour{
                background: black;
                width:100%;
                height:100%;

            }
            #startTourIMG{
                position: absolute;
                cursor: pointer;
                top:230px;
                left:37%;
                z-index: 8;

            }

            #example {
                opacity: 0.4;
                width: 100%;
                height: 100%;
                /*position: absolute;
                
                top:0;
                right:0;
                left: 0;
                bottom:0;*/
            }
            .InfoBig{
                background: rgba(2,2,2,0.7);
                height: 200px;
                width: 100%;
                position: relative;
                top:-200px;
            }
            .InfoSmall{
                background: white;
                height: 250px;
                width: 250px;
                position: relative;
                top: -250px;
                left: 57%;
                border-radius: 8px;
            }
            .InfoBig p, .InfoBig h2{
                position: relative;
                left: 50px;
                color: whitesmoke;
                top: 50px;
            }
            .InfoBig .rating{
                position: relative;
                left: 200px;
            }
            .InfoSmall button{
                position: absolute;
                bottom: 30px;
                left: 55px;
            
                /* dimensione e colore del bordo */
                border: 1px solid #a1a3a3;
                /* ondulazione angoli */
                border-radius: 4px;
                /* ombra angoli */
                box-shadow: 0 1px #fff;  

                /* larghezza bottone */
                
                /* altezza bottone */
                height:30px;

                
                /* colore scritta */
                color:#000;

                

                /* posizione scritta all'interno del bottone */
                padding-top:2px;

                margin-top: 5px;
                /* onmouse over appare la manina*/
                cursor: pointer;

                /*background-color: #fff;
                background: -webkit-gradient(linear, left top, left bottom, from(#00eeee), to(#0078a5));*/
                background: #3399ff;
                }

                .InfoSmall button:hover{
                /*background-color: #ABABAB;
              background: -webkit-gradient(linear, left top, left bottom, from(#0078a5), to(#00eeee));*/
                background: #99ebff;
                }
                
                .InfoSmall p{
                    
                    padding: 15px;
                }
                .InfoSmall .footage{
                    position: absolute;
                    top: 80px;
                }
                
            
            
            
            
            
            
            
            
            .InfoSmall p{
                color: graytext;
                position: relative;
            }
            .mobileinfo{
                display: none;
            }
            #gallery{
                overflow-y:scroll; 
                overflow-x: hidden;
                
                position: absolute; 
                right: 0px;
                top: 60px;
                height: 720px;
                border: solid darkslategray 6px;
                width: 230px; 
                z-index: 2;
            }
            #galleryBackground{
                position: absolute; right: 0px; height: 100%; width: 100%; background-color: white;
                text-align: center;
            }
            #galleryBackground ul{
                list-style: none; 
                padding-left: 5px; 
                background-color: white; 
                cursor: pointer;
                
            }
            #galleryBackground li img{
                border: solid lightskyblue 4px;
            }
            #carboardToggle{
                display: none;
            }
            #galleryBackground p{
                    
                    width: 100px;
                    background: lightblue;
                    border-radius: 6px;
                    color: white;
                    position: relative;
                    left: 25%;
                    bottom: 60px;
                    padding: 5px;
                }
            
            @media only screen and (max-width: 1024px){
                .InfoSmall{
                
                left: 50%;
                
            }
            }

            @media only screen and (max-width: 868px) and (min-width: 480px){
                body{
                    overflow:visible;
                }
                #TourVR{
                    width: 100%;
                    height: 640px;
                }
                .startTour{
                    background: black;
                    width:100%;
                    height:100%;

                }
                #startTourIMG{
                    display: none;

                }

                #example {
                    opacity: 1;
                    width: 100%;
                    height: 100%;
                    /*position: absolute;

                    top:0;
                    right:0;
                    left: 0;
                    bottom:0;*/
                }
                .InfoBig{
                    background: white;
                    height: 350px;
                    width: 100%;
                    position: relative;
                    top: 0;
                }
                .InfoBig p, .InfoBig h2{
                    color: graytext;
                }
                .InfoSmall{
                    display: none;

                }
                .InfoSmall button{
                    position: relative;
                    top: 80%;
                    left: 50px;
                }
                #gallery{
                    overflow-x: scroll;
                    overflow-y: hidden;
                    position: relative; 
                    top:0;
                    
                    height: 170px; 
                    width: 100%; 
                    z-index: 2;

                }
                #galleryBackground{
                    position: relative;


                    background-color: white;
                    height: 160px;
                    width: 100%;
                }
                #galleryBackground ul{
                    white-space: nowrap;
                    list-style: none;
                    padding-left: 5px; 
                    background-color: white; 
                    cursor:pointer;
                    margin-top: 5px;
                    
                }
                #galleryBackground li{
                    display: inline-block;
                }
                footer{
                    position: relative;
                    top: 500px;
                }
                
                

            }

            @media only screen and (max-width: 480px){
                body{
                    overflow:visible;
                }
                #TourVR{
                    width: 100%;
                    height: 320px;
                }
                .startTour{
                    background: black;
                    width:100%;
                    height:100%;

                }
                #startTourIMG{
                    display: none;

                }

                #example {
                    opacity: 1;
                    width: 100%;
                    height: 100%;
                    /*position: absolute;

                    top:0;
                    right:0;
                    left: 0;
                    bottom:0;*/
                }
                .InfoBig{
                    background: white;
                    height: 350px;
                    width: 100%;
                    position: relative;
                    top: 0;
                }
                .InfoBig p, .InfoBig h2{
                    color: graytext;
                    left: 20px;
                }
                .InfoSmall{
                    display: none;

                }
                .InfoSmall button{
                    position: relative;
                    top: 80%;
                    left: 50px;
                }
                .mobileinfo .footage{
                    top: 10px;
                }
                .mobileinfo button{
                position: absolute;
                bottom: 30px;
                left: 30%;
            
                /* dimensione e colore del bordo */
                border: 1px solid #a1a3a3;
                /* ondulazione angoli */
                border-radius: 4px;
                /* ombra angoli */
                box-shadow: 0 1px #fff;  

                /* larghezza bottone */
                
                /* altezza bottone */
                height:30px;

                
                /* colore scritta */
                color:#000;

                

                /* posizione scritta all'interno del bottone */
                padding-top:2px;

                margin-top: 5px;
                /* onmouse over appare la manina*/
                cursor: pointer;

                /*background-color: #fff;
                background: -webkit-gradient(linear, left top, left bottom, from(#00eeee), to(#0078a5));*/
                background: #3399ff;
                }

                .mobileinfo button:hover{
                /*background-color: #ABABAB;
              background: -webkit-gradient(linear, left top, left bottom, from(#0078a5), to(#00eeee));*/
                background: #99ebff;
                }
                #gallery{
                    display: none;

                }
                #carboardToggle{
                    display: block;
                    height: 60px;
                }
                .iconVR{
                    display: inline-block;
                    position: relative;
                    left: 15px;
                    
                }
                #switch{
                    display: inline-block;
                    position: absolute;
                    right: 15px;
                    padding-top: 5px;
                }
                /* The switch - the box around the slider */
                .switch {
                    position: relative;
                    display: inline-block;
                    width: 60px;
                    height: 34px;
                }

                /* Hide default HTML checkbox */
                .switch input {display:none;}

                /* The slider */
                .slider {
                    position: absolute;
                    cursor: pointer;
                    top: 0;
                    left: 0;
                    right: 0;
                    bottom: 0;
                    background-color: #ccc;
                    -webkit-transition: .4s;
                    transition: .4s;
                }

                .slider:before {
                    position: absolute;
                    content: "";
                    height: 26px;
                    width: 26px;
                    left: 4px;
                    bottom: 4px;
                    background-color: white;
                    -webkit-transition: .4s;
                    transition: .4s;
                }

                input:checked + .slider {
                    background-color: #2196F3;
                }

                input:focus + .slider {
                    box-shadow: 0 0 1px #2196F3;
                }

                input:checked + .slider:before {
                    -webkit-transform: translateX(26px);
                    -ms-transform: translateX(26px);
                    transform: translateX(26px);
                }

                /* Rounded sliders */
                .slider.round {
                    border-radius: 34px;
                }

                .slider.round:before {
                    border-radius: 50%;
                }
                footer{
                    position: relative;
                    top: 500px;
                }

            }

        </style>
    </head>
    <body id="body">
        <div id="box" style="z-index: 4">
            <%@ include file="blocchi_dinamici/header.jsp" %>      
        </div>

        <section id="TourVR">

            <div class="startTour">
                <a href='#body' id ="startTourIMG" onclick="startTour();"><img id="immagineStart" src="img/logo.png" alt="" height="200px" width="200px" onmouseover="startTourPhoto();" onmouseout="ripristinaPhoto()"/></a>
                <div id="example">

                </div>
                <div id="gallery">
                    <%@ include file="blocchi_dinamici/gallery.jsp"%>
                </div>
                <div id='carboardToggle'>
                    <img class="iconVR" src="img/Google_Cardboard_logo.png" alt="" height="50px"/>
                    <div id='switch'>
                        <!-- Rounded switch -->
                        <label class="switch">
                            <input id="cardboard" type="checkbox" value="on" onclick="carboardactivate();">
                            <div class="slider round"></div>
                        </label>
                    </div>
                    <hr style="margin-left: 25px; margin-right: 25px;"/>
                </div>
                <div class="InfoBig">
                    <h2>Appartment in Cagliari. Via Ospedale, 72</h2>
                    <p>Italy • Cagliari</p> 
                    <div class="rating">
                            <img class="star" title="star" alt="rank" src="img/star1.png" width="30" height="30"> 
                            <img class="star" title="star" alt="rank" src="img/star1.png" width="30" height="30">
                            <img class="star" title="star" alt="rank" src="img/star1.png" width="30" height="30">
                    </div>
                    <div class="mobileinfo">
                         <p class="price">Price: 150.000 €</p>
                        <br/>
                        <hr style="margin-left: 25px; margin-right: 25px;"/>
                        <p class="footage">Footage: 100 m<sup><small>2</small></sup>
                        </p>
                        
                        
                        <button>
                            <a href="http://www.immobiliare.it/58756838-Vendita-Villa-Is-Molas-Resort-Pula.html">Contatta Inserzionista</a>
                        </button>
                    </div>

                    <div class="InfoSmall">
                        
                        <p class="price">Price: 150.000 €</p>
                        <br/>
                        <hr style="margin-left: 25px; margin-right: 25px;"/>
                        <p class="footage">Footage: 100 m<sup><small>2</small></sup>
                        </p>
                        
                        <hr style="position: relative; top: 40px; margin-left: 25px; margin-right: 25px;"/>
                        
                        <button>
                            <a href="http://www.immobiliare.it/58756838-Vendita-Villa-Is-Molas-Resort-Pula.html">Contatta Inserzionista</a>
                        </button>
                    </div>
                </div>
            </div>
        </section>
        <%@ include file="blocchi_dinamici/footer.jsp"%>

        <script src="js/three.min.js" type="text/javascript"></script>
        <script src="js/StereoEffects.js" type="text/javascript"></script>
        <script src="js/DeviceOrientationControls.js" type="text/javascript"></script>
        <script src="js/OrbitControls.js" type="text/javascript"></script>
        <script src="js/reticulum.js" type="text/javascript"></script>
        <script src="js/startTour.js" type="text/javascript"></script>

        <script>
                    var camera, pointer, scene, renderer;
                    var raycaster = new THREE.Raycaster();
                    var mouse = new THREE.Vector2();
                    var effect, controls;
                    var element, container;
                    var Bedroom1visited = false;//variabili per la gestione di una porta con lo stesso puntatore
                    var Hall1visited = false;
                    var Hall2visited = false;
                    var Bathroom2visited = false;//TODO Aggiungere puntatori per ogni stanza aka 2 per porta (entra/esci) per la gestione automatica
                    var targetList = [];
                    var projector;
                    var intersecati = [];
                    var current = [];
                    projector = new THREE.Projector();
                    var clock = new THREE.Clock();
                    var changePhoto;
                    var currentO;
                    var cardboard = false;
                    console.log(cardboard);
                    var isMobile = false; //initiate as false
                    // device detection
                    if (/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|ipad|iris|kindle|Android|Silk|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(navigator.userAgent)
                            || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(navigator.userAgent.substr(0, 4)))
                        isMobile = true;

                    console.log(isMobile);

                    init();
                    animate();
                    
                    function carboardactivate() {
                        console.log(document.getElementById('cardboard').value);
                        if (document.getElementById('cardboard').value === 'on') {
                            document.getElementById('cardboard').value = 'off';
                            cardboard = true;
                            console.log(document.getElementById('cardboard').value);
                            if (isMobile && cardboard) {
                                effect = new THREE.StereoEffect(renderer);
                            }
                        }
                        else {
                            document.getElementById('cardboard').value = 'on';
                            cardboard = false;
                            console.log(document.getElementById('cardboard').value);
                        }   
                    }


                    function onMouseMove(event)
                    {
                        // the following line would stop any other event handler from firing
                        // (such as the mouse's TrackballControls)
                        // event.preventDefault();

                        // update the mouse variable
                        mouse.x = (event.clientX / window.innerWidth) * 2 - 1;
                        mouse.y = -(event.clientY / window.innerHeight) * 2 + 1;
                    }



                    function init() {

                        var width = window.innerWidth,
                                height = window.innerHeight;
                        renderer = new THREE.WebGLRenderer();
                        element = renderer.domElement;
                        container = document.getElementById('example');
                        container.appendChild(element);

                        


                        scene = new THREE.Scene();

                        camera = new THREE.PerspectiveCamera(75, width / height, 1, 1000);
                        camera.position.set(0, 0, 0);
                        if (isMobile) {
                            Reticulum.init(camera, {
                                proximity: false,
                                clickevents: true,
                                near: null, //near factor of the raycaster (shouldn't be negative and should be smaller than the far property)
                                far: null, //far factor of the raycaster (shouldn't be negative and should be larger than the near property)
                                reticle: {
                                    visible: true,
                                    restPoint: 1000, //Defines the reticle's resting point when no object has been targeted
                                    color: 0xcc0000,
                                    innerRadius: 0.0001,
                                    outerRadius: 0.003,
                                    hover: {
                                        color: 0xcc0000,
                                        innerRadius: 0.02,
                                        outerRadius: 0.024,
                                        speed: 5,
                                        vibrate: 50 //Set to 0 or [] to disable
                                    }
                                },
                                fuse: {
                                    visible: true,
                                    duration: 2.5,
                                    color: 0x00fff6,
                                    innerRadius: 0.045,
                                    outerRadius: 0.06,
                                    vibrate: 100, //Set to 0 or [] to disable
                                    clickCancelFuse: false //If users clicks on targeted object fuse is canceled
                                }
                            });
                        }
                        scene.add(camera);



                        var pointMat = new THREE.LineBasicMaterial({
                            color: 0xfffff
                        });
                        var pointGeo = new THREE.CircleGeometry(0.05, 25);
                        pointer = new THREE.Line(pointGeo, pointMat);

                        if (isMobile)
                            camera.add(pointer);
                        pointer.position.set(0, 0, -5);

                        controls = new THREE.OrbitControls(camera, element);
                        controls.rotateUp(Math.PI / 4);
                        controls.target.set(
                                camera.position.x + 0.1,
                                camera.position.y,
                                camera.position.z
                                );
                        controls.noZoom = true;
                        controls.noPan = true;

                        function setOrientationControls(e) {
                            if (!e.alpha) {
                                return;
                            }

                            controls = new THREE.DeviceOrientationControls(camera, true);
                            controls.connect();
                            controls.update();

                            element.addEventListener('click', fullscreen, false);

                            window.removeEventListener('deviceorientation', setOrientationControls, true);
                        }
                        window.addEventListener('deviceorientation', setOrientationControls, true);



                        changePhoto = function changePhoto(nomeFoto) {
                            /* update the mouse variable
                             mouse.x = ( event.clientX / window.innerWidth ) * 2 - 1;
                             mouse.y = - ( event.clientY / window.innerHeight ) * 2 + 1;
                             */
                            // find intersections

                            // create a Ray with origin at the mouse position
                            //   and direction into the scene (camera direction)
                            //   
                            // if there is one (or more) intersections

                            if (nomeFoto === "null" && intersecati !== undefined) {

                                if (intersecati.length > 0)
                                {
                                    console.log("Hit @ " + intersecati[0].object.name);
                                    // change the color of the closest face.
                                    /*if (intersects[0].object.name === "goHall1"){
                                     sphere.material = new THREE.MeshBasicMaterial({
                                     map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Hall1.jpg')
                                     });
                                     scene.remove(goHall1);
                                     targetList.pop(goHall1);
                                     scene.add(goKitchen);
                                     }
                                     */

                                    switch (intersecati[0].object.name) {
                                        case 'goHall1':
                                            for (var i = 0; i < current.length; i++) {
                                                scene.remove(current[i]);
                                                targetList.pop(current[i]);
                                                recRem(current[i]);
                                            }
                                            sphere.material = new THREE.MeshBasicMaterial({
                                                map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Hall1.jpg')
                                            });
                                            //TODO wrappare le operazioni di aggiunta e rimozione in un ciclo for una volta fatti i vettori per ogni stanza

                                            current = hall1Pointers;
                                            for (var i = 0; i < hall1Pointers.length; i++) {
                                                scene.add(current[i]);
                                                targetList.push(current[i]);
                                                add_toRec(current[i]);
                                            }

                                            break;
                                        case 'goHall1FK':
                                            for (var i = 0; i < current.length; i++) {
                                                scene.remove(current[i]);
                                                targetList.pop(current[i]);
                                                recRem(current[i]);
                                            }
                                            sphere.material = new THREE.MeshBasicMaterial({
                                                map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Hall1.jpg')
                                            });
                                            //TODO wrappare le operazioni di aggiunta e rimozione in un ciclo for una volta fatti i vettori per ogni stanza

                                            current = hall1Pointers;
                                            for (var i = 0; i < hall1Pointers.length; i++) {
                                                scene.add(current[i]);
                                                targetList.push(current[i]);
                                                recRem(current[i]);
                                            }

                                            break;
                                        case 'goKitchen':
                                            for (var i = 0; i < current.length; i++) {
                                                scene.remove(current[i]);
                                                targetList.pop(current[i]);
                                                recRem(current[i]);
                                            }
                                            sphere.material = new THREE.MeshBasicMaterial({
                                                map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Kitchen.jpg')
                                            });
                                            current = kitchenPointers;
                                            for (var i = 0; i < kitchenPointers.length; i++) {
                                                scene.add(current[i]);
                                                targetList.push(current[i]);
                                                add_toRec(current[i]);
                                            }
                                            break;
                                        case 'goLiving':
                                            for (var i = 0; i < current.length; i++) {
                                                scene.remove(current[i]);
                                                targetList.pop(current[i]);
                                                recRem(current[i]);
                                            }
                                            sphere.material = new THREE.MeshBasicMaterial({
                                                map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Living.jpg')
                                            });
                                            current = livingPointers;
                                            for (var i = 0; i < livingPointers.length; i++) {
                                                scene.add(current[i]);
                                                targetList.push(current[i]);
                                                add_toRec(current[i]);
                                            }
                                            break;
                                        case 'goLivingFH1':
                                            for (var i = 0; i < current.length; i++) {
                                                scene.remove(current[i]);
                                                targetList.pop(current[i]);
                                                recRem(current[i]);
                                            }
                                            sphere.material = new THREE.MeshBasicMaterial({
                                                map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Living.jpg')
                                            });
                                            current = livingPointers;
                                            for (var i = 0; i < livingPointers.length; i++) {
                                                scene.add(current[i]);
                                                targetList.push(current[i]);
                                                add_toRec(current[i]);
                                            }
                                            break;
                                        case 'goLivingFH2':
                                            for (var i = 0; i < current.length; i++) {
                                                scene.remove(current[i]);
                                                targetList.pop(current[i]);
                                                recRem(current[i]);
                                            }
                                            sphere.material = new THREE.MeshBasicMaterial({
                                                map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Living.jpg')
                                            });
                                            current = livingPointers;
                                            for (var i = 0; i < livingPointers.length; i++) {
                                                scene.add(current[i]);
                                                targetList.push(current[i]);
                                                add_toRec(current[i]);
                                            }
                                            break;
                                        case 'goHall2':
                                            for (var i = 0; i < current.length; i++) {
                                                scene.remove(current[i]);
                                                targetList.pop(current[i]);
                                                recRem(current[i]);
                                            }
                                            sphere.material = new THREE.MeshBasicMaterial({
                                                map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Hall2.jpg')
                                            });
                                            current = hall2Pointers;
                                            for (var i = 0; i < hall2Pointers.length; i++) {
                                                scene.add(current[i]);
                                                targetList.push(current[i]);
                                                add_toRec(current[i]);
                                            }
                                            break;
                                        case 'goHall2FB2':
                                            for (var i = 0; i < current.length; i++) {
                                                scene.remove(current[i]);
                                                targetList.pop(current[i]);
                                                recRem(current[i]);
                                            }
                                            sphere.material = new THREE.MeshBasicMaterial({
                                                map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Hall2.jpg')
                                            });
                                            current = hall2Pointers;
                                            for (var i = 0; i < hall2Pointers.length; i++) {
                                                scene.add(current[i]);
                                                targetList.push(current[i]);
                                                add_toRec(current[i]);
                                            }
                                            break;
                                        case 'goHall2FB1':
                                            for (var i = 0; i < current.length; i++) {
                                                scene.remove(current[i]);
                                                targetList.pop(current[i]);
                                                recRem(current[i]);
                                            }
                                            sphere.material = new THREE.MeshBasicMaterial({
                                                map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Hall2.jpg')
                                            });
                                            current = hall2Pointers;
                                            for (var i = 0; i < hall2Pointers.length; i++) {
                                                scene.add(current[i]);
                                                targetList.push(current[i]);
                                                add_toRec(current[i]);
                                            }
                                            break;
                                        case 'goHall2FBed2':
                                            for (var i = 0; i < current.length; i++) {
                                                scene.remove(current[i]);
                                                targetList.pop(current[i]);
                                                recRem(current[i]);
                                            }
                                            sphere.material = new THREE.MeshBasicMaterial({
                                                map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Hall2.jpg')
                                            });
                                            current = hall2Pointers;
                                            for (var i = 0; i < hall2Pointers.length; i++) {
                                                scene.add(current[i]);
                                                targetList.push(current[i]);
                                                add_toRec(current[i]);
                                            }
                                            break;
                                        case 'goBedroom1':
                                            for (var i = 0; i < current.length; i++) {
                                                scene.remove(current[i]);
                                                targetList.pop(current[i]);
                                                recRem(current[i]);
                                            }
                                            sphere.material = new THREE.MeshBasicMaterial({
                                                map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Bedroom1.jpg')
                                            });
                                            current = bedroom1Pointers;
                                            for (var i = 0; i < bedroom1Pointers.length; i++) {
                                                scene.add(current[i]);
                                                targetList.push(current[i]);
                                                add_toRec(current[i]);
                                            }
                                            break;
                                        case 'goBedroom2':
                                            for (var i = 0; i < current.length; i++) {
                                                scene.remove(current[i]);
                                                targetList.pop(current[i]);
                                                recRem(current[i]);
                                            }
                                            sphere.material = new THREE.MeshBasicMaterial({
                                                map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Bedroom2.jpg')
                                            });
                                            current = bedroom2Pointers;
                                            for (var i = 0; i < bedroom2Pointers.length; i++) {
                                                scene.add(current[i]);
                                                targetList.push(current[i]);
                                                add_toRec(current[i]);
                                            }
                                            break;
                                        case 'goBedroom1FB3':
                                            for (var i = 0; i < current.length; i++) {
                                                scene.remove(current[i]);
                                                targetList.pop(current[i]);
                                                recRem(current[i]);
                                            }
                                            sphere.material = new THREE.MeshBasicMaterial({
                                                map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Bedroom1.jpg')
                                            });
                                            current = bedroom1Pointers;
                                            for (var i = 0; i < bedroom1Pointers.length; i++) {
                                                scene.add(current[i]);
                                                targetList.push(current[i]);
                                                add_toRec(current[i]);
                                            }
                                            break;
                                        case 'goBathroom2':
                                            for (var i = 0; i < current.length; i++) {
                                                scene.remove(current[i]);
                                                targetList.pop(current[i]);
                                                recRem(current[i]);
                                            }
                                            sphere.material = new THREE.MeshBasicMaterial({
                                                map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Bathroom2.jpg')
                                            });
                                            current = bathroom2Pointers;
                                            for (var i = 0; i < bathroom2Pointers.length; i++) {
                                                scene.add(current[i]);
                                                targetList.push(current[i]);
                                                add_toRec(current[i]);
                                            }
                                            break;
                                        case 'goBathroom2FB3':
                                            for (var i = 0; i < current.length; i++) {
                                                scene.remove(current[i]);
                                                targetList.pop(current[i]);
                                                recRem(current[i]);
                                            }
                                            sphere.material = new THREE.MeshBasicMaterial({
                                                map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Bathroom2.jpg')
                                            });
                                            current = bathroom2Pointers;
                                            for (var i = 0; i < bathroom2Pointers.length; i++) {
                                                scene.add(current[i]);
                                                targetList.push(current[i]);
                                                add_toRec(current[i]);
                                            }
                                            break;
                                        case 'goBathroom1':
                                            for (var i = 0; i < current.length; i++) {
                                                scene.remove(current[i]);
                                                targetList.pop(current[i]);
                                                recRem(current[i]);
                                            }
                                            sphere.material = new THREE.MeshBasicMaterial({
                                                map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Bathroom1.jpg')
                                            });
                                            current = bathroom1Pointers;
                                            for (var i = 0; i < bathroom1Pointers.length; i++) {
                                                scene.add(current[i]);
                                                targetList.push(current[i]);
                                                add_toRec(current[i]);
                                            }
                                            break;
                                        case 'goBathroom3':
                                            for (var i = 0; i < current.length; i++) {
                                                scene.remove(current[i]);
                                                targetList.pop(current[i]);
                                                recRem(current[i]);
                                            }
                                            sphere.material = new THREE.MeshBasicMaterial({
                                                map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Bathroom3.jpg')
                                            });
                                            current = bathroom3Pointers;
                                            for (var i = 0; i < bathroom3Pointers.length; i++) {
                                                scene.add(current[i]);
                                                targetList.push(current[i]);
                                                add_toRec(current[i]);
                                            }
                                            break;
                                        default:
                                            ;

                                    }
                                }

                            } else {
                                switch (nomeFoto) {
                                    case 'goHall1':
                                        for (var i = 0; i < current.length; i++) {
                                            scene.remove(current[i]);
                                            targetList.pop(current[i]);
                                            recRem(current[i]);
                                        }
                                        sphere.material = new THREE.MeshBasicMaterial({
                                            map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Hall1.jpg')
                                        });
                                        //TODO wrappare le operazioni di aggiunta e rimozione in un ciclo for una volta fatti i vettori per ogni stanza

                                        current = hall1Pointers;
                                        for (var i = 0; i < hall1Pointers.length; i++) {
                                            scene.add(current[i]);
                                            targetList.push(current[i]);
                                            add_toRec(current[i]);
                                        }

                                        break;
                                    case 'goHall1FK':
                                        for (var i = 0; i < current.length; i++) {
                                            scene.remove(current[i]);
                                            targetList.pop(current[i]);
                                            recRem(current[i]);
                                        }
                                        sphere.material = new THREE.MeshBasicMaterial({
                                            map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Hall1.jpg')
                                        });
                                        //TODO wrappare le operazioni di aggiunta e rimozione in un ciclo for una volta fatti i vettori per ogni stanza

                                        current = hall1Pointers;
                                        for (var i = 0; i < hall1Pointers.length; i++) {
                                            scene.add(current[i]);
                                            targetList.push(current[i]);
                                            recRem(current[i]);
                                        }

                                        break;
                                    case 'goKitchen':
                                        for (var i = 0; i < current.length; i++) {
                                            scene.remove(current[i]);
                                            targetList.pop(current[i]);
                                            recRem(current[i]);
                                        }
                                        sphere.material = new THREE.MeshBasicMaterial({
                                            map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Kitchen.jpg')
                                        });
                                        current = kitchenPointers;
                                        for (var i = 0; i < kitchenPointers.length; i++) {
                                            scene.add(current[i]);
                                            targetList.push(current[i]);
                                            add_toRec(current[i]);
                                        }
                                        break;
                                    case 'goLiving':
                                        for (var i = 0; i < current.length; i++) {
                                            scene.remove(current[i]);
                                            targetList.pop(current[i]);
                                            recRem(current[i]);
                                        }
                                        sphere.material = new THREE.MeshBasicMaterial({
                                            map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Living.jpg')
                                        });
                                        current = livingPointers;
                                        for (var i = 0; i < livingPointers.length; i++) {
                                            scene.add(current[i]);
                                            targetList.push(current[i]);
                                            add_toRec(current[i]);
                                        }
                                        break;
                                    case 'goLivingFH1':
                                        for (var i = 0; i < current.length; i++) {
                                            scene.remove(current[i]);
                                            targetList.pop(current[i]);
                                            recRem(current[i]);
                                        }
                                        sphere.material = new THREE.MeshBasicMaterial({
                                            map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Living.jpg')
                                        });
                                        current = livingPointers;
                                        for (var i = 0; i < livingPointers.length; i++) {
                                            scene.add(current[i]);
                                            targetList.push(current[i]);
                                            add_toRec(current[i]);
                                        }
                                        break;
                                    case 'goLivingFH2':
                                        for (var i = 0; i < current.length; i++) {
                                            scene.remove(current[i]);
                                            targetList.pop(current[i]);
                                            recRem(current[i]);
                                        }
                                        sphere.material = new THREE.MeshBasicMaterial({
                                            map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Living.jpg')
                                        });
                                        current = livingPointers;
                                        for (var i = 0; i < livingPointers.length; i++) {
                                            scene.add(current[i]);
                                            targetList.push(current[i]);
                                            add_toRec(current[i]);
                                        }
                                        break;
                                    case 'goHall2':
                                        for (var i = 0; i < current.length; i++) {
                                            scene.remove(current[i]);
                                            targetList.pop(current[i]);
                                            recRem(current[i]);
                                        }
                                        sphere.material = new THREE.MeshBasicMaterial({
                                            map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Hall2.jpg')
                                        });
                                        current = hall2Pointers;
                                        for (var i = 0; i < hall2Pointers.length; i++) {
                                            scene.add(current[i]);
                                            targetList.push(current[i]);
                                            add_toRec(current[i]);
                                        }
                                        break;
                                    case 'goHall2FB2':
                                        for (var i = 0; i < current.length; i++) {
                                            scene.remove(current[i]);
                                            targetList.pop(current[i]);
                                            recRem(current[i]);
                                        }
                                        sphere.material = new THREE.MeshBasicMaterial({
                                            map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Hall2.jpg')
                                        });
                                        current = hall2Pointers;
                                        for (var i = 0; i < hall2Pointers.length; i++) {
                                            scene.add(current[i]);
                                            targetList.push(current[i]);
                                            add_toRec(current[i]);
                                        }
                                        break;
                                    case 'goHall2FB1':
                                        for (var i = 0; i < current.length; i++) {
                                            scene.remove(current[i]);
                                            targetList.pop(current[i]);
                                            recRem(current[i]);
                                        }
                                        sphere.material = new THREE.MeshBasicMaterial({
                                            map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Hall2.jpg')
                                        });
                                        current = hall2Pointers;
                                        for (var i = 0; i < hall2Pointers.length; i++) {
                                            scene.add(current[i]);
                                            targetList.push(current[i]);
                                            add_toRec(current[i]);
                                        }
                                        break;
                                    case 'goHall2FBed2':
                                        for (var i = 0; i < current.length; i++) {
                                            scene.remove(current[i]);
                                            targetList.pop(current[i]);
                                            recRem(current[i]);
                                        }
                                        sphere.material = new THREE.MeshBasicMaterial({
                                            map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Hall2.jpg')
                                        });
                                        current = hall2Pointers;
                                        for (var i = 0; i < hall2Pointers.length; i++) {
                                            scene.add(current[i]);
                                            targetList.push(current[i]);
                                            add_toRec(current[i]);
                                        }
                                        break;
                                    case 'goBedroom1':
                                        for (var i = 0; i < current.length; i++) {
                                            scene.remove(current[i]);
                                            targetList.pop(current[i]);
                                            recRem(current[i]);
                                        }
                                        sphere.material = new THREE.MeshBasicMaterial({
                                            map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Bedroom1.jpg')
                                        });
                                        current = bedroom1Pointers;
                                        for (var i = 0; i < bedroom1Pointers.length; i++) {
                                            scene.add(current[i]);
                                            targetList.push(current[i]);
                                            add_toRec(current[i]);
                                        }
                                        break;
                                    case 'goBedroom2':
                                        for (var i = 0; i < current.length; i++) {
                                            scene.remove(current[i]);
                                            targetList.pop(current[i]);
                                            recRem(current[i]);
                                        }
                                        sphere.material = new THREE.MeshBasicMaterial({
                                            map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Bedroom2.jpg')
                                        });
                                        current = bedroom2Pointers;
                                        for (var i = 0; i < bedroom2Pointers.length; i++) {
                                            scene.add(current[i]);
                                            targetList.push(current[i]);
                                            add_toRec(current[i]);
                                        }
                                        break;
                                    case 'goBedroom1FB3':
                                        for (var i = 0; i < current.length; i++) {
                                            scene.remove(current[i]);
                                            targetList.pop(current[i]);
                                            recRem(current[i]);
                                        }
                                        sphere.material = new THREE.MeshBasicMaterial({
                                            map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Bedroom1.jpg')
                                        });
                                        current = bedroom1Pointers;
                                        for (var i = 0; i < bedroom1Pointers.length; i++) {
                                            scene.add(current[i]);
                                            targetList.push(current[i]);
                                            add_toRec(current[i]);
                                        }
                                        break;
                                    case 'goBathroom2':
                                        for (var i = 0; i < current.length; i++) {
                                            scene.remove(current[i]);
                                            targetList.pop(current[i]);
                                            recRem(current[i]);
                                        }
                                        sphere.material = new THREE.MeshBasicMaterial({
                                            map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Bathroom2.jpg')
                                        });
                                        current = bathroom2Pointers;
                                        for (var i = 0; i < bathroom2Pointers.length; i++) {
                                            scene.add(current[i]);
                                            targetList.push(current[i]);
                                            add_toRec(current[i]);
                                        }
                                        break;
                                    case 'goBathroom2FB3':
                                        for (var i = 0; i < current.length; i++) {
                                            scene.remove(current[i]);
                                            targetList.pop(current[i]);
                                            recRem(current[i]);
                                        }
                                        sphere.material = new THREE.MeshBasicMaterial({
                                            map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Bathroom2.jpg')
                                        });
                                        current = bathroom2Pointers;
                                        for (var i = 0; i < bathroom2Pointers.length; i++) {
                                            scene.add(current[i]);
                                            targetList.push(current[i]);
                                            add_toRec(current[i]);
                                        }
                                        break;
                                    case 'goBathroom1':
                                        for (var i = 0; i < current.length; i++) {
                                            scene.remove(current[i]);
                                            targetList.pop(current[i]);
                                            recRem(current[i]);
                                        }
                                        sphere.material = new THREE.MeshBasicMaterial({
                                            map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Bathroom1.jpg')
                                        });
                                        current = bathroom1Pointers;
                                        for (var i = 0; i < bathroom1Pointers.length; i++) {
                                            scene.add(current[i]);
                                            targetList.push(current[i]);
                                            add_toRec(current[i]);
                                        }
                                        break;
                                    case 'goBathroom3':
                                        for (var i = 0; i < current.length; i++) {
                                            scene.remove(current[i]);
                                            targetList.pop(current[i]);
                                            recRem(current[i]);
                                        }
                                        sphere.material = new THREE.MeshBasicMaterial({
                                            map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Bathroom3.jpg')
                                        });
                                        current = bathroom3Pointers;
                                        for (var i = 0; i < bathroom3Pointers.length; i++) {
                                            scene.add(current[i]);
                                            targetList.push(current[i]);
                                            add_toRec(current[i]);
                                        }
                                        break;
                                    default:
                                        ;

                                }
                            }
                        };







                        var light = new THREE.HemisphereLight(0x777777, 0x000000, 0.6);
                        scene.add(light);

                        var texture = THREE.ImageUtils.loadTexture(
                                'arrow.png'
                                );
                        texture.wrapS = THREE.RepeatWrapping;
                        texture.wrapT = THREE.RepeatWrapping;
                        texture.anisotropy = renderer.getMaxAnisotropy();

                        var material = new THREE.MeshPhongMaterial({
                            color: 0xfffff,
                            specular: 0,
                            shininess: 20,
                            shading: THREE.FlatShading,
                            map: texture
                        });
                        var material1 = new THREE.MeshPhongMaterial({
                            color: 0xfffff,
                            specular: 0,
                            shininess: 20,
                            shading: THREE.FlatShading,
                            map: texture
                        });
                        var material2 = new THREE.MeshPhongMaterial({
                            color: 0xfffff,
                            specular: 0,
                            shininess: 20,
                            shading: THREE.FlatShading,
                            map: texture
                        });
                        var material3 = new THREE.MeshPhongMaterial({
                            color: 0xfffff,
                            specular: 0,
                            shininess: 20,
                            shading: THREE.FlatShading,
                            map: texture
                        });
                        var material4 = new THREE.MeshPhongMaterial({
                            color: 0xfffff,
                            specular: 0,
                            shininess: 20,
                            shading: THREE.FlatShading,
                            map: texture
                        });
                        var material5 = new THREE.MeshPhongMaterial({
                            color: 0xfffff,
                            specular: 0,
                            shininess: 20,
                            shading: THREE.FlatShading,
                            map: texture
                        });
                        var material6 = new THREE.MeshPhongMaterial({
                            color: 0xfffff,
                            specular: 0,
                            shininess: 20,
                            shading: THREE.FlatShading,
                            map: texture
                        });
                        var material7 = new THREE.MeshPhongMaterial({
                            color: 0xfffff,
                            specular: 0,
                            shininess: 20,
                            shading: THREE.FlatShading,
                            map: texture
                        });
                        var material8 = new THREE.MeshPhongMaterial({
                            color: 0xfffff,
                            specular: 0,
                            shininess: 20,
                            shading: THREE.FlatShading,
                            map: texture
                        });
                        var material9 = new THREE.MeshPhongMaterial({
                            color: 0xfffff,
                            specular: 0,
                            shininess: 20,
                            shading: THREE.FlatShading,
                            map: texture
                        });
                        var material10 = new THREE.MeshPhongMaterial({
                            color: 0xfffff,
                            specular: 0,
                            shininess: 20,
                            shading: THREE.FlatShading,
                            map: texture
                        });
                        var material11 = new THREE.MeshPhongMaterial({
                            color: 0xfffff,
                            specular: 0,
                            shininess: 20,
                            shading: THREE.FlatShading,
                            map: texture
                        });
                        var material12 = new THREE.MeshPhongMaterial({
                            color: 0xfffff,
                            specular: 0,
                            shininess: 20,
                            shading: THREE.FlatShading,
                            map: texture
                        });
                        var material13 = new THREE.MeshPhongMaterial({
                            color: 0xfffff,
                            specular: 0,
                            shininess: 20,
                            shading: THREE.FlatShading,
                            map: texture
                        });
                        var material14 = new THREE.MeshPhongMaterial({
                            color: 0xfffff,
                            specular: 0,
                            shininess: 20,
                            shading: THREE.FlatShading,
                            map: texture
                        });
                        var material15 = new THREE.MeshPhongMaterial({
                            color: 0xfffff,
                            specular: 0,
                            shininess: 20,
                            shading: THREE.FlatShading,
                            map: texture
                        });
                        var material16 = new THREE.MeshPhongMaterial({
                            color: 0xfffff,
                            specular: 0,
                            shininess: 20,
                            shading: THREE.FlatShading,
                            map: texture
                        });

                        var geometry = new THREE.CubeGeometry(2, 0, 2);

                        var goHall1 = new THREE.Mesh(geometry, material);
                        var goHall2 = new THREE.Mesh(geometry, material1);
                        var goKitchen = new THREE.Mesh(geometry, material2);
                        var goLiving = new THREE.Mesh(geometry, material3);
                        var goBedroom1 = new THREE.Mesh(geometry, material4);
                        var goBedroom2 = new THREE.Mesh(geometry, material5);
                        var goBathroom2 = new THREE.Mesh(geometry, material6);
                        var goBathroom1 = new THREE.Mesh(geometry, material7);
                        var goBathroom3 = new THREE.Mesh(geometry, material8);
                        var goLivingFH1 = new THREE.Mesh(geometry, material9);
                        var goHall1FK = new THREE.Mesh(geometry, material10);
                        var goHall2FB1 = new THREE.Mesh(geometry, material11);
                        var goHall2FB2 = new THREE.Mesh(geometry, material12);
                        var goHall2FBed2 = new THREE.Mesh(geometry, material13);
                        var goBathroom2FB3 = new THREE.Mesh(geometry, material14);
                        var goLivingFH2 = new THREE.Mesh(geometry, material15);
                        var goBedroom1FB3 = new THREE.Mesh(geometry, material16);

                        var livingPointers = [goHall1, goHall2];
                        var hall1Pointers = [goLivingFH1, goKitchen];
                        var kitchenPointers = [goHall1FK];
                        var bedroom1Pointers = [goHall2FB1, goBathroom3];
                        var bedroom2Pointers = [goHall2FBed2];
                        var bathroom3Pointers = [goBedroom1FB3];
                        var bathroom2Pointers = [goHall2FB2, goBathroom1];
                        var bathroom1Pointers = [goBathroom2FB3];
                        var hall2Pointers = [goLivingFH2, goBedroom1, goBedroom2, goBathroom2];


                        //TODO Creare vettori per ogni stanza che contengono i pulsanti di navigazione
                        goHall1.position.set(-12, 0, 0);
                        goHall1.rotation.set(0, 0, 2.50);
                        goHall1.name = "goHall1";


                        goKitchen.position.set(-12, 0, 0);
                        goKitchen.rotation.set(0, 0, 2.50);
                        goKitchen.name = 'goKitchen';

                        goLiving.position.set(12, 0, 0);
                        goLiving.rotation.set(0, 0, 0.75);
                        goLiving.name = 'goLiving';

                        goHall2.position.set(-5, 0, 12);
                        goHall2.rotation.set(0, 1.5, 2.50);
                        goHall2.name = "goHall2";
                        add_toRec(goHall2);
                        add_toRec(goHall1);


                        goBedroom1.name = 'goBedroom1';


                        goBedroom2.name = 'goBedroom2';
                        goBathroom2.name = 'goBathroom2';
                        goBathroom1.name = 'goBathroom1';
                        goBathroom3.name = 'goBathroom3';
                        goLivingFH1.name = 'goLivingFH1';
                        goHall1FK.name = 'goHall1FK';
                        goHall2FB1.name = 'goHall2FB1';
                        goHall2FB2.name = 'goHall2FB2';
                        goHall2FBed2.name = 'goHall2FBed2';
                        goBathroom2FB3.name = 'goBathroom2FB3';
                        goLivingFH2.name = 'goLivingFH2';
                        goBedroom1FB3.name = 'goBedroom1FB3';
                        goLivingFH1.position.set(12, 0, 0);
                        goLivingFH1.rotation.set(0, 0, 0.75);
                        goHall1FK.position.set(12, 0, 0);
                        goHall1FK.rotation.set(0, 0, 0.75);
                        goLivingFH2.position.set(12, 0, 0);
                        goLivingFH2.rotation.set(0, 0, 0.75);
                        goBedroom1.position.set(0, 0, -12);
                        goBedroom1.rotation.set(0, 1.6, 0.75);
                        goBedroom2.position.set(3, 0, 12);
                        goBedroom2.rotation.set(0, 1.6, 2.5);
                        goBathroom2.position.set(-12, 0, 0);
                        goBathroom2.rotation.set(0, 0, 2.5);
                        goHall2FB2.position.set(12, 0, -0.5);
                        goHall2FB2.rotation.set(0, 0, 0.75);
                        goBathroom1.position.set(3, 0, 12);
                        goBathroom1.rotation.set(0, 1.8, 2.5);
                        goBathroom2FB3.position.set(12, 0, 0);
                        goBathroom2FB3.rotation.set(0, 0, 0.75);
                        goHall2FBed2.position.set(-3, 0, -12);
                        goHall2FBed2.rotation.set(0, 1.5, 0.75);
                        goHall2FB1.position.set(1, 0, 17);
                        goHall2FB1.rotation.set(0, 1.5, 2.5);
                        goBathroom3.position.set(-2.36, 0, 15);
                        goBathroom3.rotation.set(1.5, 0, 2.9);
                        goBedroom1FB3.position.set(10, 0, 0);
                        goBedroom1FB3.rotation.set(0, 0, 0.75);













                        var sphere = new THREE.Mesh(
                                new THREE.SphereGeometry(100, 100, 100),
                                new THREE.MeshBasicMaterial({
                                    map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Living.jpg')
                                })
                                );
                        sphere.scale.x = -1;
                        scene.add(sphere);
                        current = [goHall1, goHall2];
                        scene.add(goHall1);
                        targetList.push(goHall1);
                        scene.add(goHall2);
                        targetList.push(goHall2);



                        console.log(targetList[0].name);
                        console.log(toString.isMobile);



                        window.addEventListener('mousemove', onMouseMove, false);
                        window.addEventListener('mousedown', function () {
                            changePhoto("null");
                        }, false);
                        window.addEventListener('resize', resize, false);
                        setTimeout(resize, 1);
                    }

                    function add_toRec(object) {
                        Reticulum.add(object, {
                            clickCancelFuse: true, // Overrides global setting for fuse's clickCancelFuse
                            reticleHoverColor: 0x00fff6, // Overrides global reticle hover color
                            fuseVisible: true, // Overrides global fuse visibility
                            fuseDuration: 1.5, // Overrides global fuse duration
                            fuseColor: 0xcc0000, // Overrides global fuse color
                            onGazeOver: function () {
                                // do something when user targets object
                                this.material.emissive.setHex(0xffcc00);
                            },
                            onGazeOut: function () {
                                // do something when user moves reticle off targeted object
                                this.material.emissive.setHex(0x000000);
                            },
                            onGazeLong: function () {
                                // do something user targetes object for specific time
                                this.material.emissive.setHex(0x0000cc);
                                changePhoto(object.name);
                            },
                            onGazeClick: function () {
                                // have the object react when user clicks / taps on targeted object
                                this.material.emissive.setHex(0x0000cc);
                            }
                        });
                    }
                    function recRem(object) {
                        Reticulum.remove(object);
                    }

                    function update(dt) {
                        resize();
                        // create an array containing all objects in the scene with which the ray intersects
                        var intersects = raycaster.intersectObjects(scene.children);
                        

                        intersecati = intersects;

                        if (!isMobile) {
                            if (intersecati.length > 0) {

                                intersecati[0].object.material.emissive.setHex(0xff0000);
                                currentO = intersecati[0];
                                
                            } else
                            if (currentO !== undefined)
                                currentO.object.material.emissive.setHex(0x000000);
                        }


                        camera.updateProjectionMatrix();
                        if (isMobile)
                            Reticulum.update();
                        controls.update(dt);

                    }

                    function render(dt) {


                        // update the picking ray with the camera and mouse position
                        raycaster.setFromCamera(mouse, camera);

                        if (isMobile && cardboard)
                            effect.render(scene, camera);
                        else
                            renderer.render(scene, camera);



                    }

                    function resize() {
                        var width = container.offsetWidth;
                        var height = container.offsetHeight;

                        camera.aspect = width / height;
                        camera.updateProjectionMatrix();


                        if (isMobile && cardboard)
                            effect.setSize(width, height);
                        else
                            renderer.setSize(width, height);
                    }



                    function animate(t) {
                        requestAnimationFrame(animate);

                        update(clock.getDelta());
                        render(clock.getDelta());
                    }

                    function fullscreen() {
                        if (container.requestFullscreen) {
                            container.requestFullscreen();
                        } else if (container.msRequestFullscreen) {
                            container.msRequestFullscreen();
                        } else if (container.mozRequestFullScreen) {
                            container.mozRequestFullScreen();
                        } else if (container.webkitRequestFullscreen) {
                            container.webkitRequestFullscreen();
                        }
                    }
        </script>
    </body>
</html>

