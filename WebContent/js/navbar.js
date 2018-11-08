function resizeNav() {
    // Set the nav height to fill the window
    $("#nav-custom-fullscreen").css({"height": window.innerHeight});

    // Set the circle radius to the length of the window diagonal,
    // this way we're only making the circle as big as it needs to be.
    var radius = Math.sqrt(Math.pow(window.innerHeight, 2) + Math.pow(window.innerWidth, 2));
    var diameter = radius * 2;
    $("#nav-custom-overlay").width(diameter);
    $("#nav-custom-overlay").height(diameter);
    $("#nav-custom-overlay").css({"margin-top": -radius, "margin-left": -radius});
}


      