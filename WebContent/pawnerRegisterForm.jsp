<!-- 
// page : pawner-register-form-gold
// version : 2.0
// task : new design
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

			<body style="overflow: hidden">
				<form:form method="post" action="savePawner.html" commandName="pawner">
					<div class="bg">
						<div style="height:500px;">
							<div style="max-width:900px;">
								<div class="modal-content" style="width: 400px; border-radius: .5rem;">
									<div class="icon-header" style="width: 80%; margin: auto;">
										<img src="img/logos/Artboard.png" style="height: 50px; margin-bottom: 10px; margin-top: 20px;" />
										<h1 style="font-size: 30px; letter-spacing: -1px; color: #555;">Welcome</h1>
										<p class="Subhead-description">Register for get new exper
										</p>
										<ul style="padding-left: 7px;">
											<li>
												<form:input path="pawnerFirstname" type="text" class="account-regis" placeholder="firstname" required="required" />
											</li>
											<li>
												<form:input path="pawnerLastname" type="text" class="account-regis" placeholder="lastname" required="required" />
											</li>
											<li>
												<form:input path="pawnerEmail" type="text" class="account-regis" placeholder="email" required="required" />
											</li>
											<li>
												<form:input path="pawnerPassword" type="text" class="account-regis" placeholder="password" required="required" />
											</li>
											<li>
												<button type="submit" class="account-submit">Create Account</button>
											</li>
											<li>
												<p class="Subhead-description" style="margin-top: 10px;">or</p>
											</li>
											<li>
												<a class="btn btn-block btn-social btn-facebook">
													<span class="fa fa-facebook"></span> Sign in with facebook
												</a>
											</li>
										</ul>
									</div>
									<div class="modal-footer">
										<a href="pawnshop-register-form.html" style="color: #555;">Create as a pawnshop account</a>
									</div>
								</div>
							</div>
						</div>
				</form:form>
			</body>
		</body>

		</html>