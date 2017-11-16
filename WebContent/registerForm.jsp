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
			<div class="container text-center">
				<div class="row">
					<div class="col-sm-12">
						<div class="wrapper_bu" style="position: relative;">
							<div class="image">
								<a class="panel-heading accordion-toggle collapsed left"
									data-toggle="collapse"
									data-parent="#accordion1,#accordion2,#accordion3"
									data-target="#collapseTwo">
									<div id="bu1">
										<img alt="" src="https://s6.postimg.org/ek5rpg6i9/karachi.png"
											class="img-responsive imgtransform">
										<div class="title">Pawnshop</div>
									</div>
								</a>
							</div>
							<div class="image">
								<a class="panel-heading accordion-toggle collapsed left"
									data-toggle="collapse"
									data-parent="#accordion1,#accordion2,#accordion3"
									data-target="#collapseOne">
									<div id="bu2">
										<img alt=""
											src="https://s6.postimg.org/kwgbljk6p/islamabad.png"
											class="img-responsive imgtransform">
										<div class="title">Pawner</div>
									</div>
								</a>
							</div>

						</div>
						<div class="panel-group" id="accordion1">
							<div class="panel panel-default">
								<div id="collapseOne" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="center-down-arrow">
											<img
												src="https://s6.postimg.org/50w2vzj01/slider_down_Arrow.png">
										</div>
										<div>
											<!-- --------------------------------------------------------------- -->
											<div class="row main">
												<div class="main-regist main-center">
													<h5>Create Your Account Pawner</h5>

													<form:form method="post" action="savePawner.do"
														commandName="pawner">
														<form:hidden path="pawnerId" />
														<div class="form-group">

															<div class="cols-sm-10">
																<div class="input-group">
																	<span class="input-group-addon"> <i
																		class="fa fa-user fa" aria-hidden="true"></i>
																	</span>
																	<form:input path="firstName" class="form-control"
																		placeholder="First Name" />
																	<form:input path="lastName" class="form-control"
																		placeholder="Last Name" />
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
																	</span> <input type="password" class="form-control"
																		name="confirm" id="confirm"
																		placeholder="Confirm your Password" />
																</div>
															</div>
														</div>

														<div class="col-sm-12">
															<div class="checkbox">
																<label> <input type="checkbox" value="">
																	I agree with the Bounyong Terms of Service
																</label>
															</div>

														</div>
														<div class="cols-sm-12">
															<div class="input-group">
																<button class="btn-custom col-sm-3" type="submit">
																	Register <i class="fa fa-chevron-right"
																		aria-hidden="true"></i>

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
											<!-- --------------------"WebContent/pawnshopForm.jsp"------------------------------------------- -->

										</div>
									</div>
								</div>
							</div>
							<!-- --------------------------------------------------------------- -->
							<div class="panel panel-default">
								<div id="collapseTwo" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="center-down-arrow">
											<img
												src="https://s6.postimg.org/50w2vzj01/slider_down_Arrow.png">
										</div>
										<div>
											<!-- --------------------------------------------------------------- -->
											<div class="row main">
												<div class="main-regist main-center">
													<h5>Create Your Account PawnShop</h5>

													<form class="" method="post" action="#">

														<div class="form-group">

															<div class="cols-sm-10">
																<div class="input-group">
																	<span class="input-group-addon"> <i
																		class="fa fa-user fa" aria-hidden="true"></i>
																	</span> <input type="text" class="form-control" name="name"
																		id="name" placeholder="First Name" /> <input
																		type="text" class="form-control" name="name" id="name"
																		placeholder="Last Name" />
																</div>
															</div>
														</div>

														<div class="form-group">

															<div class="cols-sm-10">
																<div class="input-group">
																	<span class="input-group-addon"> <i
																		class="fa fa-envelope fa" aria-hidden="true"></i>
																	</span> <input type="text" class="form-control" name="email"
																		id="email" placeholder="Enter your Email" />
																</div>
															</div>
														</div>


														<div class="form-group">

															<div class="cols-sm-10">
																<div class="input-group">
																	<span class="input-group-addon"> <i
																		class="fa fa-lock fa-lg" aria-hidden="true"></i>
																	</span> <input type="password" class="form-control"
																		name="password" id="password"
																		placeholder="Enter your Password" />

																</div>
															</div>
														</div>

														<div class="form-group">

															<div class="cols-sm-10">
																<div class="input-group">
																	<span class="input-group-addon"> <i
																		class="fa fa-lock fa-lg" aria-hidden="true"></i>
																	</span> <input type="password" class="form-control"
																		name="confirm" id="confirm"
																		placeholder="Confirm your Password" />
																</div>
															</div>
														</div>

														<div class="col-sm-12">
															<div class="checkbox">
																<label> <input type="checkbox" value="">
																	I agree with the Bounyong Terms of Service
																</label>
															</div>

														</div>
														<div class="cols-sm-12">
															<div class="input-group">
																<button class="btn-custom col-sm-3">
																	<a href="login.html" style="color: #ffffff;">Register
																		<i class="fa fa-chevron-right" aria-hidden="true"></i>
																	</a>
																</button>
																<span class="">
																	<div class="btn-right-r50"></div>
																</span>

															</div>
														</div>
													</form>
												</div>

												<!--  -->
												<div class="right-box"></div>
											</div>
											<!-- --------------------------------------------------------------- -->
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
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