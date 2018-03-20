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
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>pawnshop-estimate-form</title>

<script type="application/x-javascript">
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 



</script>

<script src="js/jquery.min.js"></script>
<!--- start-rate---->
<script src="js/jstarbox.js"></script>
<link rel="stylesheet" href="css/jstarbox.css" type="text/css"
	media="screen" charset="utf-8" />
<script type="text/javascript">
	jQuery(function() {
		jQuery('.starbox')
				.each(
						function() {
							var starbox = jQuery(this);
							starbox
									.starbox(
											{
												average : starbox
														.attr('data-start-value'),
												changeable : starbox
														.hasClass('unchangeable') ? false
														: starbox
																.hasClass('clickonce') ? 'once'
																: true,
												ghosting : starbox
														.hasClass('ghosting'),
												autoUpdateAverage : starbox
														.hasClass('autoupdate'),
												buttons : starbox
														.hasClass('smooth') ? false
														: starbox
																.attr('data-button-count') || 5,
												stars : starbox
														.attr('data-star-count') || 5
											})
									.bind(
											'starbox-value-changed',
											function(event, value) {
												if (starbox.hasClass('random')) {
													var val = Math.random();
													starbox.next().text(
															' ' + val);
													return val;
												}
											})
						});
	});
</script>
<!---//End-rate---->
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
	<jsp:include page="navbar.jsp" />

	<!--banner-->
	<div class="banner-top">
		<div class="container">
			<h1>Single</h1>
			<em></em>
			<h2>
				<a href="index.html">Home</a> <label>/</label>Single
			</h2>
		</div>
	</div>
	<div class="single">

		<div class="container">
			<div class="col-md-11">
				<div class="col-md-4 grid">
					<div class="flexslider">
						<ul class="slides">
						<c:forEach var="pic" items="${pictures}">
							<li data-thumb="images/${pic.picture}">
								<div class="thumb-image">
									<img src="images/${pic.picture}" data-imagezoom="true"
										class="img-responsive">
								</div>
							</li>
							</c:forEach>
							
						</ul>
					</div>
				</div>
				<div class="col-md-7 single-top-in">
					<div class="span_2_of_a1 simpleCart_shelfItem">
						<h3>${pawnerPost.pawnerPostName }${post.pawnerPostBrand }</h3>
						<p class="in-para">Infoation</p>
						<div class="price_single">
							<span class="reducedfrom item_price">$140.00</span> <a href="#">click
								for offer</a>
							<div class="clearfix"></div>
						</div>
						<h4 class="quick">Other Detail:</h4>
						<p class="quick_desc">Nam liber tempor cum soluta nobis
							eleifend option congue nihil imperdiet doming id quod mazim
							placerat facer possim assum. Typi non habent claritatem insitam;
							es</p>
						<div class="wish-list">
							<ul>
								<li class="wish"><a href="#"> <span
										class="glyphicon glyphicon-check" aria-hidden="true"></span>Add
										to Wishlist
								</a></li>
								<li class="compare"><a href="#"> <span
										class="glyphicon glyphicon-resize-horizontal"
										aria-hidden="true"></span>Add to Compare
								</a></li>
							</ul>
						</div>
						<div class="quantity">
							<form:form method="post" action="saveEstimate.html"
								commandName="estimate">
								<form:hidden path="estimateId" />
								<form:hidden path="pawnshopId.pawnshopId" />
								<form:hidden path="pawnerPostId.pawnerPostId"
									value="${pawnerPost.pawnerPostId}" />
								<div class="quantity-select">
									<div class="#">
										<form:input path="estimatePriceMin" class="#"
											pattern="[0-9]{2,45}" required="required" />
									</div>

									<div class="#">
										<form:input path="estimatePriceMax" class="#"
											pattern="[0-9]{2,45}" required="required" />
									</div><div>
									<button type="submit" class="add-to item_add hvr-skew-backward">Estimate
									Item</button></div>
								</div>
								
							</form:form>
						</div>


						<div class="clearfix"></div>
					</div>

				</div>
				<div class="clearfix"></div>
			</div>
			<!--//content-->
		</div>
	</div>

	<section>
		<div class="container">
			<div class="preview-main">
				<div class="preview-header-wrapper">
					<div class="d-flex">
						<div class="mr-auto p-2">
							<h5 class="product-title">${pawnerPost.pawnerPostName }
								${post.pawnerPostBrand }
								<!-- Electronic camera-->
								<c:if test="${pawnerPost.pawnerPostTypeCamera != null}">
									${pawnerPost.pawnerPostTypeCamera }
									${pawnerPost.pawnerPostCameraLen }
								</c:if>
							</h5>
						</div>
						<div class="ml-auto p-2">
							<fmt:formatDate type="both" dateStyle="long" timeStyle="short"
								value="${post.pawnerPostDate }" />
						</div>
					</div>

					<br>ผู้จำนำ ${pawnerPost.pawnerId.pawnerFirstname}
					${pawnerPost.pawnerId.pawnerLastname} จังหวัด
					${pawnerPost.pawnerId.pawnerProvince}
				</div>
	
					<div class="preview col-md-4">
						<h6 class="product-title">Detail</h6>
						<ul>

							<!-- Watch,Electronic -->
							<c:if test="${pawnerPost.pawnerPostModel != null}">
								<li>Production : ${pawnerPost.pawnerPostProduction}</li>
								<li>Model : ${pawnerPost.pawnerPostModel}</li>
								<li>Serial : ${pawnerPost.pawnerPostSerial}</li>
								<li>Warranty : ${pawnerPost.pawnerPostWarranty}</li>
								<li>Purchase : ${pawnerPost.pawnerPostPurchase }</li>
							</c:if>

							<!-- Gold -->
							<c:if test="${pawnerPost.pawnerPostPure != null}">
								<li>Pure : ${pawnerPost.pawnerPostPure  }</li>
								<li>Weigh : ${pawnerPost.pawnerPostWeigh }</li>
								<li>Category : ${pawnerPost.pawnerPostCategory }</li>
							</c:if>

							<!-- Watch -->
							<c:if test="${pawnerPost.pawnerPostCase != null}">
								<li>Case : ${pawnerPost.pawnerPostCase }</li>
								<li>Bracelet : ${pawnerPost.pawnerPostBracelet }</li>
								<c:if test="${pawnerPost.pawnerPostDiamond != null}">
									<li>Diamond : ${pawnerPost.pawnerPostDiamond }</li>
								</c:if>
								<c:if test="${pawnerPost.pawnerPostPackage != null}">
									<li>Package : ${pawnerPost.pawnerPostPackage }</li>
								</c:if>
							</c:if>

							<!-- Electronic tv com telephone -->
							<c:if test="${pawnerPost.pawnerPostSize != null}">
								<li>Size : ${pawnerPost.pawnerPostSize }</li>
							</c:if>

							<!-- Electronic camera com telephone -->
							<c:if test="${pawnerPost.pawnerPostBattery != null}">
								<li>Battery : ${pawnerPost.pawnerPostBattery }</li>
							</c:if>

							<!-- Electronic com telephone -->
							<c:if test="${pawnerPost.pawnerPostHarddisk != null}">
								<li>Harddisk : ${pawnerPost.pawnerPostHarddisk }</li>
							</c:if>

							<!-- Electronic tv -->
							<c:if test="${pawnerPost.panwePostRemote != null}">
								<li>Remote : ${pawnerPost.panwePostRemote }</li>
							</c:if>

							<!-- Electronic com-->
							<c:if test="${pawnerPost.pawnerPostRam != null}">
								<li>Ram : ${pawnerPost.pawnerPostRam }</li>
							</c:if>


							<!-- Electronic telephone-->
							<li>Description : ${pawnerPost.pawnerPostDescription }</li>
						</ul>




					</div>
					<%-- 		<div class="preview col-md-3 border-left-1">
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
											pattern="[0-9]{2,45}" required="required" />
									</div>
									<div class="form-group-post ">
										<span>Max</span>
										<form:input path="estimatePriceMax" class="post-name"
											pattern="[0-9]{2,45}" required="required" />
									</div>
								</div>
								<div class="form-group-post float-left">
									<button type="submit" class="summit-data">Create post</button>
								</div>
							</form:form>
						</div>
					</div> --%>
				</div>
			</div>
		</div>
	</section>

	<script src="js/imagezoom.js"></script>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script defer src="js/jquery.flexslider.js"></script>
	<link rel="stylesheet" href="css/flexslider.css" type="text/css"
		media="screen" />

	<script>
		// Can also be used with $(document).ready()
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				controlNav : "thumbnails"
			});
		});
	</script>

	<script src="js/simpleCart.min.js">
		
	</script>
	<!-- slide -->
	<script src="js/bootstrap.min.js"></script>


</body>
</html>