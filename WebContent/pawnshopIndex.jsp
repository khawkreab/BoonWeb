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
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Shop</title>
</head>

<body>
	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />


	<!-- 	<section> -->
	<!-- 		<div class="container"> -->
	<!-- 			<div class="list-body"> -->
	<!-- 				<div class="list-filter"></div> -->
	<!-- 				<div class="list-main"> -->
	<%-- 					<c:forEach items="${pawnerPosts}" var="post"> --%>
	<%-- 						<form method="post" action="pawnshop-estimate-form.html" --%>
	<%-- 							class="card"> --%>

	<%-- 							<input type="hidden" name="postId" value="${post.pawnerPostId}" /> --%>
	<!-- 							<input type="hidden" name="postType" -->
	<%-- 								value="${post.pawnerPostItemType}" /> --%>
	<!-- 							<button type="submit" class="btn-card"> -->
	<!-- 								<span class="card-img-top"> <img src="img/profile.jpg" -->
	<!-- 									alt="Card image cap"></span> -->
	<!-- 								<div class="card-body"> -->
	<%-- 									<span class="card-title"><p>${post.pawnerPostName}- --%>
	<%-- 											${post.pawnerPostItemType}</p> </span> --%>
	<!-- 								</div> -->
	<!-- 								<small class="text-muted"> Province : -->
	<%-- 									${post.pawnerId.pawnerProvince } <br> <fmt:setLocale --%>
	<%-- 										value="en_US" /> <fmt:formatDate type="both" dateStyle="long" --%>
	<%-- 										timeStyle="short" value="${post.pawnerPostDate }" /> --%>
	<!-- 								</small> -->


	<!-- 							</button> -->

	<%-- 						</form> --%>
	<%-- 					</c:forEach> --%>
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</section> -->

	<!--content-->
	<div class="content">
		<div class="container">
			<!--products-->
			<div class="content-mid">
				<h3>Items sell</h3>
				<label class="line"></label>
				<div class="mid-popular">
					<!-- ------------------------------------------------------------------------------- -->
					<c:forEach items="${pawnerPosts}" var="post">
						<div class="col-md-3 item-grid simpleCart_shelfItem">
							<div class=" mid-pop">
								<div class="pro-img">
									<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}"> <img
										src="images/pc.jpg" class="img-responsive" alt=""></a>
									<div class="zoom-icon ">
										<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}"> <i
											class="glyphicon glyphicon-search icon"></i></a>
									</div>
								</div>
								<div class="mid-1">
									<div class="women">
										<div class="women-top">

											<h4>
												<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">
													${post.pawnerPostName}- ${post.pawnerPostItemType}</a>

											</h4>
											<span><a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">ประเมินเลย </a></span>
										</div>

										<div class="clearfix"></div>
									</div>
									<div class="mid-2">
										<p>
											<em class="item_price"><fmt:setLocale value="en_US" />
												<fmt:formatDate type="both" dateStyle="long"
													timeStyle="short" value="${post.pawnerPostDate }" /> <br />Province
												${post.pawnerId.pawnerProvince }</em>
										</p>
										<div class="block">
											<div class="starbox small ghosting"></div>
										</div>

										<div class="clearfix"></div>
									</div>

								</div>
							</div>
						</div>
					</c:forEach>
					<div class="clearfix"></div>
				</div>

			</div>
			<!--//products-->
		</div>

	</div>
	<!-- ----------------------------------------------------------------------------  -->
	<%-- 	<jsp:include page="footer.jsp" /> --%>

	<script src="js/imagezoom.js"></script>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script defer src="js/jquery.flexslider.js"></script>
	<link rel="stylesheet" href="css/flexslider.css" type="text/css"
		media="screen" />

	<script>
		// Can also be used with $(document).ready()
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				controlNav : "thumbnails"
			});
		});
	</script>

	<script src="js/simpleCart.min.js">
		
	</script>
	<!-- slide -->
	<script src="js/bootstrap.min.js"></script>

</body>
</html>