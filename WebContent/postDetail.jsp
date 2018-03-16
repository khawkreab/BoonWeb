<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Detail</title>
</head>
<body>
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
							<h5 class="product-title">${pawnshopPost.pawnshopPostName }
								${post.pawnshopPostBrand }
								<!-- Electronic camera-->
								<c:if test="${pawnshopPost.pawnshopPostTypeCamera != null}">
									${pawnshopPost.pawnshopPostTypeCamera }
									${pawnshopPost.pawnshopPostCameraLen }
								</c:if>
							</h5>
						</div>
						<div class="ml-auto p-2"><fmt:formatDate
										type="both" dateStyle="long" timeStyle="short"
										value="${post.pawnshopPostDate }" /></div>
					</div>

					<br>ผู้จำนำ ${pawnshopPost.pawnshopId.pawnshopName}
					Province:
					${pawnshopPost.pawnshopId.pawnshopProvince}
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
							<c:if test="${pawnshopPost.pawnshopPostModel != null}">
								<li>Production : ${pawnshopPost.pawnshopPostProduction}</li>
								<li>Model : ${pawnshopPost.pawnshopPostModel}</li>
								<li>Serial : ${pawnshopPost.pawnshopPostSerial}</li>
								<li>Warranty : ${pawnshopPost.pawnshopPostWarranty}</li>
								<li>Purchase : ${pawnshopPost.pawnshopPostPurchase }</li>
							</c:if>

							<!-- Gold -->
							<c:if test="${pawnshopPost.pawnshopPostPure != null}">
								<li>Pure : ${pawnshopPost.pawnshopPostPure  }</li>
								<li>Weigh : ${pawnshopPost.pawnshopPostWeigh }</li>
								<li>Category : ${pawnshopPost.pawnshopPostCategory }</li>
							</c:if>

							<!-- Watch -->
							<c:if test="${pawnshopPost.pawnshopPostCase != null}">
								<li>Case : ${pawnshopPost.pawnshopPostCase }</li>
								<li>Bracelet : ${pawnshopPost.pawnshopPostBracelet }</li>
								<c:if test="${pawnshopPost.pawnshopPostDiamond != null}">
									<li>Diamond : ${pawnshopPost.pawnshopPostDiamond }</li>
								</c:if>
								<c:if test="${pawnshopPost.pawnshopPostPackage != null}">
									<li>Package : ${pawnshopPost.pawnshopPostPackage }</li>
								</c:if>
							</c:if>

							<!-- Electronic tv com telephone -->
							<c:if test="${pawnshopPost.pawnshopPostSize != null}">
								<li>Size : ${pawnshopPost.pawnshopPostSize }</li>
							</c:if>

							<!-- Electronic camera com telephone -->
							<c:if test="${pawnshopPost.pawnshopPostBattery != null}">
								<li>Battery : ${pawnshopPost.pawnshopPostBattery }</li>
							</c:if>

							<!-- Electronic com telephone -->
							<c:if test="${pawnshopPost.pawnshopPostHarddisk != null}">
								<li>Harddisk : ${pawnshopPost.pawnshopPostHarddisk }</li>
							</c:if>

							<!-- Electronic tv -->
							<c:if test="${pawnshopPost.pawnshopPostRemote != null}">
								<li>Remote : ${pawnshopPost.pawnshopPostRemote }</li>
							</c:if>

							<!-- Electronic com-->
							<c:if test="${pawnshopPost.pawnshopPostRam != null}">
								<li>Ram : ${pawnshopPost.pawnshopPostRam }</li>
							</c:if>


							<!-- Electronic telephone-->
							<li>Description : ${pawnshopPost.pawnshopPostDescription }</li>
						</ul>




					</div>
					<div class="preview col-md-3 border-left-1">
						<h7 class="product-title">You want to buy item</h7>
						<div class="line"></div>
						<div class="re-contain">
							<form method="post" action="saveOrder.html" >
								<input type="hidden" name="pawnshopPostId" value="${pawnshopPost.pawnshopPostId}"/>
								<button type="submit" class="btn btn-primary">Buy</button>
							</form>
						</div>
					</div>
				</div>

			</div>
	</section>
</body>
</html>