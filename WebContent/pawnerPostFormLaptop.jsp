<!-- 
// page : pawner-post-form-Electronic
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

			<title>pawner-post-form</title>

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
							<h2 class="Subhead-heading">Laptop</h2>
							<p class="Subhead-description">This post will show on pawnshop's page for them estimate your post.</p>
						</div>
						<form:form method="post" action="savePost.html" modelAttribute="pawnerPost" enctype="multipart/form-data">
							<input type="hidden"  name="pawnerPostId" />
							<input type="hidden"  name="pawnerId.pawnerId" />
							<input type="hidden"  name="pawnerPostItemType" value="Electronic" />
							<div style="margin-bottom: 20px;">
								<div class="form-group float-left">
									<dt>
										<img alt="user" src="img/gold.png" height="100" width="100" style="margin-bottom: 12px; border: 1px solid #c8cbcf">
									</dt>
									<input type="file" id="file" multiple style="width: 70px;">
								</div>
								<div class="form-group-post float-left" style="margin-bottom: 30px;">
									<span>Post name</span>
									<span>
										<input name="pawnerPostName" class="post-name" pattern="[A-Za-z0-9]{3,45}" required="required" />
									</span>
									<p class="Subhead-description">plass enter data about your item for pawnshop to understand.</p>
								</div>
							</div>
							<div class="form-group float-left Subhead" style="margin-top: 10px;">
								<div class="form-group enter-data">
									<p>Enter the correct data for your post.Thsi data will show to pawnshop.</p>
								</div>
								<div class=" form-group">

									<span>Brand</span>
									<div class="form-group" style="margin-top: 11.5px;">
										<select name="pawnerPostBrand">
											<option>Acer</option>
											<option>Apple</option>
											<option>Asus</option>
											<option>Canon</option>
											<option>Dell</option>
											<option>Fuji Film</option>
											<option>HP</option>
											<option>Lenovo</option>
											<option>LG</option>
											<option>MSI</option>
											<option>Nikon</option>
											<option>Olympus</option>
											<option>Panasonic</option>
											<option>Philips</option>
											<option>Samsung</option>
											<option>Sony</option>
											<option>Sharp</option>
											<option>TCL</option>
											<option>Toshiba</option>
											<option>Others</option>
										</select>
									</div>

								</div>

								<!-- laptop -->
								<div id="laptop" class="w3-container">
									<div class="form-group-post float-left ">
										<dt>Model</dt>
										<dt>
											<input name="pawnerPostModel" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,15}" required="required" />
										</dt>
									</div>
									<div class="form-group-post float-left ">
										<dt>Display size(inch)</dt>
										<dt>
											<input name="pawnerPostSize" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,15}" required="required" />
										</dt>
									</div>
									<div class="form-group-post float-left ">
										<dt>Harddisk</dt>
										<div class="float-left" style="margin-top: 11.5px;">
											<select name="pawnerPostHarddisk">
												<option>250 GB</option>
												<option>500 GB</option>
												<option>1 TB</option>
												<option>2 TB</option>
												<option>3 TB</option>
												<option>Others</option>
											</select>
										</div>
									</div>
									<div class="form-group-post float-left ">
										<dt>Ram</dt>
										<div class="float-left" style="margin-top: 11.5px;">
											<select name="pawnerPostRam">
												<option>4 Gb</option>
												<option>8 Gb</option>
												<option>16 Gb</option>
												<option>32 Gb</option>
												<option>64 Gb</option>
											</select>
										</div>
									</div>
									<div class="form-group-post float-left">
										<dt style="line-height: 45px;">
											<input type="checkbox" name="pawnerPostBattery" value="yes" /> Battery charger
										</dt>
										<dt style="line-height: 5px;">
											<input type="checkbox" name="pawnerPostWarranty" value="yes" /> Warranty Certificate
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
									<textarea name="pawnerPostDescription" class="post-description" style="max-width: 100%" pattern="[0-9A-Za-z]{0,}"></textarea>
								</dt>
								<p class="Subhead-description">(optional) If you have more data input here!</p>
							</div>
							<div class="form-group-post float-left">
								<input type="checkbox" required="required">I agree to the
								<strong>trem of service</strong>
							</div>
							<div class="form-group-post float-left">
								<button type="submit" class="summit-data">Create post</button>
							</div>
						</form:form>
					</div>
				</div>
			</section>
		</body>

		</html>