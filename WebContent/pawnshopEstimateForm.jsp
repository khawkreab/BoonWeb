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
							<h5 class="product-title">${pawnerPost.pawnerPostName}-
								${pawnerPost.pawnerPostItemType} ${pawnerPost.pawnerPostBrand}</h5>
						</div>
						<div class="ml-auto p-2">${pawnerPost.pawnerPostDate}</div>
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
							<li>- Pure ${pawnerPost.pawnerPostPure}</li>
							<li>- Brand ${pawnerPost.pawnerPostBrand}</li>
							<li>- Model ${pawnerPost.pawnerPostModel}</li>
							<li>- Weigh ${pawnerPost.pawnerPostWeigh}</li>
							<li>- Description ${pawnerPost.pawnerPostDescription}</li>
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