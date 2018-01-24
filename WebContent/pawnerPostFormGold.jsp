<!-- 
// page : pawner-post-form
// version : 4.0
// task : นำ css ที่ไม่ได้ใช้ออก
// edit by : khawkreab
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>pawner-post-form</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

</head>

<body>

	<!-- Navigation   -->
	<jsp:include page="navbar.jsp" />
	<section>
		<div class="container">
			<div class="re-contain">
				<div class="Subhead">
					<h2 class="Subhead-heading">Create Post</h2>
					<p class="Subhead-description">This post will show on
						pawnshop's page for them estimate your post.</p>
				</div>
				<form:form method="post" action="savePost.html"
					commandName="pawnerPost">
					<form:hidden path="pawnerPostId" />
					<form:hidden path="pawnerId.pawnerId" />
					<form:hidden path="pawnerPostItemType" value="gold"/>
					<div style="margin-bottom: 20px;">
						<div class="form-group float-left">
							<dt>
								<img alt="user" src="img/gold.png" height="100" width="100"
									style="margin-bottom: 12px; border: 1px solid #c8cbcf">
							</dt>
							<input type="file" id="file" multiple style="width: 70px;">
						</div>
						<div class="form-group-post float-left"
							style="margin-bottom: 30px;">
							<dt>Post name</dt>
							<dt>
								<form:input path="pawnerPostItem17" class="post-name"
									pattern="[A-Za-z0-9]{3,45}" required="required" />
							</dt>
							<p class="Subhead-description">plass enter data about your
								item for pawnshop to understand.</p>
						</div>
					</div>
					<div class="form-group-post float-left Subhead"
						style="margin-top: 10px;">
						<div class="form-group enter-data">
							<p>Enter the correct data for your post.Thsi data will show
								to pawnshop.</p>
						</div>
						<div class="form-group-post float-left ">
							<dt>Type of gold.</dt>
							<div class="float-left" style="margin-top: 11.5px;">
								<form:select path="pawnerPostItem1" required="required">
									<option>Fine glod</option>
									<option>Prima Gold/Gold Master</option>
									<option>Amulet frames</option>
									<option>Platinum</option>
									<option>Other</option>
								</form:select>
							</div>
						</div>
						<div class="form-group-post float-left ">
							<dt>Pure of gold.</dt>
							<dt>
								<form:input path="pawnerPostItem14" class="post-name"
									placeholder=" 90%" pattern="[0-9]{1,}" required="required" />
							</dt>
						</div>

						<div class="form-group-post float-left ">
							<dt>Weigh of gold.</dt>
							<dt>
								<form:input path="pawnerPostItem16" class="post-name"
									placeholder=" 24.8 g." pattern="[0-9A-Za-z]{1,}"
									required="required" />
							</dt>
						</div>
						<div class="form-group-post float-left ">
							<dt>Size of gold.</dt>
							<dt>
								<form:input path="pawnerPostItem13" class="post-name"
									placeholder=" 23.5x3cm or 5.3cm" pattern="[0-9A-Za-z]{1,15}" />
							</dt>
						</div>
						<div class="form-group-post  float-left">
							<dt>Description</dt>
						</div>
						<div class="form-group-post">
							<dt>
								<form:input path="pawnerPostItem3" class="post-description"
									style="max-width: 100%" pattern="[0-9A-Za-z]{0,}" />
							</dt>
							<p class="Subhead-description">(optional) If you have more
								data input here!</p>
						</div>
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