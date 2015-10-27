// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets
//= require jquery.turbolinks
//
// var counter = 0;
//
//
//   if($("#pepeGuide").click) {
//     counter += 1;
//   }
//
//   if(counter == 5) {
//     $('#pepeGuide').hide();
//   }


$(function() {
  $(".score1").hide();
  $(".score2").hide();

  $(".imagesShow").click(function(event) {
    $("#black1").toggleClass('opaque');
    $("#black2").toggleClass('opaque');
    $(".score1").fadeIn();
    $(".score2").fadeIn();
    $(this).removeClass('imagesShow').addClass('not-clickable');
  });



blinkFont();
});

function blinkFont()
{
document.getElementById("blink").style.color="red"
document.getElementById("blink").style.background="#232928"
setTimeout("setblinkFont()",500)
}

function setblinkFont()
{
document.getElementById("blink").style.color="#232928"
// document.getElementById("blink").style.background="red"
setTimeout("blinkFont()",500)
}
