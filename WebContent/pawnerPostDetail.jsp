<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="img/logos/Artboard.png">
<title>Detail</title>

<%
	int dataslideto = 0;
	int dataslideto2 = 0;
	String active = "active";
	String active2 = "active";
%>
</head>
<body>
	<jsp:include page="navbar.jsp" />

	<!--banner-->
	<div class="banner-top">
		<h1>Information</h1>
		<em></em>
	</div>


	<div class="single">
		<div class="container">
			<div class="col-md-5">

				<div class="row">
					<div class="col-md-12">
						<div id="carouselExampleIndicators" class="carousel slide"
							data-ride="carousel" data-interval="0">

							<div class="carousel-inner" role="listbox">
								<c:forEach var="pic" items="${pictures}">

									<div class="carousel-item <%=active2%>">
										<img class="d-block img-fluid"
											src="images/imageUpload/${pic.picture}" alt="First slide">
										<div class="carousel-caption d-none d-md-block">
											<h3>Pledge online</h3>
											<p>Updated every day</p>
										</div>
									</div>
									<div class="carousel-item">
										<img class="d-block img-fluid"
											src="images/imageUpload/${pic.picture}" alt="Second slide">
										<div class="carousel-caption d-none d-md-block">
											<h3></h3>
											<p></p>
										</div>
									</div>
									<%
										dataslideto2++;
											if (dataslideto2 > 0) {
												active2 = "";
											}
									%>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="col-md-12">

						<ol class="item-info-thumbs">
							<c:forEach var="pic" items="${pictures}">

								<li data-target="#carouselExampleIndicators"
									data-slide-to="<%=dataslideto%>" class="<%=active%>"><img
									class="" src="images/imageUpload/${pic.picture}" alt=""></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="1"><img
									class="" src="images/imageUpload/${pic.picture}" alt=""></li>
								<%
									dataslideto++;
										if (dataslideto > 0) {
											active = "";
										}
								%>
							</c:forEach>
						</ol>
					</div>
				</div>
			</div>
			<div class="col-md-6 single-top-in">
				<div class="span_2_of_a1 simpleCart_shelfItem">
					<h3>${pawnshopPost.pawnshopPostName }${post.pawnshopPostBrand }</h3>
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
										class="glyphicon glyphicon-check" aria-hidden="true"> </span>
										Battery</li>
								</c:if>

								<!-- Electronic tv -->
								<c:if test="${pawnshopPost.pawnshopPostRemote != null}">
									<li class="col-md-6"><span
										class="glyphicon glyphicon-check" aria-hidden="true"> </span>
										Remote</li>
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
										class="glyphicon glyphicon-check" aria-hidden="true"> </span>
										Warranty</li>
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
							<div>฿ ${pawnshopPost.pawnshopPostPrice}</div>
							<div class="ml-auto">

								<a href="#" id="${pawnshopPost.pawnshopPostId}"
									onClick="select(this); return false;"
									data-cart='{"pawnshopPostId":"${pawnshopPost.pawnshopPostId}","pawnshopPostName":"${pawnshopPost.pawnshopPostName } ${post.pawnshopPostBrand }","pawnshopPostPrice":" ${pawnshopPost.pawnshopPostPrice}"}'
									class="item_add hvr-skew-backward">เพิ่มลงตะกร้า</a>
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

	<script type="text/javascript">
		var cart = {}
		var list = []

		window.onLoad(this.check())
		function select(e) {
			console.log(e.getAttribute('data-cart'))
			cart = JSON.parse(e.getAttribute('data-cart'))
			this.list.push(this.cart)
			sessionStorage.setItem('carts', JSON.stringify(this.list))
			this.check()
		}

		function check() {
			if (sessionStorage.getItem('carts')) {
				list = JSON.parse(sessionStorage.getItem('carts'))
				data = {
					'list' : list
				}
				console.log(list.length)
			}
		};
	</script>

</body>
</html>