<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form method="POST" action="loginProcess.do" commandName="pawner">
				<div class="input-content">
					<form:input placeholder="user" path="email" autofocus="autofocus" required="required"/>
					<form:errors path="email" />
					<form:password placeholder="password" path="password" required="required"/>
					<form:errors path="password" />
				</div>
				
				<div class="submit-btn">
					<input type="submit" value="login"/>
				</div>
</form:form>
</body>
</html>