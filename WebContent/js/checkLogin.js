window.onload = function checkedLogin() {
var checkLogin = sessionStorage.getItem("login");
if(checkLogin == null){
	
		alert("please login");
		window.location ="index.jsp?login=failed";
	}
}