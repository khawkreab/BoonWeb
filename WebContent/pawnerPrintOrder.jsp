<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>order</title>
<link rel="icon" href="img/logos/logo.png">
<!-- import all css -->
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/printOrder.css">
</head>
<body>
	<section>
		<div class="print-order-title">
			<span class="mr-auto">ใบกำกับการซื้อ</span>
		</div>
		<div class="print-order-web">
			<img src="img/logos/logofull.png">
			<span>b2pawn.com</span>
		</div>
		<div class="print-order-saler">
			<i>โรงรับจำนำ  ${order.pawnshopPostId.pawnshopId.pawnshopName }</i>
			<i>ที่อยู่ ${order.pawnshopPostId.pawnshopId.pawnshopProvince }</i>
			<i>${order.pawnshopPostId.pawnshopId.pawnshopTel }</i>
		</div>
		<div class="print-order-customer">
			<i>รหัสลูกค้า</i>
			<i>ชื่อผู้ซื้อ ${order.pawnerId.pawnerFirstname }  ${order.pawnerId.pawnerLastname }</i>
			<i>ที่อยู่ ${order.pawnerId.pawnerProvince }</i>
			<br>
			<span>การสั่งซื้อ</span>
			<i>สั่งซื้อวันที่  <fmt:formatDate pattern="dd MMMM yyyy" value="${ order.orderItemDateIn }" /></i>
			<i>เลขที่ #${ order.orderItemId }</i>
		</div>
		<table class="print-order-table">
			<tr>
				<th>ชื่อสินค้า</th>
				<th>รายละเอียด</th>
				<th>จำนวน</th>
				<th>ราคา ()บาท)</th>
			</tr>
			<tr>
				<td>${order.pawnshopPostId.pawnshopPostName }</td>
				<td></td>
				<td>1</td>
				<td>${order.pawnshopPostId.pawnshopPostPrice }</td>
			</tr>
		</table>
		<div class="print-order-total">
			<span>รวมราคา ${order.pawnshopPostId.pawnshopPostPrice } บาท </span>
			<span>รวมทั้งหมด  ${order.pawnshopPostId.pawnshopPostPrice } บาท </span>
		</div>
		<div class="print-order-contact">
			<span>หากมีคำถามหรือข้อสงสัย สามารถสอบถามได้ที่</span>
			<span>www.b2pawn.com/helpcenter</span>
		</div>
	</section>
</body>
</html>