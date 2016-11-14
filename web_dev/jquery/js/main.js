// fade in all elements of page upon load
// https://devdocs.io/jquery/fadein
//1. select all elements
//2. use fadin()
// create color swatch that is revealed on click of a button, color swatch controls color theme of page
//1. create row of color divs
//2. give ids to color divs
//3. set event listeners on color divs that changes color theme of page according to which div is clicked
//4. hide the swatch
//5. display the swatch when user clicks button

$(document).ready(function(){

  $("#articles").fadeIn("slow");

  $("#swatch-control").click(function(){
    $("#swatches").slideDown("slow");
  });

  $("#first-block").click(function(){
    $("h1").css("color","#5A4E40");
    $("h2").css("color","#5A4E40");
    $("body").css("background-color","#F0D0C0");
  });

  $("#second-block").click(function(){
    $("h1").css("color","#36175E");
    $("h2").css("color","#36175E");
    $("body").css("background-color","#9768D1");
  });

  $("#third-block").click(function(){
    $("h1").css("color","#FFBE00");
    $("h2").css("color","#FFBE00");
    $("body").css("background-color","#FFDE20");
  });

});


