/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
  function initialize() {
	  
    var myLatLng = new google.maps.LatLng(39.222500, 9.114032);
    var myLatLng1 = new google.maps.LatLng(39.220321, 9.103521);
    
    var myOptions = {
	zoom: 14,
        center: myLatLng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
	
    var map = new google.maps.Map(document.getElementById("gmaps-canvas"), myOptions);
    
    var marker = new google.maps.Marker({
        position: myLatLng, 
        map: map,
        title:"Mi trovo a Cagliari, nei pressi di Via Ospedale 72",
        url: 'stereo.jsp'
    });
    
    var marker1 = new google.maps.Marker({
        position: myLatLng1, 
        map: map,
        //title:"Mi trovo a Cagliari, nei pressi di Via Trieste 1",
        url: 'CasaMia.jsp'
    });
	
    var contentString = '<em>Sono qui!</em>';
    var infoWindow = new google.maps.InfoWindow({
        content: contentString
    });
	
    /*google.maps.event.addListener(marker, 'click', function() {
        infoWindow.open(map,marker);
    });*/
    
    // marker ospedale
    
    google.maps.event.addListener(marker, 'mouseover', function(event) {
          var img = { url: 'Foto/Appartamento1/Appartamentofinal1.png', size: new google.maps.Size(120,110) };
          this.setIcon(img);
      });
     google.maps.event.addListener(marker, 'mouseout', function(event) {
          this.setIcon();
     });
      
     google.maps.event.addListener(marker, 'click', function() {
          window.location.href = this.url;
        });
        
    // marker trieste
    google.maps.event.addListener(marker1, 'mouseover', function(event) {
          var img = { url: 'Foto/Appartamento2/Appartamentofinal2.png', size: new google.maps.Size(120,110) };
          this.setIcon(img);
      });
      google.maps.event.addListener(marker1, 'mouseout', function(event) {
          this.setIcon();
      });
      
       google.maps.event.addListener(marker1, 'click', function() {
            window.location.href = this.url;
        });
    
    
  }

