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
				href="index.html"> <img src="img/logos/adswhite.png" width="100">
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
						class="nav-link js-scroll-trigger" href="index.html#as">การจำนำ</a></li>
					<li class="nav-item nav-item-hover"><a
						class="nav-link js-scroll-trigger" href="#portfolio">ซื้อของหลุดจำนำ</a></li>
						<li class="nav-item nav-item-hover"><a
						class="nav-link js-scroll-trigger" href="#portfolio">ติดตามสถานะ</a></li>
					<!-- -------------------------------------------------------------------- -->
					<%
						} else if (session.getAttribute("userType") == "pawnShop") {
					%>
					<li class="nav-item nav-item-hover"><a
						class="nav-link js-scroll-trigger" href="index.html#as">การประเมิน</a></li>
					<li class="nav-item nav-item-hover"><a
						class="nav-link js-scroll-trigger" href="index.html#as">ปล่อยของหลุดจำนำ</a></li>
					<li class="nav-item nav-item-hover"><a
						class="nav-link js-scroll-trigger" href="#portfolio">ประวัติการประเมิน</a></li>

					<%
						} else {
					%>
					<li class="nav-item nav-item-hover"><a
						class="nav-link js-scroll-trigger" href="index.html#as">การจำนำ</a></li>
					<li class="nav-item nav-item-hover"><a
						class="nav-link js-scroll-trigger" href="#portfolio">ซื้อของหลุดจำนำ</a></li>
					<%
						}
					%>
				</ul>
			</div>
			<!-- -------------------------------------------------------------------- -->
			<%
				if (session.isNew() || session.getAttribute("isLogin") == "no") {
			%>
			<li class="nav-item"><a
				class="nav-item-reg btn btn-primary btn-sm" href="login.html">เข้าสู่ระบบ</a>
			</li>
			<%
				} else if (session.getAttribute("isLogin") == "yes") {
			%>
			<li class="nav-item dropdown"><a
				class="btn btn-light center-items dropdown-toggle"
				data-toggle="dropdown" href="#">

					<figure id="navigation">
						<img id="navigation" alt="profilePic" src="img/gold.png"
							width="40px" />
					</figure> <label>${pawnShop.userName}</label>
			</a>

				<div class="dropdown-menu">
					<div class="dropdown-item">
						<i class="fa fa-cog" aria-hidden="true"></i><label
							onclick="location.replace('pawnerAccount.do')">จัดการบัญชีโรงรับจำนำ</label>
					</div>
					<div class="dropdown-item">
						<label>แก้ไขข้อมูลโรงรับจำนำ</label>
					</div>
					<div class="dropdown-divider"></div>
					<div class="dropdown-item">
						<i class="fa fa-sign-out" aria-hidden="true"></i><label
							onclick="location.replace('signOut.do')">ออกจากระบบ</label>
					</div>
				</div></li>
			<%
				} else {
			%>
			<li class="nav-item"><a class="btn btn-light" href="signIn.do">เข้าสู่ระบบ</a></li>
			<%
				}
			%>

		</div>
	</nav>


</body>
</html>