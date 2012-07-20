jQuery ->
  $('#question_city_name').autocomplete
    source: $('#question_city_name').data('autocomplete-source')