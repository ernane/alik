jQuery ->
  $('#user_city_id').parent().hide()
  cities = $('#user_city_id').html()
  $('#user_state_id').change ->
    state = $('#user_state_id :selected').text()
    escaped_state = state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(cities).filter("optgroup[label='#{escaped_state}']").html()
    if options
      $('#user_city_id').html(options)
      $('#user_city_id').parent().show()
    else
      $('#user_city_id').empty()
      $('#user_city_id').parent().hide()