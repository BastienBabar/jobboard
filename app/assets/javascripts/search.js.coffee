# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require_tree .

$ ->
  $("#search_form").on("ajax:success", (e, data, status, xhr) ->
    $('#result').html(data)
    console.log data
  ).on "ajax:error", (e, xhr, status, error) ->
    console.log error
