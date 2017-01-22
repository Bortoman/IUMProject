/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function filtra() {
    var x = document.getElementById("sliderprezzo").value; 
    x = $("#SliderPrezzo").slider("value");
    if (x > 150000){
        document.getElementById("on_off_480table").style.visibility = 'hidden';
    }
}

function filt(s){
    var x = document.getElementById("pop").value;


    
    switch(x){
        case 'popularity':
            $('#on_off_480table2').each(function () {
            if (!$(this).text().match(/^\s*$/)) {
                $(this).insertBefore($(this).prev('#on_off_480table'));
            }
            });
            break;
        
        case 'alfabetic+':
            $('#on_off_480table').each(function () {
            if (!$(this).text().match(/^\s*$/)) {
                $(this).insertBefore($(this).prev('#on_off_480table2'));
            }
            });
            break;
         
        case 'alfabetic-':
            $('#on_off_480table2').each(function () {
            if (!$(this).text().match(/^\s*$/)) {
                $(this).insertBefore($(this).prev('#on_off_480table'));
            }
            });
            break;
            
        case 'price+':
            $('#on_off_480table').each(function () {
            if (!$(this).text().match(/^\s*$/)) {
                $(this).insertBefore($(this).prev('#on_off_480table2'));
            }
            });
            break;
            
        case 'price-':
            $('#on_off_480table2').each(function () {
            if (!$(this).text().match(/^\s*$/)) {
                $(this).insertBefore($(this).prev('#on_off_480table'));
            }
            });
            break;
            
        case 'footage+':
            $('#on_off_480table').each(function () {
            if (!$(this).text().match(/^\s*$/)) {
                $(this).insertBefore($(this).prev('#on_off_480table2'));
            }
            });
            break;
            
        case 'footage-':
            $('#on_off_480table2').each(function () {
            if (!$(this).text().match(/^\s*$/)) {
                $(this).insertBefore($(this).prev('#on_off_480table'));
            }
            });
            break;
    }

}