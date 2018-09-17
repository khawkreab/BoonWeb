<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="img/logos/Artboard.png">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>order</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<script src="js/checkLogin.js"></script>

<<<<<<< HEAD
=======
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

.tha {
	text-align: left;
	padding: 8px;
	font-size: 14.5px;
	background-color: #ff7f00;
	color: #fff;
}

.tda {
	text-align: left;
	padding: 20px;
	color: #000;
}

tr:hover {
	background-color: #dddddd;
}

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

#meta {
	margin-top: 1px;
	width: 300px;
	float: right;
}
</style>
>>>>>>> master
</head>
<body>
	<jsp:include page="navbar.jsp" />
	<!--banner-->
	<div class="banner-top">
		<div>
			<h1>ประวัตการสั่งซื้อ</h1>
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
							<th class="tha">โรงรับจำนำที่ซื้อ</th>
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
								<td class="tda"><img class="img-responsive"
									style="width: 100px; height: 50px;"
									src="images/imageUpload/${order.pawnshopPostId.pawnshopPostPicture }" /></td>
								<td class="tda">${order.pawnshopPostId.pawnshopPostName }</td>
								<td class="tda">${order.pawnshopPostId.pawnshopPostItemType }</td>
								<td class="tda">${order.pawnshopPostId.pawnshopId.pawnshopName }</td>
								<td class="tda">${order.pawnshopPostId.pawnshopPostPrice }</td>
								<td><a href="#" id="${pawnshopPost.pawnshopPostId}"
									onClick="select(this); return false;"
									data-cart='{"pawnshopPostId":"${order.pawnshopPostId.pawnshopId.pawnshopName}",
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
								"pawnshopPostPicture":"${order.pawnshopPostId.pawnshopPostPicture}"
								}'>
										<i class="far fa-file-alt"></i>
								</a></td>
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
		function select(e) {

			var cart = {}
			cart = JSON.parse(e.getAttribute('data-cart'))

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
			$("#pawnshopPostPicture")
					.append(
							'<img style="width:200px;height:200px;" src="images/imageUpload/'+cart.pawnshopPostPicture+'">')

			console.log("this show pawnshopPostName => "
					+ cart.pawnshopPostName)
			window.print();
		}
	</script>

	<div class="printable">
		<div class="popup" data-popup="popup">
			<div>
				<p style="font-size: 32px; border-bottom: 1px solid;">ใบชำระของหลุดจำนำ</p>
				<div class="row">
					<div class="col-sm-6">
						<p>ที่อยู๋โรงรับจำนำ</p>
						<p>ในนี้ใสที่อยู๋โรงรับจำนำที่ get from database</p>
					</div>
					<div class="col-sm-6">
						<table id="meta">
							<tr>
								<td>ชื่อเจ้าของโพส</td>
								<td>
									<div id="pawnshopPostId"></div>
								</td>
							</tr>
							<tr>
								<td>ชื่อโพส</td>
								<td>
									<div id="pawnshopPostName"></div>
								</td>
							</tr>
							<tr>
								<td>วันที่โพส</td>
								<td>
									<div id="pawnshopPostDate"></div>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<table id="items">
					<tr>
						<th>ชนิดของสินค้า</th>
						<th>รายละเอียด</th>
						<th>จำนวน</th>
						<th>ราคาสินค้า</th>
					</tr>
					<tr class="item-row">
						<td class="item-name">
							<p id="pawnshopPostItemType">pawnshopPostItemType</p>
						</td>
						<td class="description">
							<ul>
								<li id="panwePostRemote"></li>
								<li id="pawnshopPostBattery"></li>
								<li id="pawnshopPostBracelet"></li>
								<li id="pawnshopPostCategory"></li>
								<li id="pawnshopPostBrand"></li>
								<li id="pawnshopPostCameraLen"></li>
								<li id="pawnshopPostCapacity"></li>
								<li id="pawnshopPostCase"></li>
								<li id="pawnshopPostCategory"></li>
								<li id="pawnshopPostDescription"></li>
								<li id="pawnshopPostDevice"></li>
								<li id="pawnshopPostDiamond"></li>
								<li id="pawnshopPostHarddisk"></li>
								<li id="pawnshopPostModel"></li>
								<li id="pawnshopPostPackage"></li>
								<li id="pawnshopPostProduction"></li>
								<li id="pawnshopPostPure"></li>
								<li id="pawnshopPostSerial"></li>
								<li id="pawnshopPostRam"></li>
								<li id="pawnshopPostSize"></li>
								<li id="pawnshopPostStatus"></li>
								<li id="pawnshopPostTypeCamera"></li>
								<li id="pawnshopPostWarranty"></li>
								<li id="pawnshopPostWeigh"></li>
							</ul>
						</td>
						<td>
							<p>1</p>
						</td>
						<td>
							<p id="pawnshopPostPrice"></p>
						</td>
					</tr>
					<tr>
						<td colspan="5">
							<p>รูปสินค้า</p> <span id="pawnshopPostPicture"></span>
						</td>
					</tr>
				</table>
				<div id="terms">
					<h5></h5>
					<p>
						<img src="img/logos/Artboard.png" style="height: 25px;" />b2pawn.com
					</p>
				</div>
			</div>
		</div>

	</div>
</body>
</html>