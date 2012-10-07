// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.autocomplete
//= require jquery.ui.accordion
//= require foundation
//= require jquery.maskedinput
//= require questions

jQuery(function($){
   $("#question_requester_phone").mask("(99) 9999-9999");
   $("#user_phone").mask("(99) 9999-9999");
});
$(document).ready(function(){
  $('#question_city_id').parent().hide()
  $('#user_city_id').parent().hide()
  
  $( "#accordion" ).accordion();
  setTimeout(hideFlashes, 7000);
  
  $("#question_state_id").change(function() {
    $("#question_city_id").html('<option value="0">Carregando...</option>');
    
    if ($(this).val()) {
      getCitiesByState("id="+$("#user_state_id").val());
    }else{
      
      $('#question_city_id').empty()
      $('#question_city_id').parent().hide()
    }
  });
  
  $("#user_state_id").change(function() {
    $("#user_city_id").html('<option value="0">Carregando...</option>');
    
    if ($(this).val()) {
      getCitiesByState("id="+$("#user_state_id").val());
    }else{
      $('#user_city_id').empty()
      $('#user_city_id').parent().hide()
    }
  });
});

var hideFlashes = function() {
  $('#flash_notice, #flash_alert, #flash_error').fadeOut(3000);
}

function getCitiesByState(id) {
  
  $.getJSON("/cities_by_state", id, function(j) {
    var options = '<option value="">Selecione a cidade</option>';
    $.each(j.cty, function(i, item) {
      options += '<option value="' + item.id + '">' + item.n + '</option>';
    });
    
    if (options){
      $("#question_city_id").html(options);
      $("#user_city_id").html(options);
      
      $('#question_city_id').parent().show()
      $('#user_city_id').parent().show()
    };
  });
}
