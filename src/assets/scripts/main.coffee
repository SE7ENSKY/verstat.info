$ ->
	if window.devicePixelRatio is 2
		$('img').each ->
			$(@).attr 'src', $(@).attr('src').replace ///\.(png|jpg|gif)+$///i, '@2x.$1'