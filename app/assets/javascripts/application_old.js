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
      getCitiesByState("id="+$("#question_state_id").val());
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

  $.getJSON("/cidades", id, function(j) {
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
