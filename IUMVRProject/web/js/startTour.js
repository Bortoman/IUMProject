/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
startTour = function(){
    
    var tourWindow = document.getElementById('example');
    var start = document.getElementById("startTourIMG");
    tourWindow.style.position='absolute';
    tourWindow.style.top='0';
    tourWindow.style.bottom='0';
    tourWindow.style.left='0';
    tourWindow.style.right='0';
    tourWindow.style.opacity='1';
    start.style.display='none';
    
};
startTourPhoto = function(){
    var tourImg = document.getElementById('immagineStart');
    tourImg.src="img/start.png";
};
ripristinaPhoto = function(){
    var tourImg = document.getElementById('immagineStart');
    tourImg.src="img/logo.png";
};

