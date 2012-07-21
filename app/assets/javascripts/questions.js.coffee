jQuery ->
  $('#question_city_id').parent().hide()
  cities = $('#question_city_id').html()
  $('#question_state_id').change ->
    state = $('#question_state_id :selected').text()
    escaped_state = state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(cities).filter("optgroup[label='#{escaped_state}']").html()
    if options
      $('#question_city_id').html(options)
      $('#question_city_id').parent().show()
    else
      $('#question_city_id').empty()
      $('#question_city_id').parent().hide()