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
	
		<!-- --------------------------------------------------------------- -->
	<script>
	function checkmathpate() {
		var pass1 = document.getElementById("pass").value;
		var pass2 = document.getElementById("confirm").value;

		if (pass1 != pass2) {
			alert("Passwords Do not match");
			document.getElementById("pass").style.borderColor = "#E34234";
			document.getElementById("confirm").style.borderColor = "#E34234";
		} else {
			//alert("Passwords Match!!!");
		}
	}
</script>

</head>

<body id="page-top">

	<!-- Navigation -->
	<jsp:include page="navbar.jsp"></jsp:include>

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
										placeholder="pawnshopName" 
										pattern="[A-Za-z]{3,}" required="required" />
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
										placeholder="Enter your Email" 
										pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="required" />
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="fa fa-lock fa-lg" aria-hidden="true"></i>
									</span>
									<form:input path="password" type="password" id="pass"
										class="form-control" placeholder="Enter your Password" 
										pattern="[A-Za-z0-9]{6,}" required="required" />

								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="fa fa-lock fa-lg" aria-hidden="true"></i>
									</span> <input type="password" class="form-control" 
										id="confirm" placeholder="Confirm your Password" 
										pattern="[A-Za-z0-9]{6,}" required="required" />
								</div>
							</div>
						</div>
						
						
						<!-- 	
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
						 -->

		<!-- 				<div class="col-sm-12">
							<div class="checkbox">
								<label> <input type="checkbox" value=""> I agree
									with the Bounyong Terms of Service
								</label>
							</div>
						</div> -->
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