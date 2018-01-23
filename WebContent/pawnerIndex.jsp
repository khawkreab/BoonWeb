<!-- 
// version : 1.1
// task : modal select type 
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

<title>home page</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

</head>

<body id="page-top" style="overflow-y: hidden">


	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

	<section>
		<div class="container">

			<div class="box-main">
				<div class="box-sup">
					<div class="box-semi text-center">
						<h1>The 5 Step</h1>
						<h6>---- easy to pawn ----</h6>
						<br>
					</div>
					<div class="box-semi">
						<span class="time-line"></span>
						<ul>
							<li><span class="cycle">1</span> Enter item information</li>
							<li><span class="cycle">2</span> Upload picture and post
								item</li>
							<li><span class="cycle">3</span> Get offers from pawner shop</li>
							<li><span class="cycle">4</span> Walk in pawn shop</li>
							<li><span class="cycle">5</span> Deal rice again with pawn
								shop</li>
						</ul>
					</div>
					<div class="clear"></div>
					<div class="box-sup text-center">
						<a data-toggle="modal"
						data-target="#modalSelectType" class="nav-link js-scroll-trigger"
						href="login.do">Sign in</a>
					</div>
				</div>

			</div>
			<div class="box-main">
				<div class="box-sup">
					<div class="box-semi">
						<span class="time-line"></span>
						<ul>
							<li><span class="cycle"></span></li>
						</ul>
					</div>
				</div>
			</div>


			<!-- ----------------------------------------------------------------------------  -->
		</div>
	</section>

	<!------------------------------------------------ popup -------------------------------------------------->
	<div class="modal fade" id="modalSelectType" role="dialog">
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
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	<!-- Custom scripts for this template -->
	<script src="js/agency.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>