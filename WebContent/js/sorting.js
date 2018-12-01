filterSelection("all")
function filterSelection(c) {
    var x, i;
    x = document.getElementsByClassName("filter-column");
    if (c == "all") {
	c = "";
	$('#noitem').css("display", "none")
    }
    for (i = 0; i < x.length; i++) {
	filterRemoveClass(x[i], "filter-show");
	if (x[i].className.indexOf(c) == -1) {
	    var countindexOfc = 0;
	    if (countindexOfc == i) {
		$('#noitem').css("display", "flex")
		$('#sorting').css("display", "none")
	    }
	    countindexOfc++
	}
	if (x[i].className.indexOf(c) > -1) {
	    filterAddClass(x[i], "filter-show");
	    $('#noitem').css("display", "none")
	    $('#sorting').css("display", "flex")
	}
    }
}

function filterAddClass(element, name) {
    var i, arr1, arr2;
    arr1 = element.className.split(" ");
    arr2 = name.split(" ");
    for (i = 0; i < arr2.length; i++) {
	if (arr1.indexOf(arr2[i]) == -1) {
	    element.className += " " + arr2[i];
	}
    }
}

function filterRemoveClass(element, name) {
    var i, arr1, arr2;
    arr1 = element.className.split(" ");
    arr2 = name.split(" ");
    for (i = 0; i < arr2.length; i++) {
	while (arr1.indexOf(arr2[i]) > -1) {
	    arr1.splice(arr1.indexOf(arr2[i]), 1);
	}
    }
    element.className = arr1.join(" ");
}

// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("filterBtnContainer");
var btns = btnContainer.getElementsByClassName("filter-btn");
for (var i = 0; i < btns.length; i++) {
    btns[i].addEventListener("click", function() {
	var current = document.getElementsByClassName("active");
	current[0].className = current[0].className.replace(" active", "");
	this.className += " active";
    });
}