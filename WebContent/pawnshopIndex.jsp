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

<style>

/*****************globals*************/
img {
	max-width: 100%;
}

.preview {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
}

@media screen and (max-width: 996px) {
	.preview {
		margin-bottom: 20px;
	}
}

.preview-pic {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
}

.preview-thumbnail.nav-tabs {
	border: none;
	margin-top: 15px;
}

.preview-thumbnail.nav-tabs li {
	width: 18%;
	margin-right: 2.5%;
}

.preview-thumbnail.nav-tabs li img {
	max-width: 100%;
	display: block;
}

.preview-thumbnail.nav-tabs li a {
	padding: 0;
	margin: 0;
}

.preview-thumbnail.nav-tabs li:last-of-type {
	margin-right: 0;
}

.tab-content {
	overflow: hidden;
}

.tab-content img {
	width: 100%;
	-webkit-animation-name: opacity;
	animation-name: opacity;
	-webkit-animation-duration: .3s;
	animation-duration: .3s;
}

@
-webkit-keyframes opacity { 0% {
	opacity: 0;
	-webkit-transform: scale(3);
	transform: scale(3);
}

100%
{
opacity




:


 


1;
-webkit-transform




:


 


scale




(1);
transform




:


 


scale




(1);
}
}
@
keyframes opacity { 0% {
	opacity: 0;
	-webkit-transform: scale(3);
	transform: scale(3);
}
100%
{
opacity




:


 


1;
-webkit-transform




:


 


scale




(1);
transform




:


 


scale




(1);
}
}

/*# sourceMappingURL=style.css.map */
</style>
</head>
<body>
	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

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

									<div class="preview col-md-12">

										<div class="preview-pic tab-content">
											<c:forEach var="pic" items="${picture}">
												<c:if
													test="${pic.pawnerPostId.pawnerPostId == post.pawnerPostId }">
													<div class="tab-pane" id="${pic.pictureId }">
														<img src="images/${pic.picture }" />
													</div>
												</c:if>
											</c:forEach>
										</div>
										<ul class="preview-thumbnail nav nav-tabs">
											<c:forEach var="pic" items="${picture}">
												<c:if
													test="${pic.pawnerPostId.pawnerPostId == post.pawnerPostId }">
													<li ><a data-target="#${pic.pictureId }"
														data-toggle="tab"><img src="images/${pic.picture }" /></a></li>
												</c:if>
											</c:forEach>
										</ul>
										<div class="zoom-icon ">
										<a
											href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">
											<i class="glyphicon glyphicon-search icon"></i>
										</a>
									</div>

									</div>

														
								</div>
								<div class="mid-1">
									<div class="women">
										<div class="women-top">

											<h4>
												<a
													href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">
													${post.pawnerPostName}- ${post.pawnerPostItemType}</a>

											</h4>
											<span><a
												href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">ประเมินเลย
											</a></span>
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
	<!-- slide picture -->
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>