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
<link rel="icon" href="img/logos/Artboard.png">
<<<<<<< HEAD
						<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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

							@ -webkit-keyframes opacity {
								0% {
									opacity: 0;
									-webkit-transform: scale(3);
									transform: scale(3);
								}

								100% {
									opacity: 1;
									-webkit-transform: scale (1);
									transform: scale (1);
								}
							}

							@ keyframes opacity {
								0% {
									opacity: 0;
									-webkit-transform: scale(3);
									transform: scale(3);
								}
								100% {
									opacity: 1;
									-webkit-transform: scale (1);
									transform: scale (1);
								}
							}

							/*# sourceMappingURL=style.css.map */
						</style>
						<script type="text/javascript">
	var checkLogin = <%= session.getAttribute("isLogin") %>;
	if(checkLogin != null){
		sessionStorage.setItem("login", "yes");
	}
	</script>
<script src="js/checkLogin.js"></script>
					</head>

					<body>
						<!-- Navigation -->
						<jsp:include page="navbar.jsp" />

						<div class="content">
							<div class="container">
								<!--products-->
								<div class="content-mid">
									<h3>Items</h3>
									<label class="line"></label>

									<div class="mid-popular">
										<!-- ------------------------------------------------------------------------------- -->
										<c:forEach items="${pawnerPosts}" var="post">
											<div class="col-md-3 item-grid simpleCart_shelfItem">
												<div class=" mid-pop">
													<a class="pro-img" href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">
														<!-- <div class="pro-img"> -->
														<img src="images/imageUpload/${post.pawnerPostPicture }" class="img-responsive" alt="">
														<span class="zoom-icon ">
															<i class="glyphicon glyphicon-search icon"></i>
														</span>

														<!-- </div> -->
													</a>
													<div class="mid-1">
														<div class="women">
															<div class="women-top">

																<h4>
																	<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">
																		${post.pawnerPostName} - ${post.pawnerPostBrand} </a>

																</h4>
																<span>
																	<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">ประเมินเลย
																	</a>
																</span>
															</div>

															<div class="clearfix"></div>
														</div>
														<div class="mid-2">
															<p>
																<em class="item_price">
																	<fmt:setLocale value="en_US" />
																	<fmt:formatDate type="both" dateStyle="long" timeStyle="short" value="${post.pawnerPostDate }" />
																	<br />Province ${post.pawnerId.pawnerProvince }</em>
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

=======
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Shop</title>

<!-- ----------------------------------checkLogin------------------------------------------  -->
<%-- <script type="text/javascript">
	var checkLogin =
<%=session.getAttribute("isLogin")%>
	;
	if (checkLogin != null) {
		sessionStorage.setItem("login", checkLogin);
	}
</script>
<script src="js/checkLogin.js"></script> --%>


</head>

<body>
	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

	<!--banner-->
	<div class="banner-top">
		<h1 id="checkpost">รายการของจำนำ</h1>
		<em></em>
	</div>


	<div class="result-group">



		<c:forEach items="${pawnerPosts}" var="post">

			<div class="result">
				<div class="row">
					<div class="col-md-4 float-left result-img" style="height: 122px">
						<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">
							<img src="images/imageUpload/${post.pawnerPostPicture }"
							class="img-responsive" alt="">
						</a>
					</div>
					<div class="col-md-8">
						<h2 class="featured text-orange">
							<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">
								${post.pawnerPostName} - ${post.pawnerPostBrand} </a>
						</h2>
						<div class="info-r">
							<span class="text-orange">${post.pawnerPostName}</span> ลงจำนำ
							วันที่<span class="text-black"><fmt:setLocale
									value="en_US" /> <fmt:formatDate type="date" dateStyle="long"
									value="${post.pawnerPostDate }" /></span> โดย <span
								class="text-orange">${post.pawnerId.pawnerFirstname }
								${post.pawnerId.pawnerLastname }</span> จากจังหวัด <span
								class="text-black"> ${post.pawnerId.pawnerProvince }</span>
						</div>
						<div class="text-orange">
							<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">ต้องการประเมิน
							</a>
>>>>>>> master
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

</body>

</html>