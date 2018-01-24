<!-- 
// page : pawnshop-index
// version : 2.0
// task : design
// edit by : khawkreab
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>

<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Bounyong</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

</head>

<body id="page-top">
	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />


	<section>
		<div class="container">

			<div class="card-deck">
				<form method="post" action="pawnshop-estimate-form.html">
					<c:forEach items="${pawnerPosts}" var="post">
						<input type="hidden" name="postId" value="${post.pawnerPostId}" />
						<div class="card">
							<button type="submit" class="btn-card">
								<div>
									<span class="card-img-top"> <img src="img/profile.jpg"
										alt="Card image cap"></span>
									<div class="card-body">
										<span class="card-title"><p>${post.pawnerPostItem1}
												-sdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsdfsfsfd
												${post.pawnerPostItem2}</p></span> <span class="card-text">Province
											: ${post.pawnerId.pawnerProvince }</span> <span class="card-footer">
											<small class="text-muted">${post.pawnerPostDate }</small>
										</span>
									</div>
								</div>
							</button>
						</div>
					</c:forEach>
				</form>
			</div>
	</section>
	<!-- ----------------------------------------------------------------------------  -->
	<jsp:include page="footer.jsp" />


</body>
</html>