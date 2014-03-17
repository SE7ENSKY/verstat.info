$ ->
	$header = $(".header")
	hideFrom = 420
	updateHeaderHiddenState = ->
		$header.toggleClass "hidden", $(window).scrollTop() < hideFrom
	$(window).scroll updateHeaderHiddenState
	updateHeaderHiddenState()