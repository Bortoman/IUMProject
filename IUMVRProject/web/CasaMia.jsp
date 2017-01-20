<%-- 
    Document   : CasaMia
    Created on : 20-gen-2017, 12.02.51
    Author     : aless
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Cardboard Example</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <style>
        body {
            overflow: hidden;
            
        }
      
      #example {
        position:absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
      }
      #TourVR{
          width: 200px;
          height: 120px;
      }
      .container{
          width: 180px;
          height: 100px;
      }
      .egua{
          width:100%;
          height: 70px;
      }
    </style>
  </head>
  <body>
      <div class="egua"></div>
    <section id="TourVR">
        <div class="container">
            <div id="example">

            </div>
        </div>
    </section>
      
  <script src="js/three.min.js" type="text/javascript"></script>
  <script src="js/StereoEffects.js" type="text/javascript"></script>
  <script src="js/DeviceOrientationControls.js" type="text/javascript"></script>
  <script src="js/OrbitControls.js" type="text/javascript"></script>
  <script src="js/reticulum.js" type="text/javascript"></script>
 
  <script>
    var camera, pointer, scene, renderer;
    var raycaster = new THREE.Raycaster();
    var mouse = new THREE.Vector2();
    var effect, controls;
    var element, container;
    var Bedroom1visited=false;//variabili per la gestione di una porta con lo stesso puntatore
    var Hall1visited=false;
    var Hall2visited=false;
    var Bathroom2visited=false;//TODO Aggiungere puntatori per ogni stanza aka 2 per porta (entra/esci) per la gestione automatica
    var targetList = [];
    var projector;
    var intersects;
    projector = new THREE.Projector();
    var clock = new THREE.Clock();
    var isMobile = false; //initiate as false
    // device detection
    if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|ipad|iris|kindle|Android|Silk|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(navigator.userAgent) 
        || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(navigator.userAgent.substr(0,4))) isMobile = true;
    
    console.log(isMobile);

    init();
    animate();
    

    function init() {
       
        var width  = window.innerWidth,
	height = window.innerHeight;
      renderer = new THREE.WebGLRenderer();
      element = renderer.domElement;
      container = document.getElementById('example');
      container.appendChild(element);
      
      if(isMobile) {effect = new THREE.StereoEffect(renderer);}
      

      scene = new THREE.Scene();

      camera = new THREE.PerspectiveCamera(75, width/height, 1, 1000);
      camera.position.set(0, 0, 0);
      if (isMobile) {Reticulum.init(camera, {
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
      
      
      
      var pointMat= new THREE.LineBasicMaterial({
        color: 0xfffff
        });
      var pointGeo= new THREE.CircleGeometry(0.05,25);
      pointer= new THREE.Line(pointGeo, pointMat);
      
      if(isMobile) camera.add(pointer);
      pointer.position.set(0,0,-5);

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
      
      function onMouseMove( event ) 
    {
	// the following line would stop any other event handler from firing
	// (such as the mouse's TrackballControls)
	// event.preventDefault();
	
	// update the mouse variable
	mouse.x = ( event.clientX / window.innerWidth ) * 2 - 1;
	mouse.y = - ( event.clientY / window.innerHeight ) * 2 + 1;
    }

      function changePhoto(){
          /* update the mouse variable
	mouse.x = ( event.clientX / window.innerWidth ) * 2 - 1;
	mouse.y = - ( event.clientY / window.innerHeight ) * 2 + 1;
        */
	
	// find intersections

	// create a Ray with origin at the mouse position
	//   and direction into the scene (camera direction)
	
	
	
        
        for (var i=0; i<targetList.length; i++){
            console.log(targetList[i].valueOf());
            
        }
	// if there is one (or more) intersections
	if ( intersects.length > 0 )
	{
		console.log("Hit @ " + intersects[0].object.name );
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
                switch (intersects[0].object.name){
                    case 'goHall1':
                        sphere.material = new THREE.MeshBasicMaterial({
				map: THREE.ImageUtils.loadTexture('Foto/Appartamento2/Hall1.jpg')
			});
                        //TODO wrappare le operazioni di aggiunta e rimozione in un ciclo for una volta fatti i vettori per ogni stanza
                        if (!Hall1visited) Hall1visited=true;
                        if (Hall2visited) Hall2visited=false;
                        scene.remove(goHall1);
                        targetList.pop(goHall1);
                        recRem(goHall1);
                        scene.remove(goHall2);
                        targetList.pop(goHall2);
                        recRem(goHall2);
                        goKitchen.position.set(-12,0,0);
                        scene.add(goKitchen);
                        add_toRec(goKitchen);
                        targetList.push(goKitchen);
                        scene.add(goLiving);
                        add_toRec(goLiving);
                        targetList.push(goLiving);
                        console.log(targetList[0].name);
                        break;
                    case 'goKitchen':
                        sphere.material = new THREE.MeshBasicMaterial({
				map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Kitchen.jpg')
			});
                        scene.remove(goKitchen);
                        targetList.pop(goKitchen);
                        recRem(goKitchen);
                        goHall1.position.set(12,0,0);
                        goHall1.rotation.set(0,0,0.75);
                        scene.add(goHall1);
                        add_toRec(goHall1);
                        targetList.push(goHall1);
                        console.log(targetList[0].name);
                        break;
                    case 'goLiving':
                        sphere.material = new THREE.MeshBasicMaterial({
				map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Living.jpg')
			});
                        if(Hall2visited){
                            scene.remove(goBedroom1);
                            targetList.pop(goBedroom1);
                            recRem(goBedroom1);
                            scene.remove(goBedroom2);
                            targetList.pop(goBedroom2);
                            recRem(goBedroom2);
                            scene.remove(goBathroom2);
                            targetList.pop(goBathroom2);
                            recRem(goBathroom2);
                        }
                        if(Hall1visited){
                            scene.remove(goKitchen);
                            targetList.pop(goKitchen);
                            recRem(goKitchen);
                        }
                        scene.remove(goLiving);
                        targetList.pop(goLiving);
                        recRem(goLiving);
                        goHall1.position.set(-12,0,0);
                        goHall1.rotation.set(0,0,2.5);
                        scene.add(goHall1);
                        add_toRec(goHall1);
                        targetList.push(goHall1);
                        goHall2.position.set(-5,0,12);
                        goHall2.rotation.set(0,-1.5,0.75);
                        scene.add(goHall2);
                        add_toRec(goHall2);
                        targetList.push(goHall2);
                        console.log(targetList[0].name);
                        break;
                    case 'goHall2':
                    sphere.material = new THREE.MeshBasicMaterial({
				map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Hall2.jpg')
			});
                        if (!Hall2visited) Hall2visited=true;
                        if (Hall1visited) Hall1visited=false;
                        scene.remove(goHall2);
                        targetList.pop(goHall2);
                        recRem(goHall2);
                        if(Bedroom1visited){
                            scene.remove(goBathroom3);
                            targetList.pop(goBathroom3);
                            recRem(goBathroom3);
                        }
                        if(Bathroom2visited){
                            scene.remove(goBathroom1);
                            targetList.pop(goBathroom1);
                            recRem(goBathroom1);
                            Bathroom2visited=false;
                        }
                        scene.remove(goHall1);
                        targetList.pop(goHall1);
                        recRem(goHall1);
                        goLiving.position.set(12,0,0);
                        goLiving.rotation.set(0,0,0.75);
                        scene.add(goLiving);
                        add_toRec(goLiving);
                        targetList.push(goLiving);
                        goBedroom1.position.set(0,0,-12);
                        goBedroom1.rotation.set(0,-1.5,2.5);
                        scene.add(goBedroom1);
                        add_toRec(goBedroom1);
                        targetList.push(goBedroom1);
                        goBedroom2.position.set(1,0,12);
                        goBedroom2.rotation.set(0,-1.5,0.75);
                        scene.add(goBedroom2);
                        add_toRec(goBedroom2);
                        targetList.push(goBedroom2);
                        goBathroom2.position.set(-12,0,0);
                        goBathroom2.rotation.set(0,0,2.5);
                        scene.add(goBathroom2);
                        add_toRec(goBathroom2);
                        targetList.push(goBathroom2);
                        console.log(targetList[0].name);
                        break;
                    case 'goBedroom':
                        sphere.material = new THREE.MeshBasicMaterial({
				map: THREE.ImageUtils.loadTexture('Foto/Appartamento2/Bedroom.jpg')
			});
                        Bedroom1visited=true;
             
                        scene.remove(goBedroom);
                        targetList.pop(goBedroom);
                        recRem(goBedroom);
                        scene.remove(goHall2);
                        targetList.pop(goHall2);
                        recRem(goHall2);
                        
                        goHall1.position.set(5,0,-12);
                        goHall1.rotation.set(0,1.2,0.75);
                        scene.add(goHall1);
                        add_toRec(goHall1);
                        targetList.push(goHall1);
                        
                        console.log(targetList[0].name);
                        break;
                    case 'goBedroom2':
                        sphere.material = new THREE.MeshBasicMaterial({
				map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Bedroom2.jpg')
			});
                        scene.remove(goLiving);
                        targetList.pop(goLiving);
                        recRem(goLiving);
                        scene.remove(goBedroom2);
                        targetList.pop(goBedroom2);
                        recRem(goBedroom2);
                        scene.remove(goBedroom1);
                        targetList.pop(goBedroom1);
                        recRem(goBedroom1);
                        scene.remove(goBathroom2);
                        targetList.pop(goBathroom2);
                        recRem(goBathroom2);
                        goHall2.position.set(-3,0,-12);
                        goHall2.rotation.set(0,1.5,0.75);
                        scene.add(goHall2);
                        add_toRec(goHall2);
                        targetList.push(goHall2);
                        console.log(targetList[0].name);
                        break;
                    case 'goBathroom2':
                        sphere.material = new THREE.MeshBasicMaterial({
				map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Bathroom2.jpg')
			});
                        Bathroom2visited=true;
                        scene.remove(goBathroom2);
                        targetList.pop(goBathroom2);
                        recRem(goBathroom2);
                        if(Hall2visited){
                            scene.remove(goLiving);
                            targetList.pop(goLiving);
                            recRem(goLiving);
                            scene.remove(goBedroom2);
                            targetList.pop(goBedroom2);
                            recRem(goBedroom2);
                            scene.remove(goBedroom1);
                            targetList.pop(goBedroom1);
                            recRem(goBedroom1);
                            Hall2visited=false;
                        }
                        goHall2.position.set(12,0,0);
                        goHall2.rotation.set(0,0,0.75);
                        scene.add(goHall2);
                        add_toRec(goHall2);
                        targetList.push(goHall2);
                        goBathroom1.position.set(2,0,12);
                        goBathroom1.rotation.set(0,-1.5,0.75);
                        scene.add(goBathroom1);
                        add_toRec(goBathroom1);
                        targetList.push(goBathroom1);
                        console.log(targetList[0].name);
                        break;
                    case 'goBathroom':
                        sphere.material = new THREE.MeshBasicMaterial({
				map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Bathroom.jpg')
			});
                        scene.remove(goBathroom1);
                        targetList.pop(goBathroom1);
                        recRem(goBathroom1);
                        scene.remove(goHall2);
                        targetList.pop(goHall2);
                        recRem(goHall2);
                        goBathroom2.position.set(12,0,0);
                        goBathroom2.rotation.set(0,0,0.75);
                        scene.add(goBathroom2);
                        add_toRec(goBathroom2);
                        targetList.push(goBathroom2);
                        console.log(targetList[0].name);
                        break;
                    case 'goBathroom3':
                        sphere.material = new THREE.MeshBasicMaterial({
				map: THREE.ImageUtils.loadTexture('Foto/Appartamento1/Bathroom3.jpg')
			});
                        scene.remove(goBathroom3);
                        targetList.pop(goBathroom3);
                        recRem(goBathroom3);
                        scene.remove(goHall2);
                        targetList.pop(goHall2);
                        recRem(goHall2);
                        goBedroom1.position.set(12,0,0);
                        goBedroom1.rotation.set(0,0,0.75);
                        scene.add(goBedroom1);
                        add_toRec(goBedroom1);
                        targetList.push(goBedroom1);
                        console.log(targetList[0].name);
                        break;
                    default:;
                    
                }
            }
        }

      


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

      var geometry = new THREE.CubeGeometry(2, 0, 2);

      var goHall1 = new THREE.Mesh(geometry, material);
      var goHall2 = new THREE.Mesh(geometry, material);
      var goKitchen = new THREE.Mesh(geometry, material);
      var goLiving = new THREE.Mesh(geometry, material);
      var goBedroom = new THREE.Mesh(geometry, material);
      
      var goBathroom = new THREE.Mesh(geometry, material);
      
      
      //TODO Creare vettori per ogni stanza che contengono i pulsanti di navigazione
      
      goHall1.name="goHall1";             
      goKitchen.name='goKitchen';
      
      goHall2.position.set(-2.2,0,12);
      goHall2.rotation.set(0,1.5,2.50);
      goHall2.name="goHall2";
      add_toRec(goHall2);
      
      
      goBedroom.position.set(-12,0,1.2);
      goBedroom.rotation.set(0,0,2.50);
      goBedroom.name='goBedroom';
      add_toRec(goBedroom);
      
      
      
      goBathroom.name='goBathroom';
      
      
      
      
      
      
      
      var sphere = new THREE.Mesh(
			new THREE.SphereGeometry(100, 100, 100),
			new THREE.MeshBasicMaterial({
				map: THREE.ImageUtils.loadTexture('Foto/Appartamento2/Hall1.jpg')
			})
		);
		sphere.scale.x = -1;
                scene.add(sphere);
                
                scene.add(goHall2);
                targetList.push(goHall2);
                scene.add(goBedroom);
                targetList.push(goBedroom);
                window.addEventListener('mousedown', changePhoto, false);
                function add_toRec(object){
                    Reticulum.add( object, {
                        clickCancelFuse: true, // Overrides global setting for fuse's clickCancelFuse
                        reticleHoverColor: 0x00fff6, // Overrides global reticle hover color
                        fuseVisible: true, // Overrides global fuse visibility
                        fuseDuration: 1.5, // Overrides global fuse duration
                        fuseColor: 0xcc0000, // Overrides global fuse color
                        onGazeOver: function(){
                            // do something when user targets object
                            this.material.emissive.setHex( 0xffcc00 );
                        },
                        onGazeOut: function(){
                            // do something when user moves reticle off targeted object
                            this.material.emissive.setHex( 0xcc0000 );
                        },
                        onGazeLong: function(){
                            // do something user targetes object for specific time
                            this.material.emissive.setHex( 0x0000cc );
                            changePhoto();
                        },
                        onGazeClick: function(){
                            // have the object react when user clicks / taps on targeted object
                            this.material.emissive.setHex( 0x0000cc );
                        }
                    });
                }
                function recRem(object){ Reticulum.remove(object); }
                
                console.log(targetList[0].name);
                console.log(toString.isMobile);
                
        
      
      document.addEventListener( 'mousemove', onMouseMove, false );
      window.addEventListener('resize', resize, false);
      setTimeout(resize, 1);
    }
    
    function resize() {
      var width = container.offsetWidth;
      var height = container.offsetHeight;

      camera.aspect = width / height;
      camera.updateProjectionMatrix();

      
      if (isMobile) effect.setSize(width, height);
      else renderer.setSize(width, height);
    }

    function update(dt) {
      resize();

      camera.updateProjectionMatrix();
      if (isMobile) Reticulum.update();
      controls.update(dt);
    }

    function render(dt) {
        raycaster.setFromCamera(mouse, camera);

	// create an array containing all objects in the scene with which the ray intersects
	intersects = raycaster.intersectObjects( targetList );
      if(isMobile) effect.render(scene, camera);
      else renderer.render(scene, camera);
      
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