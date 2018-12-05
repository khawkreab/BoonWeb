<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pledge</title>
<!-- import all css -->
<link rel="icon" href="img/logos/logo.png">
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/printPledge.css">
</head>
<body>
	<section>
		<div class="print-pledge-title">
			<span class="mr-auto">ใบกำกับการจำนำ</span>
		</div>
		<div class="print-pledge-web">
			<img src="img/logos/logofull.png">
			<span>b2pawn.com</span>
		</div>
		<div class="print-pledge-saler">
			<i>โรงรับจำนำ ${pledge.pawnshopId.pawnshopName }</i>
			<i>ที่อยู่ ${pledge.pawnshopId.pawnshopProvince }</i>
			<i>${pledge.pawnshopId.pawnshopTel }</i>
		</div>
		<div class="print-pledge-customer">
			<i>รหัสลูกค้า</i>
			<i>ชื่อผู้จำนำ ${pledge.pawnerPostId.pawnerId.pawnerFirstname } ${pledge.pawnerPostId.pawnerId.pawnerLastname }</i>
			<i>ที่อยู่ ${pledge.pawnerPostId.pawnerId.pawnerProvince }</i>
		</div>
		<div class="print-pledge">
			<div class="print-pledge-detail">
				<span>การจำนำ</span>
				<i>เลขที่การจำนำ #</i>
				<i>
					วันที่ลงของจำนำ
					<fmt:formatDate pattern="dd MMMM yyyy" value="${ pledge.pawnerPostId.pawnerPostDate }" />
				</i>
				<i>
					วันที่มีการเสนอราคา
					<fmt:formatDate pattern="dd MMMM yyyy" value="${ pledge.estimateDate }" />
				</i>
				<i>
					วันที่รับข้อเสนอ
					<fmt:formatDate pattern="dd MMMM yyyy" value="${ pledge.estimateAccessDate }" />
				</i>
				<i>ราคาที่ถูกเสนอไว้ ${ pledge.estimatePriceMin } - ${ pledge.estimatePriceMax } บาท</i>
			</div>
			<div class="print-pledge-item">
				<span>รายละเอียดของจำนำ</span>
				<br>
				<i>ชื่อของจำนำ</i>
				<div class="print-pledge-item-detail">
					<div class="print-pledge-item-detail-img">
						<img src="img/logos/logofull.png">
					</div>
					<div class="print-pledge-item-detail-list">
						<ul class="row">
							<li>ildkfgjhildfg</li>
							<li>erww</li>
							<li>p[]pwer</li>
							<li>dfg</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="print-pledge-contact">
			<span>หากมีคำถามหรือข้อสงสัย สามารถสอบถามได้ที่</span>
			<span>www.b2pawn.com/helpcenter</span>
		</div>
	</section>
</body>
</html>