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
	<jsp:include page="navbar.jsp" />


	<section id="#">
		<div class="container">

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
										placeholder="First Name"
										pattern="[A-Za-z]{3,}" required="required" />
									<form:input path="lastName" class="form-control"
										placeholder="Last Name"
										pattern="[A-Za-z]{3,}" required="required"/>
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
										placeholder="pawner@hotmail.com"
										pattern="[A-Za-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="required" />
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
										class="form-control" placeholder="Enter your Password, more than 6 charter"
										pattern="[A-Za-z0-9]{6,}" required="required" />
								</div>
								
							</div>
						</div>

						<div class="form-group">

							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"> <i
										class="fa fa-lock fa-lg" aria-hidden="true"></i>
									</span> <input type="password" class="form-control" name="confirm"
										id="confirm" placeholder="Confirm your Password" required="required"/>
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

</body>

</html>