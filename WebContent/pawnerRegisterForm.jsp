<!-- 
// page : pawner-register-form-gold
// version : 1.0
// task : Create
// edit by : ter
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

			<title>Registration</title>

			<!-- Bootstrap core CSS -->
			<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

			<!-- Custom styles for this template -->
			<link href="css/new-design.css" rel="stylesheet">
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

		<body>

			<!-- Navigation -->
			<jsp:include page="navbar.jsp" />
			
			<form:form method="post" action="savePawner.html" commandName="pawner">
			<section>
				<div class="container">
					<div class="re-contain" style="border-bottom:1px solid #e1e4e8 ;;">
						<div class="Subhead">
							<h2 class="Subhead-heading">Pawner Registration</h2>
						</div>
						<div class="form-group-post float-left">
							<div class="form-group ">
								<dt>Firstname</dt>
								<form:input path="pawnerFirstname" class="post-name" pattern="[A-Za-z]{1,}" required="required"/>
							</div>

							<div class="form-group ">
								<dt>Lastname</dt>
								<form:input path="pawnerLastname" class="post-name" pattern="[A-Za-z]{1,}" required="required"/>
							</div>

							<div class="form-group ">
								<dt>Password</dt>
								<form:input path="pawnerPassword" class="post-name" type="password" id="pass" pattern="[0-9A-Za-z]{1,}" required="required"/>
							</div>

							<div class="form-group ">
								<dt>Confirm Password</dt>
								<input class="post-name" type="password" id="confirm" pattern="[0-9A-Za-z]{1,}" required="required">
							</div>

							<div class="form-group ">
								<dt>Email Address</dt>
								<form:input path="pawnerEmail" class="post-name" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="required"/>
							</div>

							<div class="form-group float-left ">
								<dt>Sex</dt>
								<div class="float-left" style="margin-top: 11.5px;">
									<form:select path="pawnerSex">
										<option>Male</option>
										<option>Female</option>
									</form:select>
								</div>
							</div>
						</div>
						<div class="form-group-post float-left" style="margin-left:65px;">
							<p class="lead" style="line-height:2; font-size:30px;">Register now for
								<span class="text-success">FREE</span>
							</p>
							<ul class="list-unstyled" style="line-height:2; font-size:22px;">
								<li>
									<span class="fa fa-check text-success"></span> See many product on shop</li>
								<li>
									<span class="fa fa-check text-success"></span> Create your post </li>
								<li>
									<span class="fa fa-check text-success"></span> Check all estimate</li>
								<li>
									<span class="fa fa-check text-success"></span> Check pawnshop location</li>
								<li>
									<span class="fa fa-check text-success"></span> Create post unlimited
								</li>
								<li>
									<span class="fa fa-check text-success"></span> See all your post
								</li>
							</ul>
						</div>
					</div>
				</div>
			</section>
			<div class="re-contain" style="margin-top:-40px;">
				<div class="form-group ">
					<input type="checkbox" required="required">I agree to the
					<strong>trem of service</strong>
				</div>
				<div class="form-group ">
					<button type="submit" class="summit-data">Create Account</button>
				</div>
			</div>
	</form:form>


		</body>

		</html>