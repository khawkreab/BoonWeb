<!-- 
// page : pawnshop-estimate-form
// version : 3.0
// task : design 
// edit by : khawkreab 
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>pawnshop-estimate-form</title>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="navbar.jsp" />

	<section>
		<div class="container">
			<div class="preview-main">
				<div class="preview-header-wrapper">
					<h3 class="product-title">men's shoes fashion</h3>
					<%=request.getParameter("postId")%>
					<%=request.getParameter("postType")%>
				</div>
				<div class="preview-wrapper row">
					<div class="preview col-md-5">
						<div class="row">
							<ul class="preview-thumbnail nav nav-tabs col-md-2">
								<li class="active"><a data-target="#pic-1"
									data-toggle="tab"><img src="img/gold.png" /></a></li>
								<li><a data-target="#pic-2" data-toggle="tab"><img
										src="img/profile.jpg" /></a></li>
								<li><a data-target="#pic-3" data-toggle="tab"><img
										src="img/profile(Ter).jpg" /></a></li>
							</ul>

							<div class="preview-pic tab-content col-md-10">
								<div class="tab-pane active" id="pic-1">
									<img src="img/gold.png" />
								</div>
								<div class="tab-pane" id="pic-2">
									<img src="img/profile.jpg" />
								</div>
								<div class="tab-pane" id="pic-3">
									<img src="img/profile(Ter).jpg" />
								</div>
							</div>
						</div>
					</div>
					<div class="preview col-md-4">
						<h3 class="product-title">men's shoes fashion</h3>
						<%=request.getParameter("postId")%>
						<%=request.getParameter("postType")%>
					</div>
					<div class="preview col-md-3">
						<h3 class="product-title">men's shoes fashion</h3>
						<div class="line"></div>
						<%=request.getParameter("postId")%>
						<%=request.getParameter("postType")%>
					</div>
				</div>
			</div>

		</div>
	</section>
</body>
</html>