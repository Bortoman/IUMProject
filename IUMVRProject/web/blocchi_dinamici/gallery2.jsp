<%-- 
    Document   : gallery
    Created on : 20-gen-2017, 11.40.40
    Author     : Mattia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="galleryBackground">
    <ul>
        <li>
            <div style="height: 165px;">
                <img src="Foto/Appartamento2/Bathroom.jpg" alt="Bathroom" width="200" height="150"
                     onclick="changePhoto('goBathroom');">
                <p class="infoRoom">Bathroom</p>
            </div>
            
        </li>
        <li>
            <div style="height: 165px;">
            <img src="Foto/Appartamento2/Bedroom.jpg" alt="Bedroom" width="200" height="150"
                 onclick="changePhoto('goBedroom');">
            <p class="infoRoom">Bedroom</p>
            </div>
        </li>
        <li>
            <div style="height: 165px;">
            <img src="Foto/Appartamento2/Hall1.jpg" alt="Hall1" width="200" height="150"
                 onclick="changePhoto('goHall1FH2');">
            <p class="infoRoom">Hall 1</p>
            </div>
        </li>
        <li>
            <div style="height: 165px;">
            <img src="Foto/Appartamento2/Hall2.jpg" alt="Hall2" width="200" height="150"
                 onclick="changePhoto('goHall2FH1');">
            <p class="infoRoom">Hall 2</p>
            </div>
        </li>
        <li>
            <div style="height: 165px;">
            <img src="Foto/Appartamento2/Kitchen.jpg" alt="Kitchen" width="200" height="150"
                 onclick="changePhoto('goKitchen');" style="cursor: url(img/Spanino.png), pointer">
            <p class="infoRoom">Kitchen1</p>
            </div>
        </li>
    </ul>
</div>
