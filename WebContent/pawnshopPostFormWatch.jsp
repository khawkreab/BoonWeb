<!-- 
// page : pawnshop-post-form-watch
// version : 2.0
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
							<h2 class="Subhead-heading">Create Post Watch</h2>
							<p class="Subhead-description">This post will show on pawnshop's page for them estimate your post.</p>
						</div>
						<form:form method="post" action="saveShopPost.html" commandName="pawnshopPost">
							<form:hidden path="pawnshopPostId" />
							<form:hidden path="pawnshopId.pawnshopId" />
							<form:hidden path="pawnshopPostItemType" value="watch" />
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
										<form:input path="pawnshopPostName" class="post-name" pattern="[A-Za-z0-9]{3,45}" required="required" />
									</dt>
									<p class="Subhead-description">plass enter data about your item for pawnshop to understand.</p>
								</div>
							</div>
							<div class="form-group-post float-left Subhead" style="margin-top: 10px;">
								<div class="form-group enter-data">
									<p>Enter the correct data for your post.Thsi data will show to pawnshop.</p>
								</div>
								<div class="form-group-post float-left ">
									<dt>Brand</dt>
									<div class="float-left" style="margin-top: 11.5px;">
										<form:select path="pawnshopPostBrand">
											<option>Rolex</option>
											<option>Patek Philippe</option>
											<option>Audemars Piguet</option>
											<option>Cartier</option>
											<option>Franck Muller</option>
											<option>Tag Heuer</option>
											<option>Omega</option>
											<option>Casio</option>
										</form:select>
									</div>
								</div>
								<div class="form-group-post float-left ">
									<dt>Production year</dt>
									<dt>
										<form:input path="pawnshopPostProduction" type="date" class="post-name" required="required" style="width:auto;" />
									</dt>
								</div>
								<div class="form-group-post float-left ">
									<dt>Model</dt>
									<dt>
										<form:input path="pawnshopPostModel" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,15}" required="required" />
									</dt>
								</div>
								<div class="form-group-post float-left ">
									<dt>Serial Number</dt>
									<dt>
										<form:input path="pawnshopPostSerial" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,15}" required="required" />
									</dt>
								</div>
								<div class="form-group-post float-left ">
									<dt>Type of case</dt>
									<div class="float-left" style="margin-top: 11.5px;">
										<form:select path="pawnshopPostCase">
											<option>Stainless Steel</option>
											<option>White Gold</option>
											<option>Yellow Gold</option>
											<option>Ceramic</option>
											<option>Pink Gold</option>
											<option>Others (Please specify)</option>
											<option>Unknown</option>
										</form:select>
									</div>
								</div>
								<div class="form-group-post float-left ">
									<dt>Type of bracelet</dt>
									<div class="float-left" style="margin-top: 11.5px;">
										<form:select path="pawnshopPostBracelet">
											<option>Stainless Steel</option>
											<option>Gold and Silver</option>
											<option>Gold</option>
											<option>Platinum</option>
											<option>Leather</option>
											<option>Plastic</option>
											<option>Rubber</option>
											<option>Others (Please specify)</option>
											<option>Unknown</option>
										</form:select>
									</div>
								</div>
								<div class="form-group-post float-left ">
									<dt>Is there any diamonds on your timepiece?</dt>
									<div class="float-left" style="margin-top: 11.5px;">
										<form:select path="pawnshopPostDiamond">
											<option value="1">No</option>
											<option value="2">Dial</option>
											<option value="3">Bezel</option>
											<option value="4">On the digits</option>
										</form:select>
									</div>
								</div>
								<div class="form-group-post float-left">
									<dt style="line-height:45px;">
										<form:checkbox path="pawnshopPostPackage" value="yes" /> Packaging
									</dt>
									<dt style="line-height:5px;">
										<form:checkbox path="pawnshopPostWarranty" value="yes" /> Warranty Certificate
									</dt>
								</div>
							</div>
							<div class="form-group-post  float-left">
								<dt>Description</dt>
							</div>
							<div class="form-group-post">
								<dt>
									<form:textarea path="pawnshopPostDescription" class="post-description" style="max-width:100%" pattern="[0-9A-Za-z]{0,}"></form:textarea>
								</dt>
								<p class="Subhead-description">(optional) If you have more data input here!</p>
							</div>
							<div class="form-group-post">
								<dt>
									Price
								</dt>
								<form:input path="pawnshopPostPrice" class="post-name" pattern="[0-9]{1,15}" required="required"/>
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