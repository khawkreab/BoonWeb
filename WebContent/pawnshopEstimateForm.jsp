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

<!DOCTYPE html>
<html>
<head>
<title>pawnshop-estimate-form</title>

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
			<h1>Estimate</h1>
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
										<img src="images/uploadImage/${pic.picture}" data-imagezoom="true"
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
						<p class="in-para">Information</p>
						<div class="price_single">
							<div class="preview">
								<ul class="row">

									<!-- Watch,Electronic -->
									<c:if test="${pawnerPost.pawnerPostModel != null}">
										<li class="col-md-6">Production :
											${pawnerPost.pawnerPostProduction}</li>
										<li class="col-md-6">Model :
											${pawnerPost.pawnerPostModel}</li>
										<li class="col-md-6">Serial :
											${pawnerPost.pawnerPostSerial}</li>
										<li class="col-md-6">Purchase :
											${pawnerPost.pawnerPostPurchase }</li>
									</c:if>

									<!-- Gold -->
									<c:if test="${pawnerPost.pawnerPostPure != null}">
										<li class="col-md-6">Pure : ${pawnerPost.pawnerPostPure  }</li>
										<li class="col-md-6">Weigh : ${pawnerPost.pawnerPostWeigh }</li>
										<li class="col-md-6">Category :
											${pawnerPost.pawnerPostCategory }</li>
									</c:if>



									<!-- Electronic tv com telephone -->
									<c:if test="${pawnerPost.pawnerPostSize != null}">
										<li class="col-md-6">Size : ${pawnerPost.pawnerPostSize }</li>
									</c:if>

									<!-- Electronic camera com telephone -->
									<c:if test="${pawnerPost.pawnerPostBattery != null}">
										<li class="col-md-6">Battery :
											${pawnerPost.pawnerPostBattery }</li>
									</c:if>

									<!-- Electronic com telephone -->
									<c:if test="${pawnerPost.pawnerPostHarddisk != null}">
										<li class="col-md-6">Harddisk :
											${pawnerPost.pawnerPostHarddisk }</li>
									</c:if>

									<!-- Electronic com-->
									<c:if test="${pawnerPost.pawnerPostRam != null}">
										<li class="col-md-6">Ram : ${pawnerPost.pawnerPostRam }</li>
									</c:if>

									<!-- Watch -->
									<c:if test="${pawnerPost.pawnerPostCase != null}">
										<li class="col-md-6">Case : ${pawnerPost.pawnerPostCase }</li>
										<li class="col-md-6">Bracelet :
											${pawnerPost.pawnerPostBracelet }</li>
										<c:if test="${pawnerPost.pawnerPostDiamond != null}">
											<li class="col-md-6">Diamond :
												${pawnerPost.pawnerPostDiamond }</li>
										</c:if>
										<c:if test="${pawnerPost.pawnerPostPackage != null}">
											<li class="col-md-6"><span
												class="glyphicon glyphicon-check" aria-hidden="true">
											</span> Package</li>
										</c:if>
									</c:if>

									<!-- Electronic tv -->
									<c:if test="${pawnerPost.panwePostRemote != null}">
										<li class="col-md-6"><span
											class="glyphicon glyphicon-check" aria-hidden="true">
										</span> Remote</li>
									</c:if>


									<!-- Watch,Electronic -->
									<c:if test="${pawnerPost.pawnerPostModel != null}">
										<li class="col-md-6"><span
											class="glyphicon glyphicon-check" aria-hidden="true">
										</span> Warranty</li>
									</c:if>
								</ul>
							</div>
							<div class="clearfix"></div>
						</div>
						<h4 class="quick">Other Detail :</h4>
						<p class="quick_desc">${pawnerPost.pawnerPostDescription }</p>
						<div class="wish-list">By
							${pawnerPost.pawnerId.pawnerFirstname}
							${pawnerPost.pawnerId.pawnerLastname} From
							${pawnerPost.pawnerId.pawnerProvince}</div>
						<div class="quantity">

							<div class="quantity-select row">
								<form:form method="post" action="saveEstimate.html"
									commandName="estimate">
									<form:hidden path="estimateId" />
									<form:hidden path="pawnshopId.pawnshopId" />
									<form:hidden path="pawnerPostId.pawnerPostId"
										value="${pawnerPost.pawnerPostId}" />
									<div class="col-md-4">
										<form:input path="estimatePriceMin" class="#"
											pattern="[0-9]{2,45}" required="required" placeholder="Min price"/>
									</div>
									<div class="col-md-1">-</div>
									<div class="col-md-4">
										<form:input path="estimatePriceMax" class="#"
											pattern="[0-9]{2,45}" required="required" placeholder="Max price"/>
									</div>
									<div class="col-md-3">
										<button type="submit" class="item_add hvr-skew-backward">Estimate
											Item</button>
									</div>
								</form:form>
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