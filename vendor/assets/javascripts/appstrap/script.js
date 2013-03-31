/********************************************************
 *
 * Custom Javascript code for Enkel Bootstrap theme
 * Written by Themelize.me (http://themelize.me)
 *
 *******************************************************/
$(document).ready(function() {
  var defaultColour = 'green';

  $('#question_city_id').parent().hide()
  $('#user_city_id').parent().hide()
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

  //Bootstrap tooltip
  // invoke by adding _tooltip to a tags (this makes it validate)
  $('body').tooltip({
    selector: "a[class*=_tooltip]"
  });

  //Bootstrap popover
  // invoke by adding _popover to a tags (this makes it validate)
  $('body').popover({
    selector: "a[class*=_popover]",
    trigger: "hover"
  });

  //show hide elements
  $('.show-hide').each(function() {
    $(this).click(function() {
      var state = 'open'; //assume target is closed & needs opening
      var target = $(this).attr('data-target');
      var targetState = $(this).attr('data-target-state');

      //allows trigger link to say target is open & should be closed
      if (typeof targetState !== 'undefined' && targetState !== false) {
        state = targetState;
      }

      if (state == 'undefined') {
        state = 'open';
      }

      $(target).toggleClass('show-hide-'+ state);
      $(this).toggleClass(state);
    });
  });

  //colour switch
  $('.colour-switcher a').click(function() {
    var c = $(this).attr('href').replace('#','');
    $('.colour-switcher a').removeClass('active');
    $('.colour-switcher a.'+ c).addClass('active');

    if (c != defaultColour) {
      $('#colour-scheme').attr('href','css/colour-'+ c +'.css');
    }
    else {
      $('#colour-scheme').attr('href', '#');
    }
  });

  //flexslider
  $('.flexslider').each(function() {
    var sliderSettings =  {
      animation: $(this).attr('data-transition'),
      selector: ".slides > .slide",
      controlNav: true,
      smoothHeight: true
    };

    var sliderNav = $(this).attr('data-slidernav');
    if (sliderNav != 'auto') {
      sliderSettings = $.extend({}, sliderSettings, {
        manualControls: sliderNav +' li a',
        controlsContainer: '.flexslider-wrapper'
      });
    }

    $(this).flexslider(sliderSettings);
  });

  //jQuery Quicksand plugin
  //@based on: http://www.evoluted.net/thinktank/web-development/jquery-quicksand-tutorial-filtering
  var $filters = $('#quicksand-categories');
  var $filterType = $filters.find('li.active a').attr('class');
  var $holder = $('ul#quicksand');
  var $data = $holder.clone();

  // react to filters being used
  $filters.find('li a').click(function(e) {
    $filters.find('li').removeClass('active');
    var $filterType = $(this).attr('class');
    $(this).parent().addClass('active');
    if ($filterType == 'all') {
      var $filteredData = $data.find('li');
    }
    else {
      var $filteredData = $data.find('li[data-type=' + $filterType + ']');
    }

    // call quicksand and assign transition parameters
    $holder.quicksand($filteredData, {
      duration: 800,
    });
    e.preventDefault();
  });

});

var hideFlashes = function() {
  $('.alert').fadeOut(3000);
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
