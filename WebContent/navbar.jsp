<!-- 
// version : 1.0
// task : --
// edit by : khawkreab
 -->

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

</head>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<!-- -------------------------------------------------------------------- -->
			<a class="navbar-brand js-scroll-trigger nav-item-logo" href="">
				<img src="img/logos/adswhite.png" width="100">
			</a>
			<!-- -------------------------------------------------------------------- -->
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fa fa-bars" aria-hidden="true"></i>
			</button>
			<!-- -------------------------------------------------------------------- -->

			<%
				if (session.getAttribute("userType") == "pawner") {
			%>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item nav-item-hover"><a
						class="nav-link js-scroll-trigger" href="goldForm.do">การจำนำ</a></li>
					<li class="nav-item nav-item-hover"><a
						class="nav-link js-scroll-trigger" href="listPawnerGold.do">ติดตามสถานะ</a></li>
				</ul>


			</div>
			<%
				} else if (session.getAttribute("userType") == "pawnShop") {
			%>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item nav-item-hover"><a
						class="nav-link js-scroll-trigger" href="pawnshopIndex.do">Home</a></li>
					<li class="nav-item nav-item-hover"><a
						class="nav-link js-scroll-trigger" href="listProposeByPawnshop.do">ประวัติการประเมิน</a></li>
				</ul>
			</div>

			<%
				} else {
			%>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item nav-item-hover"><a data-toggle="modal"
						data-target="#myModal" class="nav-link js-scroll-trigger"
						href="login.do">Sign in</a></li>
					<li class="nav-item nav-item-hover"><a
						class="nav-link js-scroll-trigger" href="register.html">Sign
							up</a></li>
				</ul>
			</div>
			<%
				}
			%>
			<!-- -------------------------------------------------------------------- -->
			<%
				if (session.getAttribute("isLogin") == "yes") {
			%>
			<!-- -------------------------------------------------------------------- -->
			<%
				if (session.getAttribute("userType") == "pawner") {
			%>
			<div class="nav-item-account navbar-brand">
				<div class="dropdown-toggle" data-toggle="dropdown"
					data-target="#dropdown">

					<i class="fa fa-user-circle-o" aria-hidden="true"></i>
					${pawner.pawnerFirstname}

				</div>
			</div>
			<!-- -------------------------------------------------------------------- -->
			<div id="dropdown">
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
			<div class="nav-item-account navbar-brand">
				<div class="dropdown-toggle" data-toggle="dropdown"
					data-target="#dropdown">
					<div class="user-avatar__inner">
						<span class="">A</span>
					</div>
				</div>
			</div>
			<!-- -------------------------------------------------------------------- -->
			<div id="dropdown">
				<div class="dropdown-menu">
					<div class="dropdown-divider"></div>
					<div class="dropdown-item">
						<label onclick="location.replace('signOut.do')">ออกจากระบบ</label>
					</div>
				</div>
			</div>
			<%
				} else if (session.getAttribute("userType") == "pawnShop") {
			%>
			<div class="nav-item-account navbar-brand">
				<div class="dropdown-toggle" data-toggle="dropdown"
					data-target="#dropdown">
							<i class="fa fa-user-circle-o" aria-hidden="true"></i> ${pawnshop.pawnshopName}
				</div>
			</div>
			<!-- -------------------------------------------------------------------- -->
			<div id="dropdown">
				<div class="dropdown-menu">
					<div class="dropdown-item">
						<label onclick="location.replace('editPawnshop.do')">แก้ไขข้อมูลโรงรับจำนำ <%= session.getAttribute("id") %></label>
					</div>
					<div class="dropdown-divider"></div>
					<div class="dropdown-item">
						<label onclick="location.replace('signOut.do')">ออกจากระบบ ${pawnshop.pawnshopId}</label>
					</div>
				</div>
			</div>
			<%
				}
				}
			%>
			<!-- -------------------------------------------------------------------- -->

		</div>
	</nav>

	<!------------------------------------------------ popup -------------------------------------------------->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Login</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>

				</div>
				<div class="modal-body">
					<%
						if (request.getAttribute("error") == "yes") {
					%>
					<p style="color: red">Login Failed. Please try again.</p>
					<%
						}
					%>
					<form method="POST" action="loginProcess.html">
						<div class="form-group">

							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="fa fa-envelope fa" aria-hidden="true"></i>
									</span> <input class="form-control" placeholder="Email" name="email"
										autofocus="autofocus" required="required" />
									<errors path="email" />
								</div>
							</div>
						</div>


						<div class="form-group">

							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="fa fa-lock fa-lg" aria-hidden="true"></i>
									</span> <input type="password" class="form-control"
										placeholder="password" name="password" required="required" />
									<errors path="password" />
								</div>
							</div>
						</div>

						<div class="d-flex justify-content-end">
							<button class="btn btn-primary btn-sm btn-block" type="submit">
								Login</button>
						</div>
					</form>
				</div>
				<div class="modal-footer">create account</div>
			</div>
		</div>
	</div>
	<!-- -------------------------------------------------------------------------------------------------- -->

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/agency.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>