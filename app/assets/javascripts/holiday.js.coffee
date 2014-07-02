# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# $(document).on "focus", "[data-behaviour~='datepicker']", (e) ->
#  - $(this).datepicker
#  - format: "dd-mm-yyyy"
#  - weekStart: 1
#  - autoclose: true

$.fn.extend {
integrateDatepicker: (selector)->
	selector = selector || '.datepicker'
	$(@).find(selector).datepicker()
}

$(document).ready () ->
	$('body').integrateDatepicker();
	$('#modal').integrateDatepicker();

$(document).on "focus", "[data-behaviour~='datepicker']", (e) ->
 - $(this).datepicker
 - format: "dd-mm-yyyy"
 - weekStart: 1
 - autoclose: true
