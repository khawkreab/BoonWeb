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


<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

.tha {
	text-align: left;
	padding: 8px;
	font-size: 14.5px;
	background-color: #ff7f00;
	color: #fff;
}

.tda {
	text-align: left;
	padding: 20px;
	color: #000;
}
</style>

</head>
<body>
	<jsp:include page="navbar.jsp" />
	<!--banner-->
	<div class="banner-top">
		<div>
			<h1 id="chechcarts">ตะกร้าสินค้า</h1>
			<em></em>
		</div>
	</div>
	<section style="background-color: #f5f5f5;">
		<div class="row">
			<!-- left -->
			<div id="list" class="col-md-8">
				<!-- List Order Here!!!! -->
			</div>

			<!-- right -->
			<div class="col-md-3" style="background-color: #fff;padding: 16px; display: inline-table;">
				<div style="border-bottom: 1px solid #e1e1e1; padding-bottom: 5px; ">
					สรุปรายการสั่งซื้อ
				</div>
				<div style="padding:8px">
					<div class="d-flex">
						<div class="mr-auto">จำนวน </div> 
						<div class="ml-auto "><span><i id="num"></i> ชิ้น</span></div>
					</div>
					<div class="d-flex">
						<div class="mr-auto">ยอมรวมทั้งสิ้น</div> 
						<div class="ml-auto"> <span>฿ <i id="totalPrice"></i></span></div>
					</div>
				</div>
				<!--  <button id="clearCart" class="btn btn-primary btn-block btn-lg"
					onClick="clearCart()">ลบทั้งหมด</button> -->
				<button id="comfirmOrder" class="btn btn-primary btn-block btn-sm"
					onClick="comfirmOrder()">ยืนยันการสั่งซื้อสินค้า</button>
			</div>
		</div>
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
			html = "<div class='row' style='background-color: #f1f1f1;border: 1px solid #fff;margin: 10px 0;padding: 5px 0;font-size: .8rem;'>"
			html += "<div class='col-md-8'>สินค้า</div><div class='col-md-3'>ราคา</div><div class='col-md-1'>จำนวน</div></div>"

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
					document.getElementById("chechcarts").innerHTML = "ไม่มีรายการสินค้า"

				} else {
					var totalPrice = 0;
					for ( var index in this.list) {
						html += "<div style='background-color: #fff;font-size:.9rem;padding-bottom: 10px;margin: 10px 0;'>"
						html += "<div style='padding: 5px 16px;margin-bottom: 10px;border-bottom: 1px solid #e1e1e1;'>ชื่อโรงรับจำนำ</div>"
						html += "<div class='row'><div class='col-md-8'><div class='row'> <div class='col-md-4'><img height='50px' src='images/imageUpload/"+this.list[index].pawnshopPostPicture+"'></div>"
						html += " <div class='col-md-8'>"+this.list[index].pawnshopPostName 
						html += "<br><button class='fas fa-trash' style='font-size:15px;color:red;border: 0;background-color: #fff;cursor: pointer;' onClick='deleteSelf("
							+ index + ")'></button></div></div></div>"
						html += "<div class='col-md-3 text-orange' style='font-size:1rem;'>"
								+ this.list[index].pawnshopPostPrice + "</div>"
						html += "<div class='col-md-1'>1</div>"
						html += "</div></div>"
						
						totalPrice += parseFloat(this.list[index].pawnshopPostPrice)
					}
					document.getElementById("num").innerHTML = list.length
					document.getElementById("totalPrice").innerHTML = totalPrice
				}
			} else {
				document.getElementById("cartNumber").style.display = "none";
				document.getElementById("comfirmOrder").style.display = "none";
				document.getElementById("clearCart").style.display = "none";
				document.getElementById("chechcarts").innerHTML = "ไม่มีรายการสินค้า"
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