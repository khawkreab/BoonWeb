<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>order</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<style>
.popup {
	width: 100%;
	height: 100%;
	display: none;
	position: fixed;
	top: 0px;
	left: 0px;
	background: rgba(0, 0, 0, 0.75);
}

@media print {
	body * {
		visibility: hidden;
	}
	.printable * {
		visibility: visible;
	}
	.popup {
		display: block;
	}
}
</style>
<link rel="stylesheet" href="css/loadingPage.css">
</head>
<body style="overflow: hidden;">
	<jsp:include page="navbar.jsp" />
	<!-- loading page -->
	<div class="loadpage" id="loadpage">
		<div class='loading'>
			<span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
			</span>
			<div class='loading-base'>
				<span></span>
				<div class='loading-face'></div>
			</div>
		</div>
		<div class='loading-longfazers'>
			<span></span>
			<span></span>
			<span></span>
			<span></span>
		</div>
		<i class="loading-text">Loading . . .</i>
	</div>
	<!--banner-->
	<div class="banner-top">
		<div>
			<h1>ประวัติการสั่งซื้อ</h1>
			<em></em>
		</div>
	</div>
	<section>
		<div class="container">
			<div class="history-filter">
				<table>
					<thead>
						<tr>
							<th class="tha">ลำดับ</th>
							<th class="tha">รูป</th>
							<th class="tha">ชื้อโพส</th>
							<th class="tha">ชนิดสินค้า</th>
							<th class="tha">โรงรับจำนำ</th>
							<th class="tha">ราคา</th>
							<th class="tha">พิม</th>
						</tr>
					</thead>
					<%
						int i = 1;
					%>
					<c:forEach items="${order}" var="order">
						<tbody>
							<tr>
								<td class="tda" id="num"><%=i%></td>
								<td class="tda">
									<img class="img-responsive" style="width: 100px; height: 50px;" src="img/uploadImge/${order.pawnshopPostId.pawnshopPostPicture }" />
								</td>
								<td class="tda">${order.pawnshopPostId.pawnshopPostName }</td>
								<td class="tda">${order.pawnshopPostId.pawnshopPostItemType }</td>
								<td class="tda">${order.pawnshopPostId.pawnshopId.pawnshopName }</td>
								<td class="tda">${order.pawnshopPostId.pawnshopPostPrice }</td>
								<td>
									<a href="#" id="${pawnshopPost.pawnshopPostId}" onClick="select(this); return false;"
										data-cart='{"pawnshopPostId":"${order.pawnshopPostId.pawnshopId.pawnshopName}",
								"orderDateIn":"${ order.orderItemDateIn }",
								"pawnerFirstname":"${order.pawnerId.pawnerFirstname}","pawnerLastname":"${order.pawnerId.pawnerLastname}",
								"pawnshopPostName":"${order.pawnshopPostId.pawnshopPostName }","pawnshopPostDate":"${order.pawnshopPostId.pawnshopPostDate}",
								"pawnshopPostItemType":"${order.pawnshopPostId.pawnshopPostItemType}","pawnshopPostBrand":"${order.pawnshopPostId.pawnshopPostBrand}",
								"panwePostRemote":"${order.pawnshopPostId.pawnshopPostRemote}","pawnshopPostBattery":"${order.pawnshopPostId.pawnshopPostBattery}",
								"pawnshopPostBracelet":"${order.pawnshopPostId.pawnshopPostBracelet}","pawnshopPostCameraLen":"${order.pawnshopPostId.pawnshopPostCameraLen}",
								"pawnshopPostCapacity":"${order.pawnshopPostId.pawnshopPostCapacity}","pawnshopPostCase":"${order.pawnshopPostId.pawnshopPostCase}",
								"pawnshopPostDescription":"${order.pawnshopPostId.pawnshopPostDescription}","pawnshopPostDevice":"${order.pawnshopPostId.pawnshopPostDevice}",
								"pawnshopPostDiamond":"${order.pawnshopPostId.pawnshopPostDiamond}","pawnshopPostHarddisk":"${order.pawnshopPostId.pawnshopPostHarddisk}",
								"pawnshopPostModel":"${order.pawnshopPostId.pawnshopPostModel}","pawnshopPostPackage":"${order.pawnshopPostId.pawnshopPostPackage}",
								"pawnshopPostProduction":"${order.pawnshopPostId.pawnshopPostProduction}","pawnshopPostPurchase":"${order.pawnshopPostId.pawnshopPostPurchase}",
								"pawnshopPostSerial":"${order.pawnshopPostId.pawnshopPostSerial}","pawnshopPostStatus":"${order.pawnshopPostId.pawnshopPostStatus}",
								"pawnshopPostTypeCamera":"${order.pawnshopPostId.pawnshopPostTypeCamera}","pawnshopPostWarranty":"${order.pawnshopPostId.pawnshopPostWarranty}",
								"pawnshopPostWeigh":"${order.pawnshopPostId.pawnshopPostWeigh}","pawnshopPostRam":"${order.pawnshopPostId.pawnshopPostRam}",
								"pawnshopPostPure":"${order.pawnshopPostId.pawnshopPostPure}","pawnshopPostPrice":"${order.pawnshopPostId.pawnshopPostPrice}",
								"pawnshopPostPicture":"${order.pawnshopPostId.pawnshopPostPicture}",
								"pawnShopname":"${order.pawnshopPostId.pawnshopId.pawnshopName}",
								"pawnshopProvince":"${order.pawnshopPostId.pawnshopId.pawnshopProvince}",
								"pawnshopPostcodes":"${order.pawnshopPostId.pawnshopId.pawnshopPostcodes}",
								"pawnshopParish":"${order.pawnshopPostId.pawnshopId.pawnshopParish}",
								"pawnshopTel":"${order.pawnshopPostId.pawnshopId.pawnshopTel}"
								}'>
										<i class="far fa-file-alt"></i>
									</a>
								</td>
							</tr>
						</tbody>
						<%
							i++;
						%>
					</c:forEach>
				</table>
			</div>
		</div>
	</section>
	<script>
		/* loading page */
		window.onload = function loading() {
			if (window.location.hash) {
				document.body.style.overflowY = "auto";
				document.getElementById("loadpage").style.display = "none";
			}
			setTimeout(function() {
				if (!window.location.hash) {
					window.location = window.location + '#loaded';
					window.location.reload();
				}
			}, 1000);

		}
		/* print data */
		function select(e) {

			var cart = {}
			cart = JSON.parse(e.getAttribute('data-cart'))

			$("#pawnerName").text(
					cart.pawnerFirstname + " " + cart.pawnerLastname)
			$("#orderDateIn").text(cart.orderDateIn)
			$("#pawnshopPostName").text(cart.pawnshopPostName)
			$("#pawnshopPostId").text(cart.pawnshopPostId)
			$("#pawnshopPostItemType").text(cart.pawnshopPostItemType)
			$("#panwePostRemote").text(cart.panwePostRemote)
			$("#pawnshopPostBattery").text(cart.pawnshopPostBattery)
			$("#pawnshopPostBracelet").text(cart.pawnshopPostBracelet)
			$("#pawnshopPostBrand").text(cart.pawnshopPostBrand)
			$("#pawnshopPostCameraLen").text(cart.pawnshopPostCameraLen)
			$("#pawnshopPostCapacity").text('r' + cart.pawnshopPostCapacity)
			$("#pawnshopPostCase").text(cart.pawnshopPostCase)
			$("#pawnshopPostCategory").text(cart.pawnshopPostCategory)
			$("#pawnshopPostDate").text(cart.pawnshopPostDate)
			$("#pawnshopPostDescription").text(cart.pawnshopPostDescription)
			$("#pawnshopPostDevice").text(cart.pawnshopPostDevice)
			$("#pawnshopPostDiamond").text(cart.pawnshopPostDiamond)
			$("#pawnshopPostHarddisk").text(cart.pawnshopPostHarddisk)
			$("#pawnshopPostModel").text(cart.pawnshopPostModel)
			$("#pawnshopPostPackage").text(cart.pawnshopPostPackage)
			$("#pawnshopPostProduction").text(cart.pawnshopPostProduction)
			$("#pawnshopPostPure").text(cart.pawnshopPostPure)
			$("#pawnshopPostSerial").text(cart.pawnshopPostSerial)
			$("#pawnshopPostRam").text(cart.pawnshopPostRam)
			$("#pawnshopPostSize").text(cart.pawnshopPostSize)
			$("#pawnshopPostStatus").text(cart.pawnshopPostStatus)
			$("#pawnshopPostTypeCamera").text(cart.pawnshopPostTypeCamera)
			$("#pawnshopPostWarranty").text(cart.pawnshopPostWarranty)
			$("#pawnshopPostWeigh").text(cart.pawnshopPostWeigh)
			$("#pawnshopPostPrice").text(cart.pawnshopPostPrice)

			/* pawnshop */
			$("#pawnShopname").text(cart.pawnShopname)
			$("#pawnshopProvince").text(cart.pawnshopProvince)
			$("#pawnshopPostcodes").text(cart.pawnshopPostcodes)
			$("#pawnshopParish").text(cart.pawnshopParish)
			$("#pawnshopTel").text(cart.pawnshopTel)

			var w = window.open("", "", "width=1000,height=700");
			var toNewWindow = $("#printable").html();
			$(w.document.body).html(toNewWindow);
			w.print();

		}
	</script>
	<div id="printable">
		<!-- import all css here -->
		<div class="popup" data-popup="popup">
			<div>
				<p style="font-size: 32px; border-bottom: 1px solid;">ใบชำระของหลุดจำนำ</p>
				<div style="text-align: right;">
					<h5>ที่อยู๋โรงรับจำนำ</h5>
					<i id="pawnShopname"></i>
					<br>
					<i id="pawnshopParish"></i>
					<i id="pawnshopProvince"></i>
					<i id="pawnshopPostcodes"> </i>
					<br>
					โทร.
					<i id="pawnshopTel"></i>
				</div>
				<div>
					<table style="width: 100%; margin: 30px 0;">
						<tr>
							<td>
								ผู้ซื้อ
								<i id="pawnerName"></i>
							</td>
						</tr>
						<tr>
							<td>
								สั่งซื่อวันที่
								<i id="orderDateIn"></i>
							</td>
						</tr>
					</table>
				</div>
				<table style="width: 100%; text-align: center; border-spacing: 0px; border-color: #f80000; border-width: 0; border-left: 0; border-right: 0; border-bottom: 0; border-top: 0;" border="1">
					<tr>
						<th>รายการสินค้า</th>
						<th>รายละเอียด</th>
						<th>จำนวน</th>
						<th>ราคา (บาท)</th>
					</tr>
					<tr class="item-row">
						<td class="item-name">
							<p id="pawnshopPostName"></p>
						</td>
						<td class="description">
							<i id="panwePostRemote"></i>
							<i id="pawnshopPostBattery"></i>
							<i id="pawnshopPostBracelet"></i>
							<i id="pawnshopPostCategory"></i>
							<i id="pawnshopPostBrand"></i>
							<i id="pawnshopPostCameraLen"></i>
							<i id="pawnshopPostCapacity"></i>
							<i id="pawnshopPostCase"></i>
							<i id="pawnshopPostCategory"></i>
							<i id="pawnshopPostDescription"></i>
							<i id="pawnshopPostDevice"></i>
							<i id="pawnshopPostDiamond"></i>
							<i id="pawnshopPostHarddisk"></i>
							<i id="pawnshopPostModel"></i>
							<i id="pawnshopPostPackage"></i>
							<i id="pawnshopPostProduction"></i>
							<i id="pawnshopPostPure"></i>
							<i id="pawnshopPostSerial"></i>
							<i id="pawnshopPostRam"></i>
							<i id="pawnshopPostSize"></i>
							<i id="pawnshopPostStatus"></i>
							<i id="pawnshopPostTypeCamera"></i>
							<i id="pawnshopPostWarranty"></i>
							<i id="pawnshopPostWeigh"></i>
						</td>
						<td>
							<p>1</p>
						</td>
						<td>
							<p id="pawnshopPostPrice"></p>
						</td>
					</tr>
				</table>
				<div style="text-align: center; margin-top: 50px;">
					<img src="img/logos/logo.png" style="height: 25px;" />
					<p>b2pawn.com</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>