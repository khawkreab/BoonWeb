<!-- 
// page : navber
// version : 7.0
// task : add menu
// edit by : khawkreab
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

		<html lang="en">

		<head>

			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
			<meta name="description" content="">
			<meta name="author" content="">

			<title>nav bar</title>
			<!-- Custom styles for this template -->
			<link href="css/new-design.css" rel="stylesheet">
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
					<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive"
					 aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
						<i class="fa fa-bars" aria-hidden="true"></i>
					</button>
					<!-- -------------------------------------------------------------------- -->

					<%
				if (session.getAttribute("userType") == "pawner") {
			%>
						<div class="collapse navbar-collapse" id="navbarResponsive">
							<ul class="navbar-nav text-uppercase ml-auto">
								<li class="nav-item nav-item-hover">
									<a class="nav-link js-scroll-trigger" href="pawner-index.html">Home</a>
								</li>
								<li class="nav-item nav-item-hover">
									<a class="nav-link js-scroll-trigger" href="pawner-pledge.html">pledge</a>
								</li>
								<li class="nav-item nav-item-hover">
									<a class="nav-link js-scroll-trigger" href="pawner-track-pledge.html">track my pledge</a>
								</li>
									<li class="nav-item nav-item-hover">
									<a class="nav-link js-scroll-trigger" href="pawner-order.html">my order</a>
								</li>
							</ul>


						</div>
						<%
				} else if (session.getAttribute("userType") == "pawnShop") {
			%>
							<div class="collapse navbar-collapse" id="navbarResponsive">
								<ul class="navbar-nav text-uppercase ml-auto">
									<li class="nav-item nav-item-hover">
										<a class="nav-link js-scroll-trigger" href="pawnshop-index.html">Home</a>
									</li>
									<li class="nav-item nav-item-hover">
										<a class="nav-link js-scroll-trigger" href="pawnshop-pledge-sell.html">pledge sell</a>
									</li>
									<li class="nav-item nav-item-hover">
										<a class="nav-link js-scroll-trigger" href="pawnshop-track-estimate.html">track my estimate</a>
									</li>
									<li class="nav-item nav-item-hover">
										<a class="nav-link js-scroll-trigger" href="pawnshop-list-post.html">my post</a>
									</li>
								</ul>
							</div>

							<%
				
				} else if (session.getAttribute("userType") == "admin") {
					%>
									<div class="collapse navbar-collapse" id="navbarResponsive">
										<ul class="navbar-nav text-uppercase ml-auto">
											<li class="nav-item nav-item-hover">
													<a class="nav-link js-scroll-trigger" href="admin-list-estimate.html">List Estimate</a>
											</li>
											<li class="nav-item nav-item-hover">
													<a class="nav-link js-scroll-trigger" href="admin-listpawner.html">List Pawner</a>
											</li>
											<li class="nav-item nav-item-hover">
													<a class="nav-link js-scroll-trigger" href="admin-list-pawnshop.html">List Pawnshop</a>
											</li>												
										</ul>
									</div>

									<%
				} else {
			%>
								<div class="collapse navbar-collapse" id="navbarResponsive">
									<ul class="navbar-nav text-uppercase ml-auto">
										<li class="nav-item nav-item-hover">
											<a data-toggle="modal" data-target="#modalLogin" class="nav-link js-scroll-trigger" href="login.do">Login</a>
										</li>
										<li class="nav-item nav-item-hover">
											<a data-toggle="modal" data-target="#modalRole" class="nav-link js-scroll-trigger">Register</a>
										</li>
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
											<div>
												<ul class="navbar-nav text-uppercase ml-auto">
													<li class="nav-item nav-item-hover">
														<a class="nav-link js-scroll-trigger" data-toggle="dropdown">
															<%=session.getAttribute("username")%>
																<i class="fa fa-cog" aria-hidden="true"></i>
														</a>
														<ul class="dropdown-menu">
															<li class="nav-item nav-item-hover">
																<a class="nav-link js-scroll-trigger" onclick="location.replace('editPawner.html')">Profile</a>
															</li>
															<li class="nav-item nav-item-hover">
																<a class="nav-link js-scroll-trigger" href="pawner-post-history.html">History</a>
															</li>
															<li class="nav-item nav-item-hover">
																<a class="nav-link js-scroll-trigger" onclick="location.replace('logout.html')">Log out</a>
															</li>
														</ul>
													</li>
												</ul>

												<!-- -------------------------------------------------------------------- -->
												<%
					} else if (session.getAttribute("userType") == "admin") {
				%>
													<ul class="navbar-nav text-uppercase ml-auto">
														<li class="nav-item nav-item-hover">
															<a class="nav-link js-scroll-trigger" data-toggle="dropdown">
																<%=session.getAttribute("username")%>
																	<i class="fa fa-cog" aria-hidden="true"></i>
															</a>
															<ul class="dropdown-menu">
																<li class="nav-item nav-item-hover">
																	<a class="nav-link js-scroll-trigger" onclick="location.replace('logout.html')">Log out</a>
																</li>
															</ul>
														</li>
													</ul>
													<%
					} else if (session.getAttribute("userType") == "pawnShop") {
				%>
														<ul class="navbar-nav text-uppercase ml-auto">
															<li class="nav-item nav-item-hover">
																<a class="nav-link js-scroll-trigger" data-toggle="dropdown">
																	<%=session.getAttribute("username")%>
																		<i class="fa fa-cog" aria-hidden="true"></i>
																</a>
																<ul class="dropdown-menu">
																	<li class="nav-item nav-item-hover">
																		<a class="nav-link js-scroll-trigger" onclick="location.replace('editPawnshop.html')">Profile</a>
																	</li>
																	<li class="nav-item nav-item-hover">
																		<a class="nav-link js-scroll-trigger" href="pawnshop-estimate-history.html">History</a>	
																	</li>																</li>
																	<li class="nav-item nav-item-hover">
																		<a class="nav-link js-scroll-trigger" onclick="location.replace('logout.html')">Log out</a>
																	</li>
																</ul>
															</li>
														</ul>
														<%
					}
					}
				%>
															<!-- -------------------------------------------------------------------- -->

											</div>
			</nav>

			<!------------------------------------------------ popup -------------------------------------------------->
			<div class="modal fade" id="modalLogin" role="dialog">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<div class="modal-header">
							<p style="font-size:24px;margin-bottom: 0;">Login</p>
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
													<span class="input-group-addon">
														<i class="fa fa-envelope fa" aria-hidden="true"></i>
													</span>
													<input class="form-control" placeholder="Email" name="email" autofocus="autofocus" required="required" />
													<errors path="email" />
												</div>
											</div>
										</div>


										<div class="form-group">

											<div class="cols-sm-10">
												<div class="input-group">
													<span class="input-group-addon">
														<i class="fa fa-lock fa-lg" aria-hidden="true"></i>
													</span>
													<input type="password" class="form-control" placeholder="password" name="password" required="required" />
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
					</div>
				</div>
			</div>
			<!-- -------------------------------------------------------------------------------------------------- -->

			<!------------------------------------------------ popup2 -------------------------------------------------->
			<div class="modal fade" id="modalRole" role="dialog">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<div class="icon-header">
							<img src="img/logos/Artboard.png" style="height:50px;margin-bottom:10px;" />
							<h1 style="font-size:24px;letter-spacing: -1px;color: #555;">Wellcome to Boonyoung</h1>
							<p class="Subhead-description">Discover new experiences to try.</p>
							<ul style="padding-left:7px;">
								<li>
									<input type="text" class="account-regis" placeholder="email" />
								</li>
								<li>
									<input type="text" class="account-regis" placeholder="password" />
								</li>
								<li>
									<button type="submit" class="account-submit">Create Account</button>
								</li>
								<li>
									<p class="Subhead-description" style="margin-top:10px;">or</p>
								</li>
								<li>
									<a class="btn btn-block btn-social btn-facebook">
										<span class="fa fa-facebook"></span> Sign in with facebook
									</a>
								</li>
							</ul>
						</div>
						<div class="modal-footer">
							<a href="pawnshop-register-form.html" style="color:#555;">Create as a pawnshop account</a>
						</div>
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