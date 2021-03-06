<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${order.pawnshopPostId.pawnshopPostName }</title>
<link rel="icon" href="img/logos/logo.png">
<!-- import all css -->
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/printOrder.css">
</head>
<body>
	<section>
		<div class="print-order-title">
			<span class="mr-auto">ใบกำกับการซื้อสินค้า</span>
		</div>
		<div class="print-order-web">
			<img src="img/logos/logofull.png"> <span>b2pawn.com</span>
		</div>
		<div class="print-order-saler">
			<i>โรงรับจำนำ ${order.pawnshopPostId.pawnshopId.pawnshopName }</i> <i
				style="max-width: 300px; height: auto; word-wrap: break-word; text-align: right;">ที่อยู่
				${order.pawnshopPostId.pawnshopId.pawnshopAddress }
				${order.pawnshopPostId.pawnshopId.pawnshopProvince }
				${order.pawnshopPostId.pawnshopId.pawnshopZipcode }</i> <i>${order.pawnshopPostId.pawnshopId.pawnshopTel }</i>
		</div>
		<div class="print-order-customer">
			<i>รหัสลูกค้า ${order.pawnerId.pawnerUsercode}</i> <i>ชื่อผู้ซื้อ
				${order.pawnerId.pawnerFirstname } ${order.pawnerId.pawnerLastname }</i>
			<i
				style="max-width: 300px; height: auto; word-wrap: break-word; text-align: left;">ที่อยู่
				${order.pawnerId.pawnerAddress } ${order.pawnerId.pawnerProvince }
				${order.pawnerId.pawnerZipcode }</i> <br> <span>การสั่งซื้อ</span>
			<i>เลขที่สั่งซื้อ #${order.pawnshopPostId.pawnshopPostCode }</i> <i>สั่งซื้อวันที่
				<fmt:formatDate pattern="d MMMM yyyy"
					value="${ order.orderItemDateIn }" />
			</i>
		</div>
		<table class="print-order-table">
			<tr>
				<th>ชื่อสินค้า</th>
				<th>รายละเอียด</th>
				<th>จำนวน</th>
				<th>ราคา (บาท)</th>
			</tr>
			<tr>
				<td>${order.pawnshopPostId.pawnshopPostName }</td>
				<td style="text-align: left;">
					<ul style="list-style: none">
						<!-- Watch,Electronic -->
						<c:if test="${order.pawnshopPostId.pawnshopPostModel != null}">
							<li>รุ่น : ${order.pawnshopPostId.pawnshopPostModel}</li>
							<li>หมายเลขประจำเครื่อง :
								${order.pawnshopPostId.pawnshopPostSerial}</li>
							<li>ปีที่ซื้อสินค้า : <fmt:formatDate pattern="d MMMM yyyy"
									value="${order.pawnshopPostId.pawnshopPostPurchase}" /></li>
						</c:if>
						<c:if
							test="${order.pawnshopPostId.pawnshopPostTypeCamera != null}">
							<li>ชนิดของกล้อง :
								${order.pawnshopPostId.pawnshopPostTypeCamera}</li>
							<li>ชนิดของเลนกล้อง :
								${order.pawnshopPostId.pawnshopPostCameraLen}</li>
						</c:if>
						<!-- Gold -->
						<c:if test="${order.pawnshopPostId.pawnshopPostPure != null}">
							<li>ยี่ห้อ : ${order.pawnshopPostId.pawnshopPostBrand}</li>
							<li>ความบริสุทธ์ : ${order.pawnshopPostId.pawnshopPostPure}</li>
							<li>น้ำหนัก : ${order.pawnshopPostId.pawnshopPostWeigh}</li>
							<li>ชนิดหรือรูปแบบของทองคำ :
								${order.pawnshopPostId.pawnshopPostCategory}</li>
						</c:if>
						<!-- Electronic tv com telephone -->
						<c:if test="${order.pawnshopPostId.pawnshopPostSize != null}">
							<li>ขนาดหน้าจอ : ${order.pawnshopPostId.pawnshopPostSize}</li>
						</c:if>
						<!-- Electronic camera com telephone -->
						<c:if test="${order.pawnshopPostId.pawnshopPostBattery != null}">
							<li><span class="fas fa-check" aria-hidden="true"> </span>
								แบตเตอร์รี่</li>
						</c:if>
						<!-- Electronic com telephone -->
						<c:if test="${order.pawnshopPostId.pawnshopPostHarddisk != null}">
							<li>ฮาร์ดดิส : ${order.pawnshopPostId.pawnshopPostHarddisk}</li>
						</c:if>
						<!-- Electronic com-->
						<c:if test="${order.pawnshopPostId.pawnshopPostRam != null}">
							<li>แรม : ${order.pawnshopPostId.pawnshopPostRam}</li>
						</c:if>
						<!-- Watch -->
						<c:if test="${order.pawnshopPostId.pawnshopPostCase != null}">
							<li>ชนิดของหน้าปัด :
								${order.pawnshopPostId.pawnshopPostCase}</li>
							<li>ชนิดของสายรัดข้อมือ :
								${order.pawnshopPostId.pawnshopPostBracelet}</li>
							<c:if test="${order.pawnshopPostId.pawnshopPostDiamond != null}">
								<li>เพรช : ${order.pawnshopPostId.pawnshopPostDiamond}</li>
							</c:if>
							<c:if test="${order.pawnshopPostId.pawnshopPostPackage != null}">
								<li>มีกล้องบรรจุสินค้า</li>
							</c:if>
						</c:if>
						<!-- Electronic tv -->
						<c:if test="${order.pawnshopPostId.pawnshopPostRemote != null}">
							<li>มีรีโมท</li>
						</c:if>
						<!-- Watch,Electronic -->
						<c:if test="${order.pawnshopPostId.pawnshopPostWarranty != null}">
							<li>มีการประกันสินค้า</li>
						</c:if>
						<c:if
							test="${order.pawnshopPostId.pawnshopPostDescription != null && order.pawnshopPostId.pawnshopPostDescription != ''}">
							<i class="quick small">เพิ่มเติม
								${order.pawnshopPostId.pawnshopPostDescription }</i>
						</c:if>
					</ul>
				</td>
				<td>1</td>
				<td>${order.pawnshopPostId.pawnshopPostPrice }</td>
			</tr>
		</table>
		<div class="print-order-total">
			<span>รวมราคา ${order.pawnshopPostId.pawnshopPostPrice } บาท </span>
			<span>รวมทั้งหมด ${order.pawnshopPostId.pawnshopPostPrice }
				บาท </span>
		</div>
	</section>
	<div class="print-order-contact">
		<span>หากมีคำถามหรือข้อสงสัย สามารถสอบถามได้ที่</span> <span>www.b2pawn.com/helpcenter</span>
	</div>
</body>
</html>