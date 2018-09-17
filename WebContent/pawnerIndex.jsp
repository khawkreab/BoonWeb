<!-- 
// page : pawner-index
// version : 1.0
// task : new
// edit by : khawkreab
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="img/logos/Artboard.png">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Boonyong</title>

<script type="text/javascript">
	var checkLogin = <%= session.getAttribute("isLogin") %>;
/* 	if(checkLogin == null){
		alert("please login");
		window.location ="index.jsp";
	}
	 */
	if(checkLogin != null){
		sessionStorage.setItem("login", "yes");
	}
	</script>

<script src="js/checkLogin.js"></script>
</head>

<body id="page-top">

	
	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

	<!--banner-->
	<div class="banner-top">
		<div class="container">
			<h1>Items sell</h1>
			<em></em>
		</div>
	</div>
	<!--content-->
	<div class="content">
		<div class="container">
			<!--products-->
			<div class="content-mid">
				<div class="mid-popular">
					<!-- ------------------------------------------------------------------------------- -->
					<c:forEach items="${pawnshopPosts}" var="pawnshopPosts">
						<div class="col-md-3 item-grid simpleCart_shelfItem">
							<div class=" mid-pop">
								<div class="pro-img">
									<a href="post-detail.html?item=${pawnshopPosts.pawnshopPostId}">
										<img
										src="images/imageUpload/${pawnshopPosts.pawnshopPostPicture}"
										class="img-responsive" alt="">
									</a>
									<div class="zoom-icon ">
										<a
											href="post-detail.html?item=${pawnshopPosts.pawnshopPostId}">
											<i class="glyphicon glyphicon-search icon"></i>
										</a>
									</div>
								</div>
								<div class="mid-1">
									<div class="women">
										<div class="women-top">

											<h4>
												<a
													href="post-detail.html?item=${pawnshopPosts.pawnshopPostId}">
													${pawnshopPosts.pawnshopPostName} -
													${pawnshopPosts.pawnshopPostBrand}</a>

											</h4>
											<span>฿${pawnshopPosts.pawnshopPostPrice}</span>
										</div>
										<div class="img item_add">
											<a href="#"><img src="images/ca.png" alt=""></a>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="mid-2">
										<p>
											<em class="item_price">Province
												${pawnshopPosts.pawnshopId.pawnshopProvince }</em>
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
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>