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
		<h1>Items sell</h1>
		<em></em>
	</div>


	<div class="result-group">
	


		<c:forEach items="${pawnerPosts}" var="post">

			<div class="result">
				<div class="row">
					<div class="col-md-4 float-left result-img">
						<img src="images/imageUpload/${post.pawnerPostPicture }" class="img-responsive" alt="">
					</div>
					<div class="col-md-8">
						<h2 class="featured">
							<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">
								${post.pawnerPostName} - ${post.pawnerPostBrand} </a>
						</h2>
						<div class="info-r">
							A <span class="color-orange">${post.pawnerPostName}</span>
							Created on <span class="color-black"><fmt:setLocale
									value="en_US" /> <fmt:formatDate type="date" dateStyle="long"
									value="${post.pawnerPostDate }" /></span> by <span
								class="color-orange">${post.pawnerId.pawnerFirstname }
								${post.pawnerId.pawnerLastname }</span> from Province <span
								class="color-black"> ${post.pawnerId.pawnerProvince }</span>.
							You estimate <a href="#">here</a> 
						</div>
						<div>
							<a href="pawnshop-estimate-form.html?item=${post.pawnerPostId}">ประเมินเลย
							</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<%-- 	<div class="content">
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

						</div> --%>




</body>

</html>