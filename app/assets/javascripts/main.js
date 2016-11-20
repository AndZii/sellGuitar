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