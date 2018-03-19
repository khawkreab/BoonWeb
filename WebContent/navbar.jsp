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
<link href="css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">

<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<!--theme-style-->
<link href="css/style4.css" rel="stylesheet" type="text/css" media="all" />

<!-- font icon for this template -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!--- start-rate---->
<script src="js/jstarbox.js"></script>
<link rel="stylesheet" href="css/jstarbox.css" type="text/css"
	media="screen" charset="utf-8" />
</head>

<body>

	<!--header-->
	<div class="header">
		<div class="container">
			<div class="head">
				<div class="logo">
					<a href="index.html"> <img src="img/logos/bg.png" alt="">
					</a>
				</div>
			</div>
		</div>
		<div class="header-top">
			<div class="container">
				<div class="col-sm-5 col-md-offset-2  header-login">
					<ul>
						<!-- -------------------------------------------------------------------- -->
						<%
							if (session.getAttribute("isLogin") == "yes") {
								if (session.getAttribute("userType") == "pawner") {
						%>
						<li><a href="#" class="nav-link js-scroll-trigger"> <%=session.getAttribute("username")%>
						</a></li>
						<li><a href="logout.html" class="nav-link js-scroll-trigger">Logout</a></li>
						<!-- -------------------------------------------------------------------- -->
						<%
							} else if (session.getAttribute("userType") == "pawnShop") {
						%>
						<li><a href="#" class="nav-link js-scroll-trigger"> <%=session.getAttribute("username")%>
						</a></li>
						<li><a href="logout.html" class="nav-link js-scroll-trigger">Logout</a></li>
						<!-- -------------------------------------------------------------------- -->
						<%
							}
							} else {
						%>
						<li><a data-toggle="modal" data-target="#modalLogin"
							class="nav-link js-scroll-trigger" href="#">Login</a></li>
						<li><a href="pawner-register-form.html" class="nav-link js-scroll-trigger">Register</a></li>
						<%
							}
						%>

					</ul>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>
		<div class="container">

			<div class="head-top">

				<div class="col-sm-7 col-md-offset-2">
					<nav class="navbar nav_bottom" role="navigation">

						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header nav_2">
							<button type="button"
								class="navbar-toggle collapsed navbar-toggle1"
								data-toggle="collapse" data-target="#bs-megadropdown-tabs">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>

						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
							<ul class="nav navbar-nav nav_1">
								<!-- -------------------------------------------------------------------- -->

								<%
									if (session.getAttribute("isLogin") == "yes") {
										if (session.getAttribute("userType") == "pawner") {
								%>
								<li><a class="color" href="pawner-index.html">Home</a></li>
								<li><a class="color3" href="pawner-pledge.html">pledge</a>
								</li>
								<li><a class="color4" href="pawner-track-pledge.html">track
										my pledge</a></li>
								<li><a class="color5" href="pawner-order.html">my order</a>
								</li>
								<!-- -------------------------------------------------------------------- -->
								<%
									} else if (session.getAttribute("userType") == "pawnShop") {
								%>
								<li><a class="color" href="pawnshop-index.html">Home</a></li>
								<li><a class="color3" href="pawnshop-pledge-sell.html">pledge
										sell </a></li>
								<li><a class="color4" href="pawnshop-track-estimate.html">track
										my estimate</a></li>
								<li><a class="color5" href="pawnshop-list-post.html">my
										post </a></li>

								<%
									}
									} else {
								%>
								<!-- -------------------------------------------------------------------- -->
								<li><a class="color" href="index.html">Home</a></li>
								<li><a class="color6" href="contact.html">Contact</a></li>
								<%
									}
								%>
							</ul>
						</div>
						<!-- /.navbar-collapse -->

					</nav>
				</div>
				<!-- -------------------------------------------------------------------- -->
				<%
					if ((session.getAttribute("isLogin")) == "yes" && (session.getAttribute("userType") == "pawner")) {
				%>
				<div class="col-sm-2 search-right">
					<div class="cart box_1">
						<a href="checkout.html">
							<h3>
								<div class="total">
									<span class="simpleCart_total"></span>
								</div>
								<img src="images/cart.png" alt="" />
							</h3>
						</a>
						<p>
							<a href="javascript:;" class="simpleCart_empty">Empty Cart</a>
						</p>

					</div>
					<div class="clearfix"></div>

					<!-- -------------------------------------------------------------------- -->

					<!--pop-up-box-->
					<link href="css/popuo-box.css" rel="stylesheet" type="text/css"
						media="all" />
					<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
					<!--//pop-up-box-->
					<div id="small-dialog" class="mfp-hide">
						<div class="search-top">
							<div class="login-search">
								<input type="submit" value=""> <input type="text"
									value="Search.." onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = 'Search..';}">
							</div>
							<p>Shopin</p>
						</div>
					</div>
					<script>
						$(document).ready(function() {
							$('.popup-with-zoom-anim').magnificPopup({
								type : 'inline',
								fixedContentPos : false,
								fixedBgPos : true,
								overflowY : 'auto',
								closeBtnInside : true,
								preloader : false,
								midClick : true,
								removalDelay : 300,
								mainClass : 'my-mfp-zoom-in'
							});
						});
					</script>
					<!-- -------------------------------------------------------------------- -->
				</div>
				<%
					}
				%>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

	<!------------------------------------------------ popup -------------------------------------------------->
	<div class="modal fade" id="modalLogin" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="re-con">
					<div class="row">
						<div class="col-md-6 ">
							<div class="form-login"
								style="margin-top: 50px; margin-bottom: 40px;">
								<h1 style="font-size: 32px; font-weight: 500;">Welcome to
									BoonYoung</h1>
								<p class="Subhead-description" style="margin-bottom: 35px;">This
									used to enter boonyoung. Any pawnshop will be able to see your
									information.</p>
								<form method="POST" action="loginProcess.html">
									<div class="form-group">
										<dt style="font-weight: 500; color: #555;">Email</dt>
										<input class="post-login" name="email" required="required" />
										<errors path="email" />
									</div>
									<div class="form-group">
										<dt style="font-weight: 500; color: #555;">Password</dt>
										<input type="password" class="post-login" name="password"
											required="required" />
										<errors path="password" />
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-sm btn-primary"
											style="margin-right: 10px; font-size: 15px; background-color: #ff7f00; border-color: #9e9e9e00;">Continue</button>
										<button type="button" data-dismiss="modal"
											class="btn btn-sm btn-default" style="font-size: 15px;">Cancel</button>
									</div>
								</form>
							</div>
							<div class="modal-footer">
								<a href="pawner-register-form.html" style="color: #555;">
									Createas a pawner account </a>
							</div>
						</div>
						<div class="col-md-6 bg3"></div>
					</div>
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