<!-- 
// page : pawner-post-form
// version : 2.0
// task : change pattern
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
<link href="css/custom-style.min.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<style>
select {
	position: relative;
	display: inline-block;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 20px;
	white-space: nowrap;
	cursor: pointer;
	color: black;
	border: 1px solid #d1d5da;
	border-radius: 3px;
	background-color: #fafbfc;
	min-height: 34;
}

select:focus {
	background-color: #fff;
	border: 1px solid #2188ff;
	border-radius: 3px;
}

.re-contain {
	width: 700px;
	margin: 40px auto 0;
	line-height: 10px;
	box-sizing: border-box;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	color: black;
	font-size: 14px;
}

.Subhead {
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	flex-flow: row wrap;
	margin-bottom: 30px;
	padding-bottom: 8px;
	border-bottom: 1px #e1e4e8 solid;
}

.Subhead-heading {
	font-size: 24px;
	font-weight: normal;
	-webkit-box-flex: 1;
	flex: 1 1 auto;
}

.Subhead-description {
	font-size: 14px;
	color: #586069;
	font-weight: normal;
	-webkit-box-flex: 1;
	flex: 1 100%;
	margin-top: 0px;
	margin-bottom: 10px;
	cursor: pointer;
}

.form-group {
	margin: 18.22px;
}

.float-left {
	float: left !important;
}

.post-name {
	width: 250;
	background-color: #fafbfc;
	margin-top: 12px;
	min-height: 34;
	padding: 6px 8px;
	color: black;
	vertical-align: middle;
	background-repeat: repeat;
	background-position: right 8px center;
	border: 1px solid #d1d5da;
	border-radius: 3px;
	margin-bottom: 10px;
}

.post-description {
	width: 100%;
	background-color: #fafbfc;
	margin-top: -10px;
	min-height: 34;
	padding: 6px 8px;
	color: black;
	vertical-align: middle;
	background-repeat: repeat;
	background-position: right 8px center;
	border: 1px solid #d1d5da;
	border-radius: 3px;
	margin-bottom: 10px;
}

.post-name:hover {
	background-color: #fff;
	border: 1px solid #2188ff;
	border-radius: 3px;
	margin-bottom: 10px;
}

.post-description:hover {
	background-color: #fff;
	border: 1px solid #2188ff;
	border-radius: 3px;
	margin-bottom: 10px;
}

strong {
	color: #34631a;
	cursor: pointer;
}

.enter-data {
	padding-bottom: 8px;
	border-bottom: 1px #e1e4e8 solid;
}

.summit-data {
	position: relative;
	display: inline-block;
	padding: 6px 12px;
	font-size: 14px;
	font-weight: 600;
	white-space: nowrap;
	vertical-align: middle;
	cursor: pointer;
	color: #fff;
	background-color: #28a745;
	border: 1px solid rgba(27, 31, 35, 0.2);
	border-radius: 0.25em;
}
</style>
</head>

<body>

	<!-- Navigation   -->
	<jsp:include page="navbar.jsp" />

	<div class="re-contain">
		<div class="Subhead">
			<h2 class="Subhead-heading">Create Post</h2>
			<p class="Subhead-description">This post will show on pawnshop's
				page for them estimate your post.</p>
		</div>
		<form:form method="post" action="savePost.html" commandName="pawnerPost">
			<form:hidden path="pawnerPostId" />
			<form:hidden path="pawner.pawnerId" />
			<div style="margin-bottom: 20px;">
				<div class="form-group float-left">
					<dt>
						<img alt="user" src="img/gold.png" height="100" width="100"
							style="margin-bottom: 12px; border: 1px solid #c8cbcf">
					</dt>
					<input type="file" id="file"  multiple
						style="width: 70px;">
				</div>
				<div class="form-group float-left" style="margin-bottom: 30px;">
					<dt>Post name</dt>
					<dt>
						<form:input path="pawnerPostItem1" class="post-name" pattern="[A-Za-z]{3,45}"
							required="required" />
					</dt>
					<p class="Subhead-description">plass enter data about your item
						for pawnshop to understand.</p>
				</div>
			</div>
			<div class="form-group float-left Subhead" style="margin-top: 10px;">
				<div class="form-group enter-data">
					<p>Enter the correct data for your post.Thsi data will show to
						pawnshop.</p>
				</div>
				<div class="form-group float-left ">
					<dt>Type of gold.</dt>
					<div class="float-left" style="margin-top: 11.5px;">
						<form:select path="pawnerPostItemType" required="required">
							<option>Fine glod</option>
							<option>Prima Gold/Gold Master</option>
							<option>Amulet frames</option>
							<option>Platinum</option>
							<option>Other</option>
						</form:select>
					</div>
				</div>
				<div class="form-group float-left ">
					<dt>Pure of gold.</dt>
					<dt>
						<form:input path="pawnerPostItem17" class="post-name" placeholder=" 90%" pattern="[0-9]{1,}"
							required="required" />
					</dt>
				</div>

				<div class="form-group float-left ">
					<dt>Weigh of gold.</dt>
					<dt>
						<form:input path="pawnerPostItem16" class="post-name" placeholder=" 24.8 g."
							pattern="[0-9A-Za-z]{1,}" required="required" />
					</dt>
				</div>
				<div class="form-group float-left ">
					<dt>Size of gold.</dt>
					<dt>
						<form:input path="pawnerPostItem13" class="post-name" placeholder=" 23.5x3cm or 5.3cm"
							pattern="[0-9A-Za-z]{1,15}" />
					</dt>
				</div>
				<div class="form-group  float-left">
					<dt>Description</dt>
				</div>
				<div class="form-group">
					<dt>
						<form:input path="pawnerPostItem3" class="post-description" style="max-width: 100%"
							pattern="[0-9A-Za-z]{0,}" />
					</dt>
					<p class="Subhead-description">(optional) If you have more data
						input here!</p>
				</div>
			</div>
			<div class="form-group float-left">
				<input type="checkbox" required="required">I agree to the <strong>trem
					of service</strong>
			</div>
			<div class="form-group float-left">
				<button type="submit" class="summit-data">Create post</button>
			</div>
		</form:form>
	</div>
	</body>

</html>