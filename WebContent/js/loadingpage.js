function loadingpage(e) {
    if (location.search == e) {
	$('#loadpage').addClass("active")
	var timeLeft = 1;
	var timerId = setInterval(countdown, 200);
	$('body').css("overflow", "hidden")
	function countdown() {
	    if (timeLeft == -1) {
		clearTimeout(timerId);
		$('#loadpage').removeClass("active")
		$('body').css("overflow-y", "auto")
	    } else {
		timeLeft--;
	    }
	}
    } else {
	$('#loadpage').removeClass("active")
    }
}