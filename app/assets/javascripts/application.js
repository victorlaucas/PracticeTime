// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery3
//= require jquery_ujs
//= require turbolinks
//= require materialize-sprockets
//= require materialize/extras/nouislider
//= require_tree .


$(document).ready(function(){
  // Init Carousel
  $('.carousel').carousel();

  // Init Carousel Slider
  $('.carousel.carousel-slider').carousel({fullWidth:true});

  // Fire off toast
  //Materialize.toast('Hello World', 3000);

  // Init Slider
  $('.slider').slider();

  // Init Modal
  $('.modal').modal();

  // Init Sidenav
  $('.button-collapse').sideNav();
});