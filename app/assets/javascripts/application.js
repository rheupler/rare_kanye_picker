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
// });

// $(function() {
  $(".imagesShow").click(function(event) {
    $("#black1").fadeOut();
    $("#black2").fadeOut();
    $(".score1").fadeIn();
    $(".score2").fadeIn();
    $(this).removeClass('imagesShow').addClass('not-clickable');
  });
// });

// $(document).ready(function() {
    var f = document.getElementById('rare');
    setInterval(function() {
        if($('#rare').length > 0)
        f.style.display = (f.style.display == 'none' ? '' : 'none');
    }, 500);


});
