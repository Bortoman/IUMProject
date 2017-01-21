<%-- 
    Document   : gallery
    Created on : 20-gen-2017, 11.40.40
    Author     : Mattia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="galleryBackground" style="position: absolute; right: 0px; height: 100%; width: 100%; background-color: white">
    <ul style="list-style: none; padding-left: 5px; background-color: white; cursor:pointer">
        <li>
            <img src="Foto/Appartamento1/Bathroom1.jpg" alt="Bathroom1" width="200" height="150"
                 onclick="changePhoto('goBathroom1');">
        </li>
        <li>
            <img src="Foto/Appartamento1/Bathroom2.jpg" alt="Bathroom2" width="200" height="150"
                 onclick="changePhoto('goBathroom2');">
        </li>
        <li>
            <img src="Foto/Appartamento1/Bathroom3.jpg" alt="Bathroom3" width="200" height="150"
                 onclick="changePhoto('goBathroom3');">
        </li>
        <li>
            <img src="Foto/Appartamento1/Bedroom1.jpg" alt="Bedroom1" width="200" height="150"
                 onclick="changePhoto('goBedroom1');">
        </li>
        <li>
            <img src="Foto/Appartamento1/Bedroom2.jpg" alt="Bedroom2" width="200" height="150"
                 onclick="changePhoto('goBedroom2');">
        </li>
        <li>
            <img src="Foto/Appartamento1/Hall1.jpg" alt="Hall1" width="200" height="150"
                 onclick="changePhoto('goHall1');">
        </li>
        <li>
            <img src="Foto/Appartamento1/Hall2.jpg" alt="Hall2" width="200" height="150"
                 onclick="changePhoto('goHall2');">
        </li>
        <li>
            <img src="Foto/Appartamento1/Kitchen.jpg" alt="Kitchen" width="200" height="150"
                 onclick="changePhoto('goKitchen');">
        </li>
        <li>
            <img src="Foto/Appartamento1/Living.jpg" alt="Living" width="200" height="150"
                 onclick="changePhoto('goLiving');" style="cursor: url(img/Spanino.png), pointer">
        </li>
    </ul>
</div>
