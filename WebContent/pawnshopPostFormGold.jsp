<!-- 
// page : pawnshop-post-form
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
		 <!--content-->
		 <div class="content">
			 <div class="container">
				 <!--products-->
				 <div class="content-mid">
					 <h3>Pledge Gold</h3>
					 <label class="line">
					 </label>
					 <div class="mid-popular">
						 <div class="container-contact100 ">
							 <div class="wrap-contact100">
								 <div class="contact100-form">
									 <form:form method="post" action="saveShopPost.html" modelAttribute="pawnshopPost" enctype="multipart/form-data">
										 <input type="hidden" name="pawnshopPostId" />
										 <input type="hidden" name="pawnshopId.pawnshopId" />
										 <input type="hidden" name="pawnshopPostItemType" value="gold" />
										 <div class="form-group float-left">
											 <input name="files" type="file" onchange="readURL(this);" />
										 </div>
										 <label class="label-input100">Post Name</label>
										 <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
											 <input class="input100" type="text" name="pawnshopPostName">
										 </div>
										 <label class="label-input100">Brand or trademark</label>
										 <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
											 <input class="input100" type="text" name="pawnshopPostBrand" placeholder="">
											 <span class="focus-input100"></span>
										 </div>
										 <label class="label-input100">Purity and Weight</label>
										 <div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate="Type first name">
											 <input class="input100" type="text" name="pawnshopPostPure" placeholder="Purity">
											 <span class="focus-input100"></span>
										 </div>
										 <div class="wrap-input100 rs2-wrap-input100 validate-input" data-validate="Type last name">
											 <input class="input100" type="text" name="pawnshopPostWeigh" placeholder="Weight">
											 <span class="focus-input100"></span>
										 </div>
										 <label class="label-input100">Category</label>
										 <div class="wrap-input100 validate-input">
											 <select class="input100" type="text" name="pawnshopPostCategory" required="required">
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
											 </select>
										 </div>
										 <label class="label-input100">Description</label>
										 <div class="wrap-input100 validate-input" data-validate="Message is required">
											 <textarea class="input100" name="pawnshopPostDescription" placeholder="Write us a message(optional) "></textarea>
											 <span class="focus-input100"></span>
										 </div>
										 <label class="label-input100">Price</label>
											<div class="wrap-input100 validate-input" data-validate="Message is required">
												<input class="input100" name="pawnshopPostPrice" placeholder=" "/>
												<span class="focus-input100"></span>
											</div>
										 <div class="form-group-post float-left">
											 <input type="checkbox" required="required"> I agree to the
											 <strong>trem of service</strong>
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