<!-- 
// page : pawnshop-track-pledge
// version : 3.2
// task : pawnshop approve
// edit by : khawkreab
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>pawnshop-post</title>

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
			<div class="history-filter">
				<div class="d-flex">
					<div class="mr-auto p-2">history</div>
					<div class="ml-auto p-2">
						Show: <select>
							<option>finish</option>
							<option>process</option>
						</select>
					</div>
				</div>
			</div>
		</div>
		<c:forEach items="${pawnshopPosts}" var="post">
			<div class="container">
				<div class="history-main">
					<div class="d-flex history-title">
						<div class="mr-auto p-2">
							<fmt:formatDate type="both" dateStyle="long" timeStyle="short"
								value="${post.pawnshopPostDate }" />
						</div>
						<div class="ml-auto p-2">
							<span>Delete</span>
						</div>
					</div>
					<div class="history-body">
						<div class="row">
							<div class="col-sm-5">
								<div class="pro-img">
									<img class="img-responsive"
										src="images/uploadImage/${post.pawnshopPostPicture }" />
								</div>
							</div>

							<div class="col-md-7 single-top-in">
								<div class="span_2_of_a1 simpleCart_shelfItem">
									<h3>${post.pawnshopPostName } ${post.pawnshopPostBrand }
										${post.pawnshopPostTypeCamera } ${post.pawnshopPostCameraLen }
									</h3>
									<p class="in-para">Information</p>
									<div class="price_single">
										<div class="preview">
											<ul class="row">

												<!-- Electronic camera-->
												<c:if test="${post.pawnshopPostTypeCamera != null}">
													<li class="col-md-6">${post.pawnshopPostTypeCamera }</li>
													<li class="col-md-6">${post.pawnshopPostCameraLen }</li>
												</c:if>
												<!-- Watch,Electronic -->
												<c:if test="${post.pawnshopPostModel != null}">
													<li class="col-md-6">Production :
														${post.pawnshopPostProduction}</li>
													<li class="col-md-6">Model :
														${post.pawnshopPostModel}</li>
													<li class="col-md-6">Serial :
														${post.pawnshopPostSerial}</li>
													<li class="col-md-6">Purchase :
														${post.pawnshopPostPurchase }</li>
												</c:if>

												<!-- Gold -->
												<c:if test="${post.pawnshopPostPure != null}">
													<li class="col-md-6">Pure :
														${post.pawnshopPostPure  }</li>
													<li class="col-md-6">Weigh :
														${post.pawnshopPostWeigh }</li>
													<li class="col-md-6">Category :
														${post.pawnshopPostCategory }</li>
												</c:if>

												<!-- Watch -->
												<c:if test="${post.pawnshopPostCase != null}">
													<li class="col-md-6">Case :
														${post.pawnshopPostCase }</li>
													<li class="col-md-6">Bracelet :
														${post.pawnshopPostBracelet }</li>
													<c:if test="${post.pawnshopPostDiamond != null}">
														<li class="col-md-6">Diamond :
															${post.pawnshopPostDiamond }</li>
													</c:if>
												</c:if>

												<!-- Electronic tv com telephone -->
												<c:if test="${post.pawnshopPostSize != null}">
													<li class="col-md-6">Size :
														${post.pawnshopPostSize }</li>
												</c:if>


												<!-- Electronic com telephone -->
												<c:if test="${post.pawnshopPostHarddisk != null}">
													<li class="col-md-6">Harddisk :
														${post.pawnshopPostHarddisk }</li>
												</c:if>

												<!-- Electronic com-->
												<c:if test="${post.pawnshopPostRam != null}">
													<li class="col-md-6">Ram :
														${post.pawnshopPostRam }</li>
												</c:if>

												<!-- Electronic camera com telephone -->
												<c:if test="${post.pawnshopPostBattery != null}">
													<li class="col-md-6"><span
														class="glyphicon glyphicon-check" aria-hidden="true">
													</span> Battery</li>
												</c:if>

												<!-- Electronic tv -->
												<c:if test="${post.pawnshopPostRemote != null}">
													<li class="col-md-6"><span
														class="glyphicon glyphicon-check" aria-hidden="true">
													</span> Remote</li>
												</c:if>

												<!-- Watch -->
												<c:if test="${post.pawnshopPostCase != null}">
													<c:if test="${post.pawnshopPostPackage != null}">
														<li class="col-md-6"><span
															class="glyphicon glyphicon-check" aria-hidden="true">
														</span> Package</li>
													</c:if>
												</c:if>

												<!-- Watch,Electronic -->
												<c:if test="${post.pawnshopPostModel != null}">
													<li class="col-md-6"><span
														class="glyphicon glyphicon-check" aria-hidden="true">
													</span> Warranty</li>
												</c:if>
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
									<h4 class="quick">Other Detail :</h4>
									<p class="quick_desc">${post.pawnshopPostDescription }</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</section>


	<script type="text/javascript">
		$('div span a').click(function() {
			$(this).text(function(i, old) {
				return old == 'more' ? 'less' : 'more';
			});
		});
	</script>
</body>
</html>