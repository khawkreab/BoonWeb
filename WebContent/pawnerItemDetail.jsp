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
		<h1>รายละเอียดสินค้า</h1>
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
									<li class="col-md-6"><span class="fas fa-check"
										aria-hidden="true"> </span> Battery</li>
								</c:if>

								<!-- Electronic tv -->
								<c:if test="${pawnshopPost.pawnshopPostRemote != null}">
									<li class="col-md-6"><span class="fas fa-check"
										aria-hidden="true"> </span> Remote</li>
								</c:if>

								<!-- Watch -->
								<c:if test="${pawnshopPost.pawnshopPostCase != null}">
									<c:if test="${pawnshopPost.pawnshopPostPackage != null}">
										<li class="col-md-6"><span class="fas fa-check"
											aria-hidden="true"> </span> Package</li>
									</c:if>
								</c:if>

								<!-- Watch,Electronic -->
								<c:if test="${pawnshopPost.pawnshopPostModel != null}">
									<li class="col-md-6"><span class="fas fa-check"
										aria-hidden="true"> </span> Warranty</li>
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
							<div class="text-orange">฿ ${pawnshopPost.pawnshopPostPrice}</div>
							<div class="ml-auto">

								<a href="#" id="${pawnshopPost.pawnshopPostId}"
									onClick="select(this); return false;"
									data-cart='{"pawnshopPostId":"${pawnshopPost.pawnshopPostId}","pawnshopPostName":"${pawnshopPost.pawnshopPostName } ${post.pawnshopPostBrand }","pawnshopPostPrice":" ${pawnshopPost.pawnshopPostPrice}"}'
									class="hvr-skew-backward" data-toggle="modal"
									data-target="#modalCart">เพิ่มลงตะกร้า</a>
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


	<!------------------------------------------------ pop up -------------------------------------------------->
	<div class="modal fade" id="modalCart" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="re-con item-detail-popup">
					<div class="row">
						<div class="col-md-8 ">
							<div class="col-md-12 text-success h5">
								<i class="fas fa-check-circle"></i> สินค้าจำนวน 1
								รายการได้ถูกเพิ่มลงในรถเข็นของท่าน
							</div>
							<div class="d-flex flex-row">
								<div class="col-md-3">
									<img style="width: 100%"
										src="images/imageUpload/${pawnshopPost.pawnshopPostPicture}">
								</div>
								<div class="col-md-8">
									<span class="h6">${pawnshopPost.pawnshopPostName } ${post.pawnshopPostBrand }</span>
									<div class="clear-fix"></div>
									<span class="small">By
										${pawnshopPost.pawnshopId.pawnshopName} from
										${pawnshopPost.pawnshopId.pawnshopProvince}</span>
									<div class="clear-fix"></div>
									<span class="h6 text-orange">฿
										${pawnshopPost.pawnshopPostPrice}</span>
								</div>
							</div>
						</div>
						<div class="col-md-4 item-detail-checkcart">
							<span class="h6">ตะกร้า <small class="text-secondary">(จำนวน
									<i id="cartNumberi"></i> ชิ้น)
							</small></span>
							<div class="d-flex small">
								<span class="mr-auto">ยอดรวม</span> <span>฿ <i id="totalPrice"></i></span>
							</div>
							<div class="d-flex h6">
								<span class="mr-auto">ยอดรวมทั้งสิ้น</span> <span>฿ <i id="totalPriceFee"></i></span>
							</div>
							<div class="d-flex">
								<span class="mr-auto"><a href="pawner-off-pledge.html" class="item-popup-continue">เลือกสินค้าต่อ</a></span>
								<span class=""><a href="pawner-cart.html" class="item-popup-tocart">ไปยังตะกร้า</a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- -------------------------------------------------------------------------------------------------- -->


	<!-- cart script -->
	<script type="text/javascript">
		var cart = {}
		var list = []

		window.onload = this.check();
		function select(e) {
			console.log(e.getAttribute('data-cart'))
			cart = JSON.parse(e.getAttribute('data-cart'))
			this.list.push(this.cart)
			sessionStorage.setItem('carts', JSON.stringify(this.list))
			this.check()
			
			console.log("this show => "+cart.pawnshopPostName)
		}

		function check() {
			var totalPrice = 0
			if (sessionStorage.getItem('carts')) {
				list = JSON.parse(sessionStorage.getItem('carts'))

				console.log("list legth => " + list.length)
				if (list.length == null || list.length == 0) {
					document.getElementById("cartNumber").style.display = "none";
				} else {
					document.getElementById("cartNumber").style.display = "block";
					sessionStorage.setItem('pawnercartNumber', list.length)
					document.getElementById("cartNumber").innerHTML = list.length
					document.getElementById("cartNumberi").innerHTML = list.length
				}
				
				for ( var index in this.list) {
					totalPrice += parseFloat(this.list[index].pawnshopPostPrice)
				}
				
				document.getElementById("totalPrice").innerHTML = totalPrice
				document.getElementById("totalPriceFee").innerHTML = totalPrice

			}
		}
	</script>


</body>
</html>