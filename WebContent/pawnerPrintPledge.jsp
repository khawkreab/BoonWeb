	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<img src="img/logos/logofull.png"> <span>b2pawn.com</span>
		</div>
		<div class="print-pledge-saler">
			<i>โรงรับจำนำ ${pledge.pawnshopId.pawnshopName }</i> <i>ที่อยู่
				${pledge.pawnshopId.pawnshopProvince }</i> <i>${pledge.pawnshopId.pawnshopTel }</i>
		</div>
		<div class="print-pledge-customer">
			<i>รหัสลูกค้า ${pledge.pawnerPostId.pawnerId.userCode}</i> <i>ชื่อผู้จำนำ
				${pledge.pawnerPostId.pawnerId.pawnerFirstname }
				${pledge.pawnerPostId.pawnerId.pawnerLastname }</i> <i>ที่อยู่
				${pledge.pawnerPostId.pawnerId.pawnerProvince }</i>
		</div>
		<div class="print-pledge">
			<div class="print-pledge-detail">
				<span>การจำนำ</span> <i>เลขที่การจำนำ #</i> <i> วันที่ลงของจำนำ
					<fmt:formatDate pattern="dd MMMM yyyy"
						value="${ pledge.pawnerPostId.pawnerPostDate }" />
				</i> <i> วันที่มีการเสนอราคา <fmt:formatDate pattern="dd MMMM yyyy"
						value="${ pledge.estimateDate }" />
				</i> <i> วันที่รับข้อเสนอ <fmt:formatDate pattern="dd MMMM yyyy"
						value="${ pledge.estimateAccessDate }" />
				</i> <i>ราคาที่ถูกเสนอไว้ ${ pledge.estimatePriceMin } - ${ pledge.estimatePriceMax }
					บาท</i>
			</div>
			<div class="print-pledge-item">
				<span>รายละเอียดของจำนำ</span><i>${pledge.pawnerPostId.pawnerPostName}</i>
				<div class="print-pledge-item-detail">
					<div class="print-pledge-item-detail-img">
						<img src="img/uploadimge/pawnerPost/${pledge.pawnerPostId.pawnerPostPicture}"/>
					</div>
					<div class="print-pledge-item-detail-list">
						<ul class="row">
							<!-- Watch,Electronic -->
							<c:if test="${pledge.pawnerPostId.pawnerPostModel != null}">
								<li>รุ่น : ${pledge.pawnerPostId.pawnerPostModel}</li>
								<li>หมายเลขประจำเครื่อง :
									${pledge.pawnerPostId.pawnerPostSerial}</li>
								<li>ปีที่ซื้อสินค้า :
									${pledge.pawnerPostId.pawnerPostPurchase}</li>
							</c:if>
							<c:if test="${pledge.pawnerPostId.pawnerPostProduction != null}">
								<li>ปีที่ผลิตสินค้า :
									${pledge.pawnerPostId.pawnerPostProduction}</li>
							</c:if>
							<!-- Gold -->
							<c:if test="${pledge.pawnerPostId.pawnerPostPure != null}">
								<li>ยี่ห้อ : ${pledge.pawnerPostId.pawnerPostBrand}</li>
								<li>ความบริสุทธ์ : ${pledge.pawnerPostId.pawnerPostPure}</li>
								<li>น้ำหนัก : ${pledge.pawnerPostId.pawnerPostWeigh}</li>
								<li>ชนิดหรือรูปแบบของทองคำ :
									${pledge.pawnerPostId.pawnerPostCategory}</li>
							</c:if>
							<!-- Electronic tv com telephone -->
							<c:if test="${pledge.pawnerPostId.pawnerPostSize != null}">
								<li>ขนาดหน้าจอ : ${pledge.pawnerPostId.pawnerPostSize}</li>
							</c:if>
							<!-- Electronic camera com telephone -->
							<c:if test="${pledge.pawnerPostId.pawnerPostBattery != null}">
								<li><span class="fas fa-check" aria-hidden="true"> </span>
									Battery</li>
							</c:if>
							<!-- Electronic com telephone -->
							<c:if test="${pledge.pawnerPostId.pawnerPostHarddisk != null}">
								<li>Harddisk : ${pledge.pawnerPostId.pawnerPostHarddisk}</li>
							</c:if>
							<!-- Electronic com-->
							<c:if test="${pledge.pawnerPostId.pawnerPostRam != null}">
								<li>Ram : ${pledge.pawnerPostId.pawnerPostRam}</li>
							</c:if>
							<!-- Watch -->
							<c:if test="${pledge.pawnerPostId.pawnerPostCase != null}">
								<li>ชนิดของหน้าปัด : ${pledge.pawnerPostId.pawnerPostCase}</li>
								<li>ชนิดของสายรัดข้อมือ :
									${pledge.pawnerPostId.pawnerPostBracelet}</li>
								<c:if test="${pledge.pawnerPostId.pawnerPostDiamond != null}">
									<li>เพรช : ${pledge.pawnerPostId.pawnerPostDiamond}</li>
								</c:if>
								<c:if test="${pledge.pawnerPostId.pawnerPostPackage != null}">
									<li><span class="fas fa-check" aria-hidden="true">
									</span> กล้องบรรจุสินค้า</li>
								</c:if>
							</c:if>
							<!-- Electronic tv -->
							<c:if test="${pledge.pawnerPostId.panwePostRemote != null}">
								<li><span class="fas fa-check" aria-hidden="true"> </span>
									Remote</li>
							</c:if>
							<!-- Watch,Electronic -->
							<c:if test="${pledge.pawnerPostId.pawnerPostWarranty != null}">
								<li><span class="fas fa-check" aria-hidden="true"> </span>
									การประกันสินค้า</li>
							</c:if>
							<li>${pledge.pawnerPostId.pawnerPostDescription}</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="print-pledge-contact">
			<span>หากมีคำถามหรือข้อสงสัย สามารถสอบถามได้ที่</span> <span>www.b2pawn.com/helpcenter</span>
		</div>
	</section>
</body>
</html>