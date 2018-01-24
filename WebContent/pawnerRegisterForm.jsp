<!-- 
// page : pawner-register-form-gold
// version : 1.0
// task : --
// edit by : 
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

			<title>Register</title>

			<!-- Bootstrap core CSS -->
			<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

			<!-- Custom styles for this template -->
			<link href="css/new-style.min.css" rel="stylesheet">
			<link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

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
			<jsp:include page="navbar.jsp" />

			<div class="container-fluid">
				<section class="container">
					<div class="container-page">
						<div class="col-md-6">
							<h3 class="dark-grey">Registration</h3>
<form:form method="post" action="savePost.html" commandName="pawnerPost">
							<div class="form-group col-lg-12">
								<label>Username</label>
								<input type="" name="" class="form-control" id="" value="">
							</div>

							<div class="form-group col-lg-6">
								<label>Password</label>
								<input type="password" name="" class="form-control" id="" value="">
							</div>

							<div class="form-group col-lg-6">
								<label>Repeat Password</label>
								<input type="password" name="" class="form-control" id="" value="">
							</div>

							<div class="form-group col-lg-6">
								<label>Email Address</label>
								<input type="" name="" class="form-control" id="" value="">
							</div>

							<div class="form-group col-lg-6">
								<label>Repeat Email Address</label>
								<input type="" name="" class="form-control" id="" value="">
							</div>

							<div class="col-sm-6">
								<input type="checkbox" class="checkbox" />Sigh up for our newsletter
							</div>

							<div class="col-sm-6">
								<input type="checkbox" class="checkbox" />Send notifications to this email
							</div>
</form:form>
						</div>

						<div class="col-md-6">
							<h3 class="dark-grey">Terms and Conditions</h3>
							<p>
								By clicking on "Register" you agree to The Company's' Terms and Conditions
							</p>
							<p>
								While rare, prices are subject to change based on exchange rate fluctuations - should such a fluctuation happen, we may request
								an additional payment. You have the option to request a full refund or to pay the new price. (Paragraph 13.5.8)
							</p>
							<p>
								Should there be an error in the description or pricing of a product, we will provide you with a full refund (Paragraph 13.5.6)
							</p>
							<p>
								Acceptance of an order by us is dependent on our suppliers ability to provide the product. (Paragraph 13.5.6)
							</p>

							<button type="submit" class="btn btn-primary">Register</button>
						</div>
					</div>
				</section>
			</div>

		</body>

		</html>