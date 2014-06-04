$ ->
  $('.button.accepted').on 'click', ->
    $('.message').removeClass('hide')
    $('#adults').focus()
