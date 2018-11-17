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
<link rel="stylesheet" href="css/cartItem.css">
</head>
<body>

	<!--banner-->
	<div class="banner-top">
		<div>
			<h1 id="chechcarts">สินค้าทั้งหมด</h1>
			<em></em>
		</div>
	</div>
	<section style="background-color: #f5f5f5;justify-content: unset;">
		<div class="d-flex" id="cartitem">
			<!-- left -->
			<div id="list" class="cart-item-left">
				<!-- List Order Here!!!! -->
			</div>

			<!-- right -->
			<div class="cart-item-right">
				<div style="border-bottom: 1px solid #e1e1e1; padding-bottom: 5px;">
					สรุปรายการสั่งซื้อ</div>
				<div style="padding: 8px">
					<div class="d-flex">
						<div class="mr-auto">จำนวน</div>
						<div class="ml-auto ">
							<span><i id="num"></i> ชิ้น</span>
						</div>
					</div>
					<div class="d-flex">
						<div class="mr-auto">ยอมรวมทั้งสิ้น</div>
						<div class="ml-auto">
							<span> <i class="text-orange" id="totalPrice"></i> บาท
							</span>
						</div>
					</div>
				</div>
				<!--  <button id="clearCart" class="btn btn-primary btn-block btn-lg"
					onClick="clearCart()">ลบทั้งหมด</button> -->
				<button id="comfirmOrder" class="btn-custom btn-custom-defalt" style="width: 100%"
					onClick="comfirmOrder()">ยืนยันการสั่งซื้อสินค้า</button>
			</div>
		</div>
	</section>

	<jsp:include page="navbar.jsp" />
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
			var totalPrice = 0;

			if (sessionStorage.getItem('carts')) {
				list = JSON.parse(sessionStorage.getItem('carts'))

				document.getElementById("cartNumber").style.display = "block";
				sessionStorage.setItem('pawnercartNumber', list.length)
				document.getElementById("cartNumber").innerHTML = sessionStorage
						.getItem('pawnercartNumber')

				if (list.length == null || list.length == 0) {
					document.getElementById("cartNumber").style.display = "none";
					document.getElementById("cartitem").style.display = "none";
					document.getElementById("chechcarts").innerHTML = "ไม่มีรายการสินค้า"

				} else {
					/* ---- list item ------ */
					html = ""
					for ( var index in this.list) {

						html += "<div class='cart-item'>"
						html += "<div class='d-flex align-items-center'>"
						html += "<div class=''><img height='50px' src='img/uploadImge/"+this.list[index].pawnshopPostPicture+"'></div>"
						html += " <i class='mr-auto'>"
								+ this.list[index].pawnshopPostName + "</i>"
						html += "<i class='ml-auto small'>จำนวน  1  ชิ้น </i>"
						html += "<i class='text-orange'>"
								+ this.list[index].pawnshopPostPrice + " บาท   </i>"
						html += "</div>"
						html += "<line-x></line-x>"
						html += "<div class='d-flex align-items-center'>"
						html += "<i class='mr-auto small text-gray'>โรงรับจำนำ "
								+ this.list[index].pawnshopName + "</i>"
						html += "<i class='ml-auro'><a class='fas fa-trash' onClick='deleteSelf("
								+ index + ")'></a></i>"
						html += "</div></div>"

						/* ---- end list item ------ */
						/* ---- process total price ------ */
						totalPrice += parseFloat(this.list[index].pawnshopPostPrice
								.replace(/[^0-9.-]+/g, ""))
					}
					/* ---- show total price ------ */
					document.getElementById("num").innerHTML = list.length
					document.getElementById("totalPrice").innerHTML = parseFloat(
							totalPrice).toLocaleString('en');
				}
			} else {
				/* ---- no list item ------ */
				document.getElementById("cartNumber").style.display = "none";
				document.getElementById("cartitem").style.display = "none";
				document.getElementById("chechcarts").innerHTML = "ไม่มีรายการสินค้า"
			}
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
			location.href = "http://localhost:8080/BoonWeb/pawner-order.html"

		}
	</script>

</body>
</html>