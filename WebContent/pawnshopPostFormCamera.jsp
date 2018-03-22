<!-- 
// page : pawnshop-post-form-Electronic
// version : 1.0
// task : create
// edit by : ter
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

		<html lang="en">

		<head>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
			<meta name="description" content="">
			<meta name="author" content="">

			<title>pawnshop-post-form</title>

			<!-- Bootstrap core CSS -->
			<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

			<!-- Custom styles for this template -->
			<link href="css/new-design.css" rel="stylesheet">
			<link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		</head>

		<body>
			<!-- Navigation   -->
			<jsp:include page="navbar.jsp" />
			<section>
				<div class="container">
					<div class="re-contain">
						<div class="Subhead">
							<h2 class="Subhead-heading">Camera</h2>
							<p class="Subhead-description">This post will show on pawnshop's page for them estimate your post.</p>
						</div>
						<form:form method="post" action="saveShopPost.html" modelAttribute="pawnshopPost" enctype="multipart/form-data">
							<input type="hidden"  name="pawnshopPostId" />
							<input type="hidden"  name="pawnshopId.pawnshopId" />
							<input type="hidden"  name="pawnshopPostItemType" value="Electronic" />
							<div style="margin-bottom: 20px;">
								<div class="form-group float-left">
									<dt>
										<img alt="user" src="img/gold.png" height="100" width="100" style="margin-bottom: 12px; border: 1px solid #c8cbcf">
									</dt>
										<input name="files" type="file" onchange="readURL(this);" />
								</div>
								<div class="form-group-post float-left" style="margin-bottom: 30px;">
									<span>Post name</span>
									<span>
										<input name="pawnshopPostName" class="post-name" pattern="[A-Za-z0-9]{3,45}" required="required" />
									</span>
									<p class="Subhead-description">plass enter data about your item for pawnshop to understand.</p>
								</div>
							</div>
							<div class="form-group float-left Subhead" style="margin-top: 10px;">
								<div class="form-group enter-data">
									<p>Enter the correct data for your post.Thsi data will show to pawnshop.</p>
								</div>
								<!-- camera -->
								<div id="camera" class="w3-container ">
									<div class="form-group  ">
										<span>Brand</span>
										<div class="form-group" style="margin-top: 11.5px;">
											<select name="pawnshopPostBrand">
												<option>Canon</option>
												<option>Fuji Film</option>
												<option>Nikon</option>
												<option>Olympus</option>
												<option>Samsung</option>
												<option>Sony</option>
												<option>Others</option>
											</select>
										</div>
									</div>
									<div class="form-group-post float-left ">
										<dt>Type of camera</dt>
										<dt>
											<input name="pawnshopPostTypeCamera" class="post-name" placeholder=" Mirrorless / DSLR " pattern="[0-9A-Za-z]{1,15}" required="required"
											/>
										</dt>
									</div>
									<div class="form-group-post float-left ">
										<dt>Model</dt>
										<dt>
											<input name="pawnshopPostModel" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,15}" required="required" />
										</dt>
									</div>
									<div class="form-group-post float-left ">
										<dt>Display size(inch)</dt>
										<dt>
											<input name="pawnshopPostSize" class="post-name" placeholder="" pattern="[0-9]{1,15}" required="required" />
										</dt>
									</div>
									<div class="form-group-post float-left ">
										<dt>Serial Number</dt>
										<dt>
											<input name="pawnshopPostSerial" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,15}" required="required" />
										</dt>
									</div>
									<div class="form-group-post float-left ">
										<dt>Type of len</dt>
										<dt>
											<input name="pawnshopPostCameraLen" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,15}" required="required" />
										</dt>
									</div>
									<div class="form-group-post float-left ">
										<dt>Capacity</dt>
										<dt>
											<input name="pawnshopPostCapacity" class="post-name" placeholder="" pattern="[0-9]{1,}" required="required" />
										</dt>
									</div>
									<div class="form-group-post float-left ">
										<dt>Year of purchase</dt>
										<dt>
											<input name="pawnshopPostPurchase" type="date" class="post-name" required="required" />
										</dt>
									</div>
									<div class="form-group-post float-left">
										<dt style="line-height: 45px;">
											<input type="checkbox" name="pawnshopPostBattery" value="yes" /> Battery charger
										</dt>
										<dt style="line-height: 5px;">
											<input type="checkbox" name="pawnshopPostWarranty" value="yes" /> Warranty Certificate
											<strong>(If you have)</strong>
										</dt>
									</div>
								</div>
							</div>
							<div class="form-group-post  float-left">
								<dt>Description</dt>
							</div>
							<div class="form-group-post">
								<dt>
									<textarea name="pawnshopPostDescription" class="post-description" style="max-width: 100%" pattern="[0-9A-Za-z]{0,}"></textarea>
								</dt>
								<p class="Subhead-description">(optional) If you have more data input here!</p>
							</div>
							<div class="form-group-post">
								<dt>
									Price
								</dt>
								<input name="pawnshopPostPrice" class="post-name" pattern="[0-9]{1,15}" required="required"/>
							</div>
							<div class="form-group-post ">
								<input type="checkbox" required="required">I agree to the
								<strong>trem of service</strong>
							</div>
							<div class="form-group-post ">
								<button type="submit" class="summit-data">Create post</button>
							</div>
						</form:form>
					</div>
				</div>
			</section>
		</body>

		</html>