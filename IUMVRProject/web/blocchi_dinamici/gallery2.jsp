<%-- 
    Document   : gallery
    Created on : 20-gen-2017, 11.40.40
    Author     : Mattia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="galleryBackground">
    <ul>
        <li>
            <a href="#" onclick="changePhoto('goBathroom');"> 
                <img src="Foto/Appartamento2/Bathroom.jpg" alt="Bathroom" width="200" height="150">
            </a>
        </li>
        <li>
            <img src="Foto/Appartamento2/Bedroom.jpg" alt="Bedroom" width="200" height="150"
                 onclick="changePhoto('goBedroom');">
        </li>
        <li>
            <img src="Foto/Appartamento2/Hall1.jpg" alt="Hall1" width="200" height="150"
                 onclick="changePhoto('goHall1FH2');">
        </li>
        <li>
            <img src="Foto/Appartamento2/Hall2.jpg" alt="Hall2" width="200" height="150"
                 onclick="changePhoto('goHall2FH1');">
        </li>
        <li>
            <img src="Foto/Appartamento2/Kitchen.jpg" alt="Kitchen" width="200" height="150"
                 onclick="changePhoto('goKitchen');" style="cursor: url(img/Spanino.png), pointer">
        </li>
    </ul>
</div>
