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

	<script>
		function openCity(cityName) {
			var i;
			var x = document.getElementsByClassName("city");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			document.getElementById(cityName).style.display = "block";
		}
	</script>
	<style>
		.dropbtn {
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

		.dropdown {
			position: relative;
			display: inline-block;
		}

		.dropdown-content {
			display: none;
			position: absolute;
			background-color: #f9f9f9;
			min-width: 160px;
			box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
			z-index: 1;
		}

		.dropdown-content a {
			color: black;
			padding: 12px 16px;
			text-decoration: none;
			display: block;
		}

		.dropdown-content a:hover {
			background-color: #f1f1f1
		}

		.dropdown:hover .dropdown-content {
			display: block;
		}
	</style>
</head>

<body>
	<!-- Navigation   -->
			<jsp:include page="navbar.jsp" />
			<section>
	<div class="container">
		<div class="re-contain">
			<div class="Subhead">
				<h2 class="Subhead-heading">Create Post Electronic</h2>
				<p class="Subhead-description">This post will show on pawnshop's page for them estimate your post.</p>
			</div>
			<form:form method="post" action="savePost.html" commandName="pawnerPost">
							<form:hidden path="pawnerPostId" />
							<form:hidden path="pawnerId.pawnerId" />
							<form:hidden path="pawnerPostItemType" value="Electronic" />
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
			<div class="form-group float-left Subhead" style="margin-top: 10px;">
				<div class="form-group enter-data">
					<p>Enter the correct data for your post.Thsi data will show to pawnshop.</p>
					<div class="dropdown ">
						<button class="dropbtn">Select electronic type
							<i class="fa fa-caret-down" aria-hidden="true"></i>
						</button>
						<div class="dropdown-content">
							<a href="#" onclick="openCity('TV')">TV</a>
							<a href="#" onclick="openCity('Mobile')">Mobile</a>
							<a href="#" onclick="openCity('camera')">Camera</a>
							<a href="#" onclick="openCity('laptop')">Laptop</a>
							<a href="#" onclick="openCity('other')">Other</a>
						</div>
					</div>
				</div>
				<div class=" form-group-post Subhead">
					<div class="form-group  ">
						<dt>Brand</dt>
						<div class="form-group" style="margin-top: 11.5px;">
							<form:select path="pawnerPostBrand">
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
							</form:select>
						</div>
					</div>
				</div>
				<!-- TV -->
				<div id="TV" class="w3-container city">
					<div class="form-group float-left ">
						<h2 style=" font-weight: normal">TV</h2>

						<div class="form-group-post float-left ">
							<dt>Model</dt>
							<dt>
								<form:input path="pawnerPostModel" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,15}" required="required" />
							</dt>
						</div>
						<div class="form-group-post float-left ">
							<dt>Serial Number</dt>
							<dt>
								<form:input path="pawnerPostSerial" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,15}" required="required" />
							</dt>
						</div>
						<div class="form-group-post float-left">
							<dt>Size</dt>
							<dt>
								<form:input path="pawnerPostSize" class="post-name" placeholder=" 23.5x3cm" pattern="[0-9A-Za-z]{1,15}" required="required"/>
							</dt>
						</div>
						<div class="form-group-post float-left ">
							<dt>Production year</dt>
							<dt>
								<form:input path="pawnerPostProduction" type="date" class="post-name" required="required" />
							</dt>
						</div>
						<div class="form-group-post float-left">
							<dt style="line-height:45px;">
								<form:checkbox path="panwePostRemote" value="yes" /> Remote control
								<strong>(If you have)</strong>
							</dt>
							<dt style="line-height:5px;">
								<form:checkbox path="pawnerPostWarranty" value="yes" /> Warranty Certificate
								<strong>(If you have)</strong>
							</dt>
						</div>
					</div>
				</div>
				<!-- Mobile -->
				<div id="Mobile" class="w3-container city" style="display:none">
					<h2 style=" font-weight: normal">Mobile</h2>
					<div class="form-group float-left">
						<div class="form-group-post float-left ">
							<dt>Model</dt>
							<dt>
								<form:input path="pawnerPostModel" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,15}" required="required" />
							</dt>
						</div>
						<div class="form-group-post float-left ">
							<dt>Serial Number</dt>
							<dt>
								<form:input path="pawnerPostSerial" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,15}" required="required" />
							</dt>
						</div>
						<div class="form-group-post float-left ">
							<dt>Capacity</dt>
							<dt>
								<form:input path="pawnerPostCapacity" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,}" required="required" />
							</dt>
						</div>
						<div class="form-group-post float-left ">
							<dt>Year of purchase</dt>
							<dt>
								<form:input path="pawnerPostPurchase" type="date" class="post-name" required="required" />
							</dt>
						</div>
						<div class="form-group-post float-left">
							<dt style="line-height:45px;">
								<form:checkbox  path="pawnerPostBattery" value="yes" /> Battery charger
							</dt>
							<dt style="line-height:5px;">
								<form:checkbox path="pawnerPostWarranty" value="yes" /> Warranty Certificate
								<strong>(If you have)</strong>
							</dt>
						</div>
					</div>
				</div>
				<!-- camera -->
				<div id="camera" class="w3-container city" style="display:none">
					<h2 style=" font-weight: normal">Camera</h2>
					<div class="form-group-post float-left ">
						<dt>Type of camera</dt>
						<dt>
							<form:input path="pawnerPostTypeCamera" class="post-name" placeholder=" Mirrorless / DSLR " pattern="[0-9A-Za-z]{1,15}" required="required"
							/>
						</dt>
					</div>
					<div class="form-group-post float-left ">
						<dt>Model</dt>
						<dt>
							<form:input path="pawnerPostModel" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,15}" required="required" />
						</dt>
					</div>
					<div class="form-group-post float-left ">
						<dt>Display size(inch)</dt>
						<dt>
							<form:input path="pawnerPostSize" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,15}" required="required" />
						</dt>
					</div>
					<div class="form-group-post float-left ">
						<dt>Serial Number</dt>
						<dt>
							<form:input path="pawnerPostSerial" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,15}" required="required" />
						</dt>
					</div>
					<div class="form-group-post float-left ">
						<dt>Type of len</dt>
						<dt>
							<form:input path="pawnerPostCameraLen" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,15}" required="required" />
						</dt>
					</div>
					<div class="form-group-post float-left ">
						<dt>Capacity</dt>
						<dt>
							<input path="pawnerPostCapacity" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,}" required="required" />
						</dt>
					</div>
					<div class="form-group-post float-left ">
						<dt>Year of purchase</dt>
						<dt>
							<input path="pawnerPostPurchase" type="date" class="post-name" required="required" />
						</dt>
					</div>
					<div class="form-group-post float-left">
						<dt style="line-height:45px;">
							<form:checkbox  path="pawnerPostBattery" value="yes" /> Battery charger
						</dt>
						<dt style="line-height:5px;">
							<form:checkbox path="pawnerPostWarranty" value="yes" /> Warranty Certificate
							<strong>(If you have)</strong>
						</dt>
					</div>
				</div>
				
				<!-- laptop -->
				<div id="laptop" class="w3-container city" style="display:none">
					<h2 style=" font-weight: normal">Laptop</h2>
					<div class="form-group-post float-left ">
						<dt>Model</dt>
						<dt>
							<form:input path="pawnerPostModel" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,15}" required="required" />
						</dt>
					</div>
					<div class="form-group-post float-left ">
						<dt>Display size(inch)</dt>
						<dt>
							<form:input path="pawnerPostSize" class="post-name" placeholder="" pattern="[0-9A-Za-z]{1,15}" required="required" />
						</dt>
					</div>
					<div class="form-group-post float-left ">
						<dt>Harddisk</dt>
						<div class="float-left" style="margin-top: 11.5px;">
							<form:select path="pawnerPostHarddisk">
								<option>250 GB</option>
								<option>500 GB</option>
								<option>1 TB</option>
								<option>2 TB</option>
								<option>3 TB</option>
								<option>Others</option>
							</form:select>
						</div>
					</div>
					<div class="form-group-post float-left ">
						<dt>Ram</dt>
						<div class="float-left" style="margin-top: 11.5px;">
							<form:select path="pawnerPostRam">
								<option>4 Gb</option>
								<option>8 Gb</option>
								<option>16 Gb</option>
								<option>32 Gb</option>
								<option>64 Gb</option>
							</form:select>
						</div>
					</div>
					<div class="form-group-post float-left">
						<dt style="line-height:45px;">
							<form:checkbox path="pawnerPostBattery" value="yes" /> Battery charger
						</dt>
						<dt style="line-height:5px;">
							<form:checkbox path="pawnerPostWarranty" value="yes" /> Warranty Certificate
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
					<form:textarea path="pawnerPostDescription" class="post-description" style="max-width: 100%" pattern="[0-9A-Za-z]{0,}"></form:textarea>
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