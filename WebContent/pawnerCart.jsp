<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="img/logos/Artboard.png">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>order</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">


</head>
<body>
	<jsp:include page="navbar.jsp" />

	<section>
		<div id="list" style="height: 435px; overflow: auto;">
			<!-- List Order Here!!!! -->
		</div>

		<button id="clearCart" class="btn btn-primary btn-block btn-lg" onClick="clearCart()">ลบทั้งหมด]</button>
		<button id="comfirmOrder" class="btn btn-primary btn-block btn-lg"
			onClick="comfirmOrder()">Confirm Orders</button>
	</section>


	<!-- cart script  -->
	<script>
		var cart = {}
		var list = []

		window.onLoad = this.check();
		function select(e) {
			console.log(e.getAttribute('data-cart'))
			cart = JSON.parse(e.getAttribute('data-cart'))
			this.list.push(this.cart)
			sessionStorage.setItem('carts', JSON.stringify(this.list))
			this.check()
		}
		function check() {
			var html
			html = "<table class='cartTable'>"
			if (sessionStorage.getItem('carts')) {
				list = JSON.parse(sessionStorage.getItem('carts'))

				document.getElementById("cartNumber").style.display = "block";
				sessionStorage.setItem('pawnercartNumber', list.length)
				document.getElementById("cartNumber").innerHTML = sessionStorage
						.getItem('pawnercartNumber')

				if (list.length == null || list.length == 0) {
					document.getElementById("cartNumber").style.display = "none";
					document.getElementById("comfirmOrder").style.display = "none";
					document.getElementById("clearCart").style.display = "none";
					
					html += "<tr>"
					html += "<td>No menus in your list orders</td>"
					html += "</tr>"
				} else {

					html += "<tr><th>Name</th><th>Price</th><th></th></tr>"
					for ( var index in this.list) {
						html += "<tr>"
						html += "<td>" + this.list[index].pawnshopPostName
								+ "</td>"
						html += "<td>" + this.list[index].pawnshopPostPrice
								+ "</td>"
						html += "<td><button onClick='deleteSelf("
								+ index
								+ ")'><i class='fas fa-trash' style='font-size:20px;color:red'></i></button></td>"
						html += "</tr>"

					}
				}
			} else {
				html += "<tr>"
				html += "<td>No menus in your list orders</td>"
				html += "</tr>"

				document.getElementById("cartNumber").style.display = "none";
				document.getElementById("comfirmOrder").style.display = "none";
				document.getElementById("clearCart").style.display = "none";
			}
			html += "</table>"
			document.getElementById("list").innerHTML = html
		}

		function deleteSelf(index) {
			this.list.splice(index, 1)
			sessionStorage.setItem('carts', JSON.stringify(this.list))
			this.check()
		}

		function clearCart() {
			console.log('clear')
			sessionStorage.removeItem('carts')
			sessionStorage.removeItem('pawnercartNumber')
			this.list = []
			this.check()
		}

		function comfirmOrder() {

			var URL = 'http://localhost:8080/BoonWeb/saveOrder.html'

			var method = 'POST'
			var cart = sessionStorage.getItem('carts')

			var shouldBeAsync = true
			var request = new XMLHttpRequest()

			request.onload = function() {
				// You can get all kinds of information about the HTTP response.
				var status = request.status // HTTP response status, e.g., 200 for "200 OK"
				var data = request.responseText // Returned data, e.g., an HTML document.
				console.log(status, data)
			}

			request.open(method, URL, shouldBeAsync)
			request.setRequestHeader("Content-Type",
					"application/json;charset=UTF-8")
			request.send(cart)

			//clear cart
			this.clearCart()

			window.location
					.assign('http://localhost:8080/BoonWeb/pawner-order.html')

		}
	</script>

</body>
</html>