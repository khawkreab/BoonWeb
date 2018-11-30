function loadingpage(e) {
    if (location.search == e) {
	var timeLeft = 1;
	var timerId = setInterval(countdown, 200);
	$('body').css("overflow", "hidden")
	function countdown() {
	    if (timeLeft == -1) {
		clearTimeout(timerId);
		$('#loadpage').css("display", "none")
		$('body').css("overflow-y", "auto")
	    } else {
		timeLeft--;
	    }
	}
    } else {
	$('#loadpage').css("display", "none")
    }
}