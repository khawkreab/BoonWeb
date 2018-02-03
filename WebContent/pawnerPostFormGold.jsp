<!-- 
// page : pawner-post-form
// version : 5.0
// task : แก้ ข้อมูลการบันทึก
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
							<h2 class="Subhead-heading">Create Post Gold</h2>
							<p class="Subhead-description">This post will show on pawnshop's page for them estimate your post.</p>
						</div>
						<form:form method="post" action="savePost.html" commandName="pawnerPost">
							<form:hidden path="pawnerPostId" />
							<form:hidden path="pawnerId.pawnerId" />
							<form:hidden path="pawnerPostItemType" value="gold" />
							<div style="margin-bottom: 20px;">
								<div class="form-group float-left">
									<dt>
										<img alt="user" src="img/gold.png" height="100" width="100" style="margin-bottom: 12px; border: 1px solid #c8cbcf">
									</dt>
									<input type="file" id="file" multiple style="width: 70px;">
								</div>
								<div class="form-group-post float-left" style="margin-bottom: 30px;">
									<dt>Post name</dt>
									<dt>
										<form:input path="pawnerPostName" class="post-name" pattern="[A-Za-z0-9]{3,45}" required="required" />
									</dt>
									<p class="Subhead-description">plass enter data about your item for pawnshop to understand.</p>
								</div>
							</div>
							<div class="form-group-post float-left Subhead" style="margin-top: 10px;">
								<div class="form-group enter-data">
									<p>Enter the correct data for your post.Thsi data will show to pawnshop.</p>
								</div>
								<div class="form-group-post float-left">
									<dt>Brand or trademark</dt>
									<dt>
										<form:input path="pawnerPostBrand" class="post-name" placeholder=" 23.5x3cm or 5.3cm" pattern="[0-9A-Za-z]{1,15}" />
									</dt>
								</div>
								<div class="form-group-post float-left">
									<dt>The purity</dt>
									<dt>
										<form:input path="pawnerPostPure" class="post-name" placeholder=" 90%" pattern="[0-9]{1,}" required="required" />
									</dt>
								</div>
								<div class="form-group-post float-left">
									<dt>Weight</dt>
									<dt>
										<form:input path="pawnerPostWeigh" class="post-name" placeholder=" 24.8 g." pattern="[0-9A-Za-z]{1,}" required="required"
										/>
									</dt>
								</div>
								<div class="form-group-post float-left">
									<dt>Category</dt>
									<div class="float-left" style="margin-top: 11.5px;">
										<form:select path="pawnerPostCategory" required="required">
											<option>Gold ornament</option>
											<option>Fine Gold such as 18k, 14k</option>
											<option>Gold 96.5 %</option>
											<option>Gold bars 96.5 %</option>
											<option>Gold bars 99.99 %</option>
											<option>Prima Gold, Gold Master</option>
											<option>Silver</option>
											<option>Amulet frame</option>
											<option>Platinum</option>
											<option>Others</option>
										</form:select>
									</div>
								</div>
							</div>
							<div class="form-group-post  float-left">
								<dt>Description</dt>
							</div>
							<div class="form-group-post">
								<dt>
									<form:textarea path="pawnerPostDescription" class="post-description" style="max-width:100%" pattern="[0-9A-Za-z]{0,}"></form:textarea>
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