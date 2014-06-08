$ ->
  $('.button.accepted').on 'click', ->
    $('.message').removeClass('hide')
    $('#adults').focus()
  if(window.location.hash)
      hash = window.location.hash.substring(1)
      if(hash == 'accept')
          $('.message').removeClass('hide')
