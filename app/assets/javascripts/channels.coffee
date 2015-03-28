# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("#new_message").bind "ajax:complete", (event,xhr,status) ->
    $('#message_text').val('')
    console.log status
