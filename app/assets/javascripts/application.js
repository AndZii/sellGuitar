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
//= require bootstrap-sprockets
//= require owl.carousel
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {
          $("#message-interupter").hide();
    $("#message-dialog-wrapper").hide();
    $("#location-wrapper").hide();
    $('#btn-send-message').click(function(){
        $("#message-interupter").fadeIn(500);
        $("#message-dialog-wrapper").fadeIn(500);
    });
    $("#message-interupter").click(function(){
        $("#message-interupter").fadeOut(500);
        $("#message-dialog-wrapper").fadeOut(500); 
        $('#location-wrapper').fadeOut(500);
    });
    
    $('#btn-close-contacts').click(function(){
       $('#location-wrapper').fadeOut(500);
       $("#message-interupter").fadeOut(500);
    });
    
    $('#contacts-btn, #contacts-toolbar-item').click(function(){
        $("#message-interupter").fadeIn(500);
        $("#location-wrapper").fadeIn(500);
    });
})

$(document).on('page:change', function() {

});

$(function(){
    $("#message-interupter").hide();
    $("#message-dialog-wrapper").hide();
    $("#location-wrapper").hide();
    $('#btn-send-message').click(function(){
        $("#message-interupter").fadeIn(500);
        $("#message-dialog-wrapper").fadeIn(500);
    });
    $("#message-interupter").click(function(){
        $("#message-interupter").fadeOut(500);
        $("#message-dialog-wrapper").fadeOut(500); 
        $('#location-wrapper').fadeOut(500);
    });
    
    $('#btn-close-contacts').click(function(){
       $('#location-wrapper').fadeOut(500);
       $("#message-interupter").fadeOut(500);
    });
    
    $('#contacts-btn, #contacts-toolbar-item').click(function(){
        $("#message-interupter").fadeIn(500);
        $("#location-wrapper").fadeIn(500);
    });
    
});