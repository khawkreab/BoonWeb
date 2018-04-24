<!-- 
// page : navber
// version : 8.0
// task : new design
// edit by : khawkreab
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Page Title</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- <link href="css/bootstrap.css" rel="stylesheet"> -->

<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">

<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<!--theme-style-->
<link href="css/style4.css" rel="stylesheet" type="text/css" media="all" />

<!-- font icon for this template -->
<link href="vendor/font-awesome/css/fontawesome-all.min.css"
	rel="stylesheet" type="text/css">

<!--- start-rate---->
<script src="js/jstarbox.js"></script>
<link rel="stylesheet" href="css/jstarbox.css" type="text/css"
	media="screen" /> 
</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-black bg-glay navbar-height">
		<div class="container">
			<!-- ----------------------------pawner login---------------------------------------- -->
			<%
				if (session.getAttribute("isLogin") == "yes") {
					if (session.getAttribute("userType") == "pawner") {
			%>
			<a class="navbar-brand" href="pawner-index.html"> <img
				src="img/logos/logo-white.png" alt=""> BOONYONG
			</a>
			<!-- -----------------------------pawnShop login--------------------------------------- -->
			<%
				} else if (session.getAttribute("userType") == "pawnShop") {
			%><a class="navbar-brand" href="pawnshop-index.html"> <img
				src="img/logos/logo-white.png" alt=""> BOONYONG
			</a>

			<!-- -----------------------------not login--------------------------------------- -->
			<%
				}
				} else {
			%><a class="navbar-brand" href="index.jsp"> <img
				src="img/logos/logo-white.png" alt=""> BOONYONG
			</a>
			<%
				}
			%>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>

			<ul class="navbar-nav ml-auto navbar-hidden">
				<!-- ----------------------------pawner login---------------------------------------- -->
				<%
					if (session.getAttribute("isLogin") == "yes") {
						if (session.getAttribute("userType") == "pawner") {
				%>
				<li><a class="nav-link" href="pawner-pledge.html">จำนำ</a></li>
				<li><a class="nav-link" href="pawner-track-pledge.html">สถานะการจำนำ</a></li>
				<li><a class="nav-link" href="pawner-cart.html"><i
						class="fas fa-shopping-cart"></i><span class="cart-num"
						id="cartNumber"></span></a></li>
				<li class="dropdown show"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false"> <%=session.getAttribute("username")%></a>

					<!-- -----------pawner login drop down menu---------------------- -->
					<ul class="dropdown-menu" role="menu">
						<li><p>บัญชีผู้ใช้งาน</p>
							<div class="navbar-account">
								<span class="navbar-account-photo">รูป</span><span
									class="navbar-account-info"><span
									class="navbar-account-naem"><%=session.getAttribute("username")%></span><span
									class="navbar-account-email"><%=session.getAttribute("email")%></span></span>
							</div></li>
						<li><a href="pawner-edit.html" class="nav-link ">แก้ไขบัญชี</a></li>
						<li><a href="pawner-post-history.html" class="nav-link ">ประวัติการจำนำ</a></li>
						<li><a href="pawner-order.html" class="nav-link ">ประวัติการสังซื้อ</a></li>
						<li><a href="logout.html" class="nav-link ">ออกจากระบบ</a></li>
					</ul></li>
				<!-- -----------------------------pawnShop login--------------------------------------- -->
				<%
					} else if (session.getAttribute("userType") == "pawnShop") {
				%>

				<li><a class="nav-link" href="pawnshop-pledge-sell.html">ปล่อยของหลุดจำนำ</a></li>
				<li><a class="nav-link" href="pawnshop-track-estimate.html">สถานะของการประเมิณ</a></li>
				<li><a class="nav-link" href="">รายการของหลุดจำนำ</a></li>
				<li class="dropdown show"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false"> <%=session.getAttribute("username")%></a>
					<!-- -----------pawnShop login drop down menu---------------------- -->
					<ul class="dropdown-menu" role="menu">
						<li><p>บัญชีผู้ใช้งาน</p>
							<div class="navbar-account">
								<span class="navbar-account-photo">photo</span><span
									class="navbar-account-info"><span
									class="navbar-account-naem"><%=session.getAttribute("username")%></span><span
									class="navbar-account-email"><%=session.getAttribute("email")%></span></span>
							</div></li>
						<li><a href="logout.html" class="nav-link ">แก้ไขบัญชี</a></li>
						<li><a href="pawnshop-estimate-history.html"
							class="nav-link ">ประวัติการประเมิณของจำนำ</a></li>
						<li><a href="pawnshop-list-post.html" class="nav-link ">ประวัติการปล่อยของหลุดจำนำ</a></li>
						<li><a href="logout.html" class="nav-link ">ออกจากระบบ</a></li>
					</ul></li>
				<!-- ------------------------------not login-------------------------------------- -->
				<%
					}
					} else {
				%>
				<li><a data-toggle="modal" data-target="#modalLogin"
					class="nav-link js-scroll-trigger" href="#">ลงชื่อเข้าใช้</a></li>
				<li><a href="pawner-register-form.html"
					class="nav-link js-scroll-trigger">สมัครสมาชิก</a></li>
				<%
					}
				%>

			</ul>
		</div>
	</nav>

	<!------------------------------------------------ popup -------------------------------------------------->
	<div class="modal fade" id="modalLogin" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content modal-login">
				<div class="re-con">
					<div class="row">
						<div class="col-md-6 ">
							<div class="form-login"
								style="margin-top: 50px; margin-bottom: 60px;">
								<h1 style="font-size: 32px; font-weight: 500;">ยินดีตอนรับ</h1>
								<p class="Subhead-description" style="margin-bottom: 35px;">ระบบจำนำทางออนไลน์
									จำนำง่ายจ่ายคล่องต้องบุญยง</p>
								<form method="POST" action="loginProcess.html">
									<div class="form-group">
										<span style="font-weight: 500; color: #555;">อีเมลของคุณ</span>
										<input class="post-login" name="email" required="required" />
									</div>
									<div class="form-group">
										<span style="font-weight: 500; color: #555;">รหัสผ่าน</span> <input
											type="password" class="post-login" name="password"
											required="required" />
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-sm btn-primary"
											style="margin-right: 10px; font-size: 15px; background-color: #ff7f00; border-color: #9e9e9e00;">เข้าสู้ระบบ</button>
										<button type="button" data-dismiss="modal"
											class="btn btn-sm btn-default" style="font-size: 15px;">ยกเลิก</button>
									</div>
								</form>
							</div>
						</div>
						<div class="col-md-6 bg3"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
		<!-- ----------------------------navbar-collapse---------------------------------------- -->
	<div class="collapse" id="navbarSupportedContent">
		<ul class="ml-auto">
			<!-- ----------------------------pawner login---------------------------------------- -->
			<%
				if (session.getAttribute("isLogin") == "yes") {
					if (session.getAttribute("userType") == "pawner") {
			%>
			<li>
				<div class="navbar-account">
					<span class="navbar-account-photo">photo</span><span
						class="navbar-account-info"><span
						class="navbar-account-naem"><%=session.getAttribute("username")%></span><span
						class="navbar-account-email">email</span></span>
				</div>
			</li>
			<li><a class="nav-link" href="pawner-pledge.html">pledge</a></li>
			<li><a class="nav-link" href="pawner-track-pledge.html">track
					my pledge</a></li>
			<li><a class="nav-link" href="pawner-post-history.html">history</a></li>
			<li><a class="nav-link" href="pawner-order.html">my order</a></li>
			<li><a href="logout.html" class="nav-link ">Logout</a></li>

			<!-- -----------------------------pawnShop login--------------------------------------- -->
			<%
				} else if (session.getAttribute("userType") == "pawnShop") {
			%>
			<li>
				<div class="navbar-account">
					<span class="navbar-account-photo">photo</span><span
						class="navbar-account-info"><span
						class="navbar-account-naem"><%=session.getAttribute("username")%></span><span
						class="navbar-account-email">email</span></span>
				</div>
			</li>


			<li><a class="nav-link" href="pawnshop-pledge-sell.html">pledge
					sell </a></li>
			<li><a class="nav-link" href="pawnshop-track-estimate.html">track
					my estimate</a></li>
			<li><a class="nav-link" href="pawnshop-estimate-history.html">history</a></li>
			<li><a class="nav-link" href="pawnshop-list-post.html">my
					post </a></li>

			<li><a href="logout.html" class="nav-link ">ออกจากระบบ</a></li>
			<!-- ------------------------------not login-------------------------------------- -->
			<%
				}
				} else {
			%>
			<li><a data-toggle="modal" data-target="#modalLogin"
				class="nav-link " href="#">Login</a></li>
			<li><a href="pawner-register-form.html"
				class="nav-link ">Register</a></li>
			<%
				}
			%>
		</ul>
	</div>

	
	<!-- -------------------------------------------------------------------------------------------------- -->

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<%
		if (session.getAttribute("userType") == "pawner") {
	%>
	<script type="text/javascript">
		window.onload = function checkcart() {

			var cartNum = sessionStorage.getItem('pawnercartNumber');

			if (null == cartNum || 0 == cartNum || cartNum == undefined) {
				document.getElementById("cartNumber").style.display = "none";
			} else {
				document.getElementById("cartNumber").style.display = "block";
				document.getElementById("cartNumber").innerHTML = cartNum
			}
		}
	</script>
	<%
		}
	%>
</body>

</html>