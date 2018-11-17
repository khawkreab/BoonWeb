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

<title>Profile</title>

<jsp:include page="importCSS.jsp" />

</head>

<body>

	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />
	<!-- form -->
	<form:form method="post" action="savePawnshop.html"
		commandName="pawnshop">

		<ul style="padding-left: 7px;">
			<li><form:input type="text" class="input-regis"
					placeholder="pawnshop name" path="pawnshopName" /></li>
			<li><form:input type="text" class="input-regis"
					placeholder="email" path="pawnshopEmail" /></li>
			<li><form:input type="text" class="input-regis"
					placeholder="password" path="pawnshopPassword" /></li>
			<li><form:input type="text" class="input-regis"
					placeholder="tell" path="pawnshopTel" /></li>
			<li><form:select class="input-regis" path="pawnshopProvince">
					<option value="1">province</option>
					<option>Bangkok</option>
					<option>Chiang rai</option>
				</form:select></li>
			<li>
				<button type="submit" class="input-submit">Create Account</button>
			</li>
		</ul>
	</form:form>
</body>
</html>