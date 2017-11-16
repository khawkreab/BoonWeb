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

<title>Register</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/custom-style.min.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

</head>

<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger nav-item-logo"
				href="index.html"> <img src="img/logos/adswhite.png" width="100">
			</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav text-uppercase ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="index.html#as">การจำนำ</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#portfolio">ซื้อของหลุดจำนำ</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#about">ปล่อยของหลุดจำนำ</a></li>
				</ul>
			</div>
			<ul class="navbar-nav text-uppercase ml-auto">
				<li class="nav-item"><a
					class="nav-item-reg btn btn-primary btn-sm" href="login.html">เข้าสู่ระบบ</a>
				</li>
		</div>
	</nav>

	<!-- Header -->

	<section id="#">
		<div class="container">

			<!-- --------------------------------------------------------------- -->
			<div class="row main">
				<div class="main-regist main-center">
					<h5>Create Your Account Pawner</h5>
					<!-- --------------------------------------------------------------- -->
					<form:form method="post" action="savePawnshop.do"
						commandName="pawnshop">
						<form:hidden path="pawnshopId" />

						<div class="form-group">
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="fa fa-user fa" aria-hidden="true"></i>
									</span>
									<form:input path="pawnshopName" class="form-control"
										placeholder="pawnshopName" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="fa fa-envelope fa" aria-hidden="true"></i>
									</span>
									<form:input path="email" class="form-control"
										placeholder="Enter your Email" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="fa fa-lock fa-lg" aria-hidden="true"></i>
									</span>
									<form:input path="password" type="password"
										class="form-control" placeholder="Enter your Password" />

								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="fa fa-lock fa-lg" aria-hidden="true"></i>
									</span> <input type="password" class="form-control" name="confirm"
										id="confirm" placeholder="Confirm your Password" />
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="fa fa-lock fa-lg" aria-hidden="true"></i>
									</span>
									<form:input path="credential" type="password"
										class="form-control" placeholder="Enter your credential" />

								</div>
							</div>
						</div>

						<div class="col-sm-12">
							<div class="checkbox">
								<label> <input type="checkbox" value=""> I agree
									with the Bounyong Terms of Service
								</label>
							</div>

						</div>
						<div class="cols-sm-12">
							<div class="input-group">
								<button class="btn-custom col-sm-3" type="submit">
									Register <i class="fa fa-chevron-right" aria-hidden="true"></i>

								</button>
								<span class="">
									<div class="btn-right-r50"></div>
								</span>

							</div>
						</div>
					</form:form>
				</div>

				<!--  -->
				<div class="right-box"></div>
			</div>


		</div>
	</section>
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/agency.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>