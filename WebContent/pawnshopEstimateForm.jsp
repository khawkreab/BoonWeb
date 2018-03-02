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
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
					<div class="d-flex">
						<div class="mr-auto p-2">
							<h5 class="product-title">${pawnerPost.pawnerPostName }
								${post.pawnerPostBrand }
								<!-- Electronic camera-->
								<c:if test="${pawnerPost.pawnerPostTypeCamera != null}">
									${pawnerPost.pawnerPostTypeCamera }
									${pawnerPost.pawnerPostCameraLen }
								</c:if>
							</h5>
						</div>
						<div class="ml-auto p-2"><fmt:formatDate
										type="both" dateStyle="long" timeStyle="short"
										value="${post.pawnerPostDate }" /></div>
					</div>

					<br>ผู้จำนำ ${pawnerPost.pawnerId.pawnerFirstname}
					${pawnerPost.pawnerId.pawnerLastname} จังหวัด
					${pawnerPost.pawnerId.pawnerProvince}
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
						<h6 class="product-title">Detail</h6>
						<ul>

							<!-- Watch,Electronic -->
							<c:if test="${pawnerPost.pawnerPostModel != null}">
								<li>Production : ${pawnerPost.pawnerPostProduction}</li>
								<li>Model : ${pawnerPost.pawnerPostModel}</li>
								<li>Serial : ${pawnerPost.pawnerPostSerial}</li>
								<li>Warranty : ${pawnerPost.pawnerPostWarranty}</li>
								<li>Purchase : ${pawnerPost.pawnerPostPurchase }</li>
							</c:if>

							<!-- Gold -->
							<c:if test="${pawnerPost.pawnerPostPure != null}">
								<li>Pure : ${pawnerPost.pawnerPostPure  }</li>
								<li>Weigh : ${pawnerPost.pawnerPostWeigh }</li>
								<li>Category : ${pawnerPost.pawnerPostCategory }</li>
							</c:if>

							<!-- Watch -->
							<c:if test="${pawnerPost.pawnerPostCase != null}">
								<li>Case : ${pawnerPost.pawnerPostCase }</li>
								<li>Bracelet : ${pawnerPost.pawnerPostBracelet }</li>
								<c:if test="${pawnerPost.pawnerPostDiamond != null}">
									<li>Diamond : ${pawnerPost.pawnerPostDiamond }</li>
								</c:if>
								<c:if test="${pawnerPost.pawnerPostPackage != null}">
									<li>Package : ${pawnerPost.pawnerPostPackage }</li>
								</c:if>
							</c:if>

							<!-- Electronic tv com telephone -->
							<c:if test="${pawnerPost.pawnerPostSize != null}">
								<li>Size : ${pawnerPost.pawnerPostSize }</li>
							</c:if>

							<!-- Electronic camera com telephone -->
							<c:if test="${pawnerPost.pawnerPostBattery != null}">
								<li>Battery : ${pawnerPost.pawnerPostBattery }</li>
							</c:if>

							<!-- Electronic com telephone -->
							<c:if test="${pawnerPost.pawnerPostHarddisk != null}">
								<li>Harddisk : ${pawnerPost.pawnerPostHarddisk }</li>
							</c:if>

							<!-- Electronic tv -->
							<c:if test="${pawnerPost.panwePostRemote != null}">
								<li>Remote : ${pawnerPost.panwePostRemote }</li>
							</c:if>

							<!-- Electronic com-->
							<c:if test="${pawnerPost.pawnerPostRam != null}">
								<li>Ram : ${pawnerPost.pawnerPostRam }</li>
							</c:if>


							<!-- Electronic telephone-->
							<li>Description : ${pawnerPost.pawnerPostDescription }</li>
						</ul>




					</div>
					<div class="preview col-md-3 border-left-1">
						<h7 class="product-title">ต้องการประเมิน</h7>
						<div class="line"></div>
						<div class="re-contain">
							<form:form method="post" action="saveEstimate.html"
								commandName="estimate">
								<form:hidden path="estimateId" />
								<form:hidden path="pawnshopId.pawnshopId" />
								<form:hidden path="pawnerPostId.pawnerPostId"
									value="${pawnerPost.pawnerPostId}" />
								<div class="form-group">
									<div class="form-group-post ">
										<span>Min</span>
										<form:input path="estimatePriceMin" class="post-name"
											pattern="[0-9]{3,45}" required="required" />
									</div>
									<div class="form-group-post ">
										<span>Max</span>
										<form:input path="estimatePriceMax" class="post-name"
											pattern="[0-9]{3,45}" required="required" />
									</div>
								</div>
								<div class="form-group-post float-left">
									<button type="submit" class="summit-data">Create post</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>

			</div>
	</section>
</body>
</html>