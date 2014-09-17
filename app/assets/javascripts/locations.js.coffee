# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->
  $("#state").change ->
    state_id = $('#user_location_id').val()
    $.ajax
      url: '/locations/' + state_id + '/get_cities'
      dataType: 'html'
      success: (result) ->
        $("#city").html result
        return

  $("#city").change ->
    city_id = $('#user_city_id').val()
    $.ajax
      url: '/locations/' + city_id + '/get_areas'
      dataType: 'html'
      success: (result) ->
        $("#area").html result
        return
