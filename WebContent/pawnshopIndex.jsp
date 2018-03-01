<!-- 
// page : pawnshop-index
// version : 3.1
// task : send data to pawnshop-estimate-form
// edit by : khawkreab
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>

<!DOCTYPE html>
<html>

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
<link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body id="page-top">
	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />


	<section>
		<div class="container">
			<div class="list-body">
				<div class="list-filter"></div>
				<div class="list-main">
					<c:forEach items="${pawnerPosts}" var="post">
						<form method="post" action="pawnshop-estimate-form.html" class="card">

							<input type="hidden" name="postId" value="${post.pawnerPostId}" />
							<input type="hidden" name="postType"
								value="${post.pawnerPostItemType}" />
							<button type="submit" class="btn-card">
								<span class="card-img-top"> <img src="img/profile.jpg"
									alt="Card image cap"></span>
								<div class="card-body">
									<span class="card-title"><p>${post.pawnerPostName}
											- ${post.pawnerPostItemType}</p></span> <span class="card-text">Province
										: ${post.pawnerId.pawnerProvince }</span> <span class="card-footer">
										<small class="text-muted">${post.pawnerPostDate }</small>
									</span>
								</div>
							</button>

						</form>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
	<!-- ----------------------------------------------------------------------------  -->
	<jsp:include page="footer.jsp" />


</body>
</html>