<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>${pawnshopPost.pawnshopPostName }</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<%
	int dataslideto = 0, dataslideto2 = 0;
	String active = "active", active2 = "active";
%>
</head>
<body>
	<!-- Navigation bar -->
	<jsp:include page="navbar.html" />
	<!-- banner -->
	<div class="banner-top">
		<h1>รายละเอียดสินค้า</h1>
		<em></em>
	</div>
	<section>
		<div class="product-detail">
			<div class="d-flex">
				<!-- left -->
				<div class="product-detail-left mr-auto">
					<!-- date -->
					<div class="date">
						<span class="day">
							<fmt:formatDate pattern="dd" value="${pawnshopPost.pawnshopPostDate }" />
						</span>
						<span class="month">
							<fmt:formatDate pattern="MMM" value="${pawnshopPost.pawnshopPostDate }" />
						</span>
						<span class="year">
							<fmt:formatDate pattern="yyyy" value="${pawnshopPost.pawnshopPostDate }" />
						</span>
					</div>
					<div id="demo" class="carousel card-carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ul class="card-carousel-indicators carousel-indicators">
							<c:forEach var="pic" items="${pictures}">
								<li data-target="#demo" data-slide-to="<%=dataslideto%>" class="<%=active%>">
									<img src="img/uploadimg/pawnshopPost/${pic.picture}">
								</li>
								<%
									dataslideto++;
										if (dataslideto > 0) {
											active = "";
										}
								%>
							</c:forEach>
						</ul>
						<!-- The slideshow -->
						<div class="carousel-inner card-carousel-inner">
							<c:forEach var="pic" items="${pictures}">
								<div class="carousel-item <%=active2%>">
									<img src="img/uploadimg/pawnshopPost/${pic.picture}">
								</div>
								<%
									dataslideto2++;
										if (dataslideto2 > 0) {
											active2 = "";
										}
								%>
							</c:forEach>
						</div>
						<!-- Left and right controls -->
						<a class="carousel-control-prev" href="#demo" data-slide="prev">
							<span class="carousel-control-prev-icon"></span>
						</a>
						<a class="carousel-control-next" href="#demo" data-slide="next">
							<span class="carousel-control-next-icon"></span>
						</a>
					</div>
				</div>
				<!-- right -->
				<div class="product-detail-right mr-auto">
					<h1>${pawnshopPost.pawnshopPostName }</h1>
					<p>
						โดย
						<a href="profile.html?usercode=${pawnshopPost.pawnshopId.pawnshopUsercode}">${pawnshopPost.pawnshopId.pawnshopName}</a>
						| จังหวัด ${pawnshopPost.pawnshopId.pawnshopProvince}
					</p>
					<line-x></line-x>
					<ul class="row">
						<!-- Electronic camera-->
						<c:if test="${pawnshopPost.pawnshopPostTypeCamera != null}">
							<li class="col-md-6">${pawnshopPost.pawnshopPostTypeCamera }</li>
							<li class="col-md-6">${pawnshopPost.pawnshopPostCameraLen }</li>
						</c:if>
						<!-- Watch,Electronic -->
						<c:if test="${pawnshopPost.pawnshopPostModel != null}">
							<li class="col-md-6">รุ่น : ${pawnshopPost.pawnshopPostModel}</li>
							<li class="col-md-6">หมายเลขผลิตภัณฑ์: ${pawnshopPost.pawnshopPostSerial}</li>
							<li class="col-md-6">ปีที่ซื้อ : <fmt:formatDate pattern="dd MMMM yyyy" value="${pawnshopPost.pawnshopPostPurchase }"/></li>
						</c:if>
						<!-- Gold -->
						<c:if test="${pawnshopPost.pawnshopPostPure != null}">
							<li class="col-md-6">ความบริสุทธิ์ : ${pawnshopPost.pawnshopPostPure  }</li>
							<li class="col-md-6">น้ำหนัก : ${pawnshopPost.pawnshopPostWeigh } กรัม</li>
							<li class="col-md-6">ชนิด : ${pawnshopPost.pawnshopPostCategory }</li>
						</c:if>
						<!-- Watch -->
						<c:if test="${pawnshopPost.pawnshopPostCase != null}">
							<li class="col-md-6">Case : ${pawnshopPost.pawnshopPostCase }</li>
							<li class="col-md-6">สาย : ${pawnshopPost.pawnshopPostBracelet }</li>
							<c:if test="${pawnshopPost.pawnshopPostDiamond != null}">
								<li class="col-md-6">เพชร : ${pawnshopPost.pawnshopPostDiamond }</li>
							</c:if>
						</c:if>
						<!-- Electronic tv com telephone -->
						<c:if test="${pawnshopPost.pawnshopPostSize != null}">
							<li class="col-md-6">ขนาด : ${pawnshopPost.pawnshopPostSize }</li>
						</c:if>
						<!-- Electronic com telephone -->
						<c:if test="${pawnshopPost.pawnshopPostHarddisk != null}">
							<li class="col-md-6">ฮาร์ดดิส : ${pawnshopPost.pawnshopPostHarddisk } GB</li>
						</c:if>
						<!-- Electronic com-->
						<c:if test="${pawnshopPost.pawnshopPostRam != null}">
							<li class="col-md-6">แรม : ${pawnshopPost.pawnshopPostRam }</li>
						</c:if>
						<!-- Electronic camera com telephone -->
						<c:if test="${pawnshopPost.pawnshopPostBattery != null}">
							<li class="col-md-6">
								<span class="fas fa-check" aria-hidden="true"> </span>
								แบตเตอรี่
							</li>
						</c:if>
						<!-- Electronic tv -->
						<c:if test="${pawnshopPost.pawnshopPostRemote != null}">
							<li class="col-md-6">
								<span class="fas fa-check" aria-hidden="true"> </span>
								รีโมท
							</li>
						</c:if>
						<!-- Watch -->
						<c:if test="${pawnshopPost.pawnshopPostCase != null}">
							<c:if test="${pawnshopPost.pawnshopPostPackage != null}">
								<li class="col-md-6">
									<span class="fas fa-check" aria-hidden="true"> </span>
									กล่อง
								</li>
							</c:if>
						</c:if>
						<!-- Watch,Electronic -->
						<c:if test="${pawnshopPost.pawnshopPostModel != null}">
							<li class="col-md-6">
								<span class="fas fa-check" aria-hidden="true"> </span>
								ประกัน
							</li>
						</c:if>
					</ul>
					<c:if test="${pawnshopPost.pawnshopPostDescription != null}">
						<p class="quantity">
							เพิ่มเติม :
							<span>${pawnshopPost.pawnshopPostDescription}</span>
						</p>
					</c:if>
					<p class="quantity">
						จำนวน :
						<span>${pawnshopPost.pawnshopPostQuality}</span>
						ชิ้น
					</p>
				</div>
			</div>
			<!-- footer -->
			<div class="product-detail-footer d-flex">
				<div class="mr-auto">
					<p id="price">ราคา ${pawnshopPost.pawnshopPostPrice} บาท</p>
				</div>
				<div class="ml-auto">
					<a href="#" id="${pawnshopPost.pawnshopPostId}" onClick="select(this); return false;"
						data-cart='{"pawnshopPostId":"${pawnshopPost.pawnshopPostId}",
									"pawnshopPostName":"${pawnshopPost.pawnshopPostName }",
									"pawnshopPostPrice":" ${pawnshopPost.pawnshopPostPrice}",
									"pawnshopName": "${pawnshopPost.pawnshopId.pawnshopName }",
									"pawnshopPostPicture": "${pawnshopPost.pawnshopPostPicture}"}'
						class="hvr-skew-backward">
						<c:if test="${pawnshopPost.pawnshopPostQuality != '0'}">
							<button class="btn-custom btn-custom-defalt">เพิ่มลงตะกร้าสินค้า</button>
						</c:if>
						<c:if test="${pawnshopPost.pawnshopPostQuality == '0'}">
							<button class="btn-custom btn-custom-gray" disabled>เพิ่มลงตะกร้าสินค้า</button>
						</c:if>
					</a>
				</div>
			</div>
		</div>
	</section>
	<!------------------------------------------------ pop up shopping cart -------------------------------------------------->
	<div class="modal fade" id="modalCart" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content product-detail-modal">
				<div class="product-detail-containern">
					<div class="product-detail-modal-left">
						<p class="col-md-12 text-success h5">
							<i class="fas fa-check-circle"></i>
							สินค้าจำนวน 1 รายการได้ถูกเพิ่มลงในตะกร้าของท่านแล้ว
						</p>
						<p class="product-detail-eula d-flex">
							<span class="h6">${pawnshopPost.pawnshopPostName } ${post.pawnshopPostBrand }</span>
							<span class="h6 ml-auto"> ${pawnshopPost.pawnshopPostPrice} บาท </span>
						</p>
						<p class="product-detail-eula">
							<span class="small">โดย ${pawnshopPost.pawnshopId.pawnshopName} | ${pawnshopPost.pawnshopId.pawnshopProvince}</span>
						</p>
					</div>
					<div class="product-detail-modal-right">
						<div class="product-detail-checkcart">
							<div>
								<span class="h5">
									ตะกร้าสินค้า
									<small class="text-secondary">
										(จำนวน
										<i id="cartNumberi"></i>
										ชิ้น)
									</small>
								</span>
							</div>
							<div class="d-flex h6">
								<span class="mr-auto">ยอดรวม</span>
								<span>
									<i id="totalPrice"></i>
									บาท
								</span>
							</div>
							<div class="d-flex h6">
								<span class="mr-auto">ยอดรวมทั้งสิ้น</span>
								<span>
									<i id="totalPriceFee"></i>
									บาท
								</span>
							</div>
							<div class="d-flex">
								<span class="mr-auto">
									<a href="pawner-off-pledge.html" class="btn-custom btn-custom-blue">เลือกสินค้าต่อ</a>
								</span>
								&nbsp;
								<span class="">
									<a href="pawner-cart.html" class="btn-custom btn-custom-defalt">ไปยังตะกร้าสินค้า </a>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- -------------------------------------------------------------------------------------------------- -->
	<!------------------------------------------------ pop up have item cart ----------------------------------------------->
	<div class="modal fade" id="modalIncart" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content product-detail-modal">
				<div class="product-detail-containern">
					<div class="product-detail-modal-left mx-auto d-inline-flex">
						<div class="d-flex align-items-center" style="width: 20%;">
							<p>
								<i class="fas fa-exclamation-circle text-warring" style="font-size: 4rem; margin-left: 15px;"></i>
							<p>
						</div>
						<div class="mr-auto">
							<p class="text-warring" style="font-size: 1.5rem;">ท่านมีรายการสินค้านี้ในตะกร้าแล้ว</p>
							<p>
								<a href="pawner-cart.html" class="btn-custom btn-custom-defalt">ไปยังตะกร้าสินค้า </a>
							</p>
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
	    var validitem = true;
	    /* check between item in cart with current item */
	    cart = JSON.parse(e.getAttribute('data-cart'))
	    for (i = 0; i < list.length; i++) {
		if (list[i].pawnshopPostId == cart.pawnshopPostId) {

		    validitem = false;
		    $('#modalIncart').modal()

		}
	    }
	    if (validitem) {
		/* add item to cart */
		$('#modalCart').modal()
		this.list.push(this.cart)
		sessionStorage.setItem('carts', JSON.stringify(this.list))
		this.check()
	    }
	}

	function check() {
	    var totalPrice = 0
	    if (sessionStorage.getItem('carts')) {
		list = JSON.parse(sessionStorage.getItem('carts'))

		console.log("list legth => " + list.length)
		if (list.length != 0) {
		    /* set cart size */
		    sessionStorage.setItem('pawnercartSize', list.length)
		    console.log(sessionStorage.getItem('pawnercartSize'))
		    /* get cart size */
		    document.getElementById("cartSize").style.display = "block";
		    document.getElementById("cartSize").innerHTML = list.length
		    document.getElementById("cartNumberi").innerHTML = list.length
		    /* get notification */
		    document.getElementById("notifi").style.display = "block";
		}

		for ( var index in this.list) {
		    totalPrice += parseFloat(this.list[index].pawnshopPostPrice
			    .replace(/\,/g, ''), 10)
		}

		$('#totalPrice, #totalPriceFee').text(
			totalPrice.toLocaleString('en'))

	    }
	}
    </script>
</body>
</html>