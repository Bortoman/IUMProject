/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function filtra() {
    var x = document.getElementById("test").value; 
    console.log(x);
    if (x > 150000){
        document.getElementById("on_off_480table").style.visibility = 'hidden';
    }
}