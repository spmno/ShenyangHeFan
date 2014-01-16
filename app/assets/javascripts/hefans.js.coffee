# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('.container-fiuld').masonry ->
    itemSelector: '.box'
    gutterWidth: 15
    columnWidth: 222
    isFitWidth: true