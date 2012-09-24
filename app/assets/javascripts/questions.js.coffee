jQuery ->
  $('#question_state_name').autocomplete
    source: $('#question_state_name').data('autocomplete-source')
jQuery ->
  $('#question_city_name').autocomplete
    source: $('#question_city_name').data('autocomplete-source')
  