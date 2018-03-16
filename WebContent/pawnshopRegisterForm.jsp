<!-- 
// page : pawnshop-register
// version : 1.0
// task : Create
// edit by : ter
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



		<html>

		<head>
			<title>Pawnshop Registation</title>

			<!-- Bootstrap core CSS -->
			<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

			<!-- Custom styles for this template -->
			<link href="css/new-design.css" rel="stylesheet">
			<link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		</head>
	
		<body style="overflow: hidden">
			<form:form method="post" action="savePawnshop.html" commandName="pawnshop">
				<div class="bg">
					<div style="height:500px;">
						<div class="re-con">
							<div class="row">
								<div class="col-md-6 bg2">
								</div>
								<div class="col-md-6 ">
									<div class="form-regis">
										<div style="text-align: center;width:45%;">
											<img src="img/logos/Artboard.png" style="height:80px;" />
											<h1 style="font-size:24px;letter-spacing: -1px;color: #555;">Expand your business.</h1>
											<p class="Subhead-description">Connext to pawner</p>
										</div>
										<ul style="padding-left:7px;">
											<li>
												<form:input type="text" class="input-regis" placeholder="pawnshop name" path="pawnshopName" />
											</li>
											<li>
												<form:input type="text" class="input-regis" placeholder="email" path="pawnshopEmail" />
											</li>
											<li>
												<form:input type="text" class="input-regis" placeholder="password" path="pawnshopPassword" />
											</li>
											<li>
												<form:input type="text" class="input-regis" placeholder="tell" path="pawnshopTel" />
											</li>
											<li>
												<form:select class="input-regis" path="pawnshopProvince">
													<option>province</option>
													<option>Bangkok</option>
													<option>Chiang rai</option>
												</form:select>
											</li>
											<li>
												<button type="submit" class="input-submit">Create Account</button>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form:form>
		</body>

		</html>