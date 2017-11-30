<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>nav bar</title>

<!-- Bootstrap core CSS -->

<!-- Custom styles for this template -->


</head>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<!-- -------------------------------------------------------------------- -->
			<a class="navbar-brand js-scroll-trigger nav-item-logo"
				href=""> <img src="img/logos/adswhite.png" width="100">
			</a>
			<!-- -------------------------------------------------------------------- -->
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!-- -------------------------------------------------------------------- -->
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ml-auto">

					<!-- -------------------------------------------------------------------- -->
					<%
						if (session.getAttribute("userType") == "pawner") {
					%>
					<li class="nav-item nav-item-hover"><a
						class="nav-link js-scroll-trigger" href="goldForm.do">การจำนำ</a></li>
					<li class="nav-item nav-item-hover"><a
						class="nav-link js-scroll-trigger" href="listPawnerGold.do">ติดตามสถานะ</a></li>
					<%
						} else if (session.getAttribute("userType") == "pawnShop") {
					%>
					<li class="nav-item nav-item-hover"><a
						class="nav-link js-scroll-trigger" href="">ประวัติการประเมิน</a></li>
					<%
						} else if (session.getAttribute("userType") == "admin") {
					%>
					<%
						} else {
					%>
					<!--  
					<li class="nav-item nav-item-hover"><a
						class="nav-link js-scroll-trigger" href="login.do">การจำนำ</a></li>
					<li class="nav-item nav-item-hover"><a
						class="nav-link js-scroll-trigger" href="login.do">ซื้อของหลุดจำนำ</a></li>
						-->
					<li class="nav-item nav-item-hover"><a
						class="nav-link js-scroll-trigger" href="login.do">เข้าสู่ระบบ</a></li>
					<%
						}
					%>
				</ul>
			</div>
			<!-- -------------------------------------------------------------------- -->
			<%
				if (session.isNew() || session.getAttribute("isLogin") == "no") {
			%>
			<div class="nav-item">
				<a class="nav-item-reg btn btn-primary btn-sm" href="register.html">สมัครสมาชิก</a>
			</div>
			<!-- -------------------------------------------------------------------- -->
			<%
				} else if (session.getAttribute("isLogin") == "yes") {
			%>
			<!-- -------------------------------------------------------------------- -->
			<%
				if (session.getAttribute("userType") == "pawner") {
			%>
			<div class="dropdown">
				<div class="user-avatar dropdown-toggle" data-toggle="dropdown">
					<div class="user-avatar__inner">
						<span class="">${pawner.firstName.substring(0,1).toUpperCase()}</span>
					</div>
				</div>

				<!-- -------------------------------------------------------------------- -->
				<div class="dropdown-menu">
					<div class="dropdown-item">
						<label onclick="location.replace('editPawner.do')">แก้ไขข้อมูลส่วนตัว</label>
					</div>
					<div class="dropdown-divider"></div>
					<div class="dropdown-item">
						<label onclick="location.replace('signOut.do')">ออกจากระบบ</label>
					</div>
				</div>
			</div>
			<!-- -------------------------------------------------------------------- -->
			<%
				} else if (session.getAttribute("userType") == "admin") {
			%>
			<div class="dropdown">
				<div class="user-avatar dropdown-toggle" data-toggle="dropdown">
					<div class="user-avatar__inner">
						<span class="">A</span>
					</div>
				</div>
				<!-- -------------------------------------------------------------------- -->
				<div class="dropdown-menu">
					<div class="dropdown-divider"></div>
					<div class="dropdown-item">
						<label onclick="location.replace('signOut.do')">ออกจากระบบ</label>
					</div>
				</div>
			</div>
			<%
				} else {
			%>
			<div class="dropdown">
				<div class="user-avatar dropdown-toggle" data-toggle="dropdown">
					<div class="user-avatar__inner">
						<span class="">${pawnshop.pawnshopName.substring(0,1).toUpperCase()}</span>
					</div>
				</div>
				<!-- -------------------------------------------------------------------- -->
				<div class="dropdown-menu">
					<div class="dropdown-item">
						<label onclick="location.replace('editPawnshop.do')">แก้ไขข้อมูลโรงรับจำนำ</label>
					</div>
					<div class="dropdown-divider"></div>
					<div class="dropdown-item">
						<label onclick="location.replace('signOut.do')">ออกจากระบบ</label>
					</div>
				</div>
			</div>
			<%
				}
			%>
			<!-- -------------------------------------------------------------------- -->
			<%
				} else {
			%>
			<div class="nav-item">
				<a class="nav-item-reg btn btn-primary btn-sm" href="register.html">สมัครสมาชิก</a>
			</div>
			<%
				}
			%>

		</div>
	</nav>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/agency.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>