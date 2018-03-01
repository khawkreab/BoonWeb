<!-- 
// page : pawner-index
// version : 1.3
// task : modal select type 
// edit by : khawkreab
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!Document html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>pawner-index</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<style>
.icon {
	width: 150px;
	margin: auto;
}

.scrollbar-auto {
	overflow-y: auto;
	height: 75%;
}

.card-icon {
	border: 1px solid #999999;
	border-radius: 4px;
	margin: 16px;
}

.card-icon:hover {
	transition: 0.3s;
	box-shadow: 0 0 2px 2px rgba(20, 23, 28, .1), 0 4px 1px 0
		rgba(20, 23, 28, .1);
	border: 1px solid #999999;
	border-radius: 4px;
}
</style>
</head>

<body id="page-top" style="overflow-y: hidden">


	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

	<section>
		<div class="container">
			<div class="list-body">
				<div class="list-filter"></div>
				<div class="list-main">
					<c:forEach items="${pawnshopPosts}" var="pawnshopPosts">
						<div class="card">
							<form method="post" action="pawnshop-estimate-form.html">

								<input type="hidden" name="postId"
									value="${pawnshopPosts.pawnshopPostId}" /> <input
									type="hidden" name="postType"
									value="${pawnshopPosts.pawnshopPostItemType}" />
								<button type="submit" class="btn-card">
									<span class="card-img-top"> <img src="img/profile.jpg"
										alt="Card image cap"></span>
									<div class="card-body">
										<span class="card-title"><p>${pawnshopPosts.pawnshopPostName}
												- ${pawnshopPosts.pawnshopPostBrand}</p></span>
									</div>
								</button>

							</form>
							<button class="btn btn-primary btn-block">add to order</button>
							<small class="text-muted float-right">Province
								${pawnshopPosts.pawnshopId.pawnshopProvince }</small>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>


</body>

</html>