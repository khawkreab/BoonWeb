<!-- 
// page : pawnshop-profile
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Registration</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

</head>

<body>

	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />
			<form:form method="post" action="savePawnshop.html" commandName="pawnshop">

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
													<option value="1">province</option>
													<option>Bangkok</option>
													<option>Chiang rai</option>
												</form:select>
											</li>
											<li>
												<button type="submit" class="input-submit">Create Account</button>
											</li>
										</ul>
										</form:form>
</body>
</html>