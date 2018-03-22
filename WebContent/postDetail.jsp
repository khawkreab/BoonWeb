<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<title>Detail</title>
<!-- slide picture -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />

<script type="application/x-javascript">
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 







</script>

<script src="js/jquery.min.js"></script>
<!--- start-rate---->
<script src="js/jstarbox.js"></script>
<link rel="stylesheet" href="css/jstarbox.css" type="text/css"
	media="screen" />
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
			<h1>Information</h1>
			<em></em>
		</div>
	</div>
	<div class="single">
		<div class="container">
			<div class="col-md-11">
				<div class="col-md-4 grid">
					<div class="flexslider">
						<ul class="slides">
							<c:forEach var="pic" items="${pictures}">
								<li data-thumb="images/uploadImage/${pic.picture}">
									<div class="thumb-image">
										<img src="images/uploadImage/${pic.picture}"
											data-imagezoom="true" class="img-responsive">
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="col-md-7 single-top-in">
					<div class="span_2_of_a1 simpleCart_shelfItem">
						<h3>${pawnshopPost.pawnshopPostName }
							${post.pawnshopPostBrand }</h3>
						<p class="in-para">Information</p>
						<div class="price_single">
							<div class="preview">
								<ul class="row">

									<!-- Electronic camera-->
									<c:if test="${pawnshopPost.pawnshopPostTypeCamera != null}">
										<li class="col-md-6">${pawnshopPost.pawnshopPostTypeCamera }</li>
										<li class="col-md-6">${pawnshopPost.pawnshopPostCameraLen }</li>
									</c:if>
									<!-- Watch,Electronic -->
									<c:if test="${pawnshopPost.pawnshopPostModel != null}">
										<li class="col-md-6">Production :
											${pawnshopPost.pawnshopPostProduction}</li>
										<li class="col-md-6">Model :
											${pawnshopPost.pawnshopPostModel}</li>
										<li class="col-md-6">Serial :
											${pawnshopPost.pawnshopPostSerial}</li>
										<li class="col-md-6">Purchase :
											${pawnshopPost.pawnshopPostPurchase }</li>
									</c:if>

									<!-- Gold -->
									<c:if test="${pawnshopPost.pawnshopPostPure != null}">
										<li class="col-md-6">Pure :
											${pawnshopPost.pawnshopPostPure  }</li>
										<li class="col-md-6">Weigh :
											${pawnshopPost.pawnshopPostWeigh }</li>
										<li class="col-md-6">Category :
											${pawnshopPost.pawnshopPostCategory }</li>
									</c:if>

									<!-- Watch -->
									<c:if test="${pawnshopPost.pawnshopPostCase != null}">
										<li class="col-md-6">Case :
											${pawnshopPost.pawnshopPostCase }</li>
										<li class="col-md-6">Bracelet :
											${pawnshopPost.pawnshopPostBracelet }</li>
										<c:if test="${pawnshopPost.pawnshopPostDiamond != null}">
											<li class="col-md-6">Diamond :
												${pawnshopPost.pawnshopPostDiamond }</li>
										</c:if>
									</c:if>

									<!-- Electronic tv com telephone -->
									<c:if test="${pawnshopPost.pawnshopPostSize != null}">
										<li class="col-md-6">Size :
											${pawnshopPost.pawnshopPostSize }</li>
									</c:if>


									<!-- Electronic com telephone -->
									<c:if test="${pawnshopPost.pawnshopPostHarddisk != null}">
										<li class="col-md-6">Harddisk :
											${pawnshopPost.pawnshopPostHarddisk }</li>
									</c:if>

									<!-- Electronic com-->
									<c:if test="${pawnshopPost.pawnshopPostRam != null}">
										<li class="col-md-6">Ram : ${pawnshopPost.pawnshopPostRam }</li>
									</c:if>

									<!-- Electronic camera com telephone -->
									<c:if test="${pawnshopPost.pawnshopPostBattery != null}">
										<li class="col-md-6"><span
											class="glyphicon glyphicon-check" aria-hidden="true">
										</span> Battery</li>
									</c:if>

									<!-- Electronic tv -->
									<c:if test="${pawnshopPost.pawnshopPostRemote != null}">
										<li class="col-md-6"><span
											class="glyphicon glyphicon-check" aria-hidden="true">
										</span> Remote</li>
									</c:if>

									<!-- Watch -->
									<c:if test="${pawnshopPost.pawnshopPostCase != null}">
										<c:if test="${pawnshopPost.pawnshopPostPackage != null}">
											<li class="col-md-6"><span
												class="glyphicon glyphicon-check" aria-hidden="true">
											</span> Package</li>
										</c:if>
									</c:if>

									<!-- Watch,Electronic -->
									<c:if test="${pawnshopPost.pawnshopPostModel != null}">
										<li class="col-md-6"><span
											class="glyphicon glyphicon-check" aria-hidden="true">
										</span> Warranty</li>
									</c:if>
								</ul>
							</div>
							<div class="clearfix"></div>
						</div>
						<h4 class="quick">Other Detail :</h4>
						<p class="quick_desc">${pawnshopPost.pawnshopPostDescription }</p>
						<div class="wish-list">By
							${pawnshopPost.pawnshopId.pawnshopName} from
							${pawnshopPost.pawnshopId.pawnshopProvince}</div>
						<div class="quantity">

							<div class="quantity-select row">
								<div class="col-md-6">Amount 1</div>
								<div class="col-md-4">
									<form method="post" action="saveOrder.html">
										<input type="hidden" name="pawnshopPostId"
											value="${pawnshopPost.pawnshopPostId}" />
										<button type="submit" class="item_add hvr-skew-backward">Buy</button>
									</form>
								</div>


							</div>


							<div class="clearfix"></div>
						</div>

					</div>
					<div class="clearfix"></div>
				</div>
				<!--//content-->
			</div>
		</div>
	</div>

	<script src="js/imagezoom.js"></script>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script defer src="js/jquery.flexslider.js"></script>
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