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
				<!--banner-->
				<div class="banner-top">
					<div class="container">
						<h1>Sell Wearables</h1>
						<em></em>
					</div>
				</div>
			<!--content-->
			<div class="content">
				<div class="container">
					<!--products-->
					<div class="content-mid">
						<h3>Pledge Watch</h3>
						<label class="line">
						</label>
						<div class="mid-popular">
							<div class="container-contact100 ">
								<div class="wrap-contact100">
									<div class="contact100-form">
										<form:form method="post" action="saveShopPost.html" modelAttribute="pawnshopPost" enctype="multipart/form-data">
											<input type="hidden" name="pawnshopPostId" />
											<input type="hidden" name="pawnshopId.pawnshopId" />
											<input type="hidden" name="pawnshopPostItemType" value="Electronic" />
											<div class="form-group float-left">
												<input name="files" type="file" onchange="readURL(this);" />
											</div>
											<label class="label-input100">Post Name</label>
											<div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
												<input class="input100" type="text" name="pawnshopPostName">
											</div>
											<label class="label-input100">Brand</label>
											<div class="wrap-input100 validate-input">
												<select class="input100" type="text" name="pawnshopPostBrand" required="required">
													<option>Rolex</option>
													<option>Patek Philippe</option>
													<option>Audemars Piguet</option>
													<option>Cartier</option>
													<option>Franck Muller</option>
													<option>Tag Heuer</option>
													<option>Omega</option>
													<option>Casio</option>
												</select>
											</div>
											<label class="label-input100">Type of case</label>
											<div class="wrap-input100 validate-input">
												<select class="input100" type="text" name="pawnshopPostCase" required="required">
													<option>Stainless Steel</option>
													<option>White Gold</option>
													<option>Yellow Gold</option>
													<option>Ceramic</option>
													<option>Pink Gold</option>
													<option>Others (Please specify)</option>
													<option>Unknown</option>
												</select>
											</div>
											<label class="label-input100">Type of bracelet</label>
											<div class="wrap-input100 validate-input">
												<select class="input100" type="text" name="pawnshopPostBracelet" required="required">
													<option>Stainless Steel</option>
													<option>Gold and Silver</option>
													<option>Gold</option>
													<option>Platinum</option>
													<option>Leather</option>
													<option>Plastic</option>
													<option>Rubber</option>
													<option>Others (Please specify)</option>
													<option>Unknown</option>
												</select>
											</div>
											<label class="label-input100">Is there any diamonds on your timepiece?</label>
											<div class="wrap-input100 validate-input">
												<select class="input100" type="text" name="pawnshopPostDiamond" required="required">
													<option>No</option>
													<option>Dial</option>
													<option>Bezel</option>
													<option>On the digits</option>
												</select>
											</div>
											<label class="label-input100">Production year</label>
											<div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
												<input class="input100" type="date" name="pawnshopPostProduction" placeholder="">
												<span class="focus-input100"></span>
											</div>
											<label class="label-input100">Description</label>
											<div class="wrap-input100 validate-input" data-validate="Message is required">
												<textarea class="input100" name="pawnshopPostDescription" placeholder="Write us a message(optional) "></textarea>
												<span class="focus-input100"></span>
											</div>
											<label class="label-input100">Price</label>
											<div class="wrap-input100 validate-input" data-validate="Message is required">
												<input class="input100" name="pawnshopPostPrice" placeholder=" " />
												<span class="focus-input100"></span>
											</div>
											<div class="form-group-post float-left">
												<dt style="line-height: 45px;">
													<input type="checkbox" name="pawnshopPostPackage" value="yes" /> Packaging
												</dt>
												<dt style="line-height: 5px;">
													<input type="checkbox" name="pawnshopPostWarranty" value="yes" /> Warranty Certificate
												</dt>
												<dt style="line-height: 55px;">
													<input type="checkbox" required="required"> I agree to the
													<strong>trem of service</strong>
												</dt>
											</div>
											<div class="container-contact100-form-btn">
												<button type="summot" class="contact100-form-btn">
													Create Post
												</button>
											</div>
										</form:form>
									</div>
									<!-- Picture -->
									<div class="contact100-more flex-col-c-m" style="background-image: url('img/bgIndex.jpg');">
										<div class="flex-w size1 p-b-47">
											<div class="txt1 p-r-25">
												<span class="lnr lnr-map-marker"></span>
											</div>

											<div class="flex-col size2">
												<span class="txt1 p-b-20">
													Address
												</span>

												<span class="txt2">
													Mada Center 8th floor, 379 Hudson St, New York, NY 10018 US
												</span>
											</div>
										</div>

										<div class="dis-flex size1 p-b-47">
											<div class="txt1 p-r-25">
												<span class="lnr lnr-phone-handset"></span>
											</div>

											<div class="flex-col size2">
												<span class="txt1 p-b-20">
													Lets Talk
												</span>

												<span class="txt3">
													+1 800 1236879
												</span>
											</div>
										</div>

										<div class="dis-flex size1 p-b-47">
											<div class="txt1 p-r-25">
												<span class="lnr lnr-envelope"></span>
											</div>

											<div class="flex-col size2">
												<span class="txt1 p-b-20">
													General Support
												</span>

												<span class="txt3">
													contact@example.com
												</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</body>

		</html>