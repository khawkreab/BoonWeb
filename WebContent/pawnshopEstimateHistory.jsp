<!-- 
// page : pawnshop-estimate-list
// version : 1.0
// task : list Complete
// edit by : K'win
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<link rel="icon" href="img/logos/Artboard.png">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>pawnshop-estimate-history</title>

<!-- Bootstrap Core CSS -->
<link href="BoonAdmin-css/lib/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="BoonAdmin-css/helper.css" rel="stylesheet">
<link href="BoonAdmin-css/style.css" rel="stylesheet">



</head>
<body>
	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

	<section>
		<div id="main-wrapper">
			<div class="container-fluid">
				<!-- Gold -->
				<c:forEach items="${eList}" var="estimate">
					<c:if test="${estimate.pawnerPostId.pawnerPostItemType == 'Gold'}">
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-hover ">
									<thead>
										<tr>
											<th>รูปภาพ</th>
											<th>ประเภท</th>
											<th>หมวดหมู่</th>
											<th>ชื่อโพส</th>
											<th>ความบริสุทธิ์</th>
											<th>น้ำหนัก</th>
											<th>รายละเอียด</th>
											<th>ราคาต่ำสุด</th>
											<th>ราคาสูงสุด</th>
											<th>จำนำโดย</th>
											<th>สถานะ</th>
										</tr>
									</thead>
									<c:forEach items="${eList}" var="estimate">
										<tbody>
											<tr>
												<td><img class="img-responsive"
													src="images/imageUpload/${estimate.pawnerPostId.pawnerPostPicture}"
													width="300" /></td>
												<td><c:if test="${estimate.pawnerPostId.pawnerPostItemType == 'Gold'}"> <span class="badge badge-info">ทองคำ</span></c:if></td>
												<td>${estimate.pawnerPostId.pawnerPostCategory}</td>
												<td>${estimate.pawnerPostId.pawnerPostName}</td>
												<td>${estimate.pawnerPostId.pawnerPostPure}</td>
												<td>${estimate.pawnerPostId.pawnerPostWeigh}</td>
												<td>${estimate.pawnerPostId.pawnerPostDescription}</td>
												<td>${estimate.estimatePriceMin }</td>
												<td>${estimate.estimatePriceMax }</td>
												<td>${estimate.pawnerPostId.pawnerId.pawnerFirstname}
													${estimate.pawnerPostId.pawnerId.pawnerLastname}</td>
												<td><c:if
														test="${estimate.estimateStatus == 'complete'}">
														<span class="badge badge-success">เสร็จสิ้น</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'waiting'}">
														<span class="badge badge-danger">รอดำเนินการ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'process'}">
														<span class="badge badge-warning">กำลังดำเนินการ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'proceed'}">
														<span class="badge badge-warning">กำลังดำเนินการ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'approve'}">
														<span class="badge badge-primary">ยอมรับ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'denei'}">
														<span class="badge badge-danger">ปฎิเสธ</span>
													</c:if></td>
											</tr>
										</tbody>
									</c:forEach>
								</table>
							</div>
						</div>
					</c:if>
				</c:forEach>
				<!-- End Gold -->
				<!-- Camera -->
				<c:forEach items="${eList}" var="estimate">
					<c:if
						test="${estimate.pawnerPostId.pawnerPostItemType == 'Camera'}">

						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-hover ">
									<thead>
										<tr>
											<th>รูปภาพ</th>
											<th>ประเภท</th>
											<th>แบรนด์</th>
											<th>ชื่อโพส</th>
											<th>หมายเลขผลิตภัณฑ์</th>
											<th>โมเดล</th>
											<th>ชนิดของ กล้อง</th>
											<th>ชนิดของ เลนส์</th>
											<th>ปีที่ซื้อ</th>
											<th>เครื่องชาร์จแบตเตอรี่</th>
											<th>ใบรับประกัน</th>
											<th>รายละเอียด</th>
											<th>ราคาต่ำสุด</th>
											<th>ราคาสูงสุด</th>
											<th>จำนำโดย</th>
											<th>สถานะ</th>
										</tr>
									</thead>
									<c:forEach items="${eList}" var="estimate">
										<tbody>
											<tr>
												<td><img class="img-responsive"
													src="images/imageUpload/${estimate.pawnerPostId.pawnerPostPicture}"
													width="300" /></td>
												<td><c:if test="${estimate.pawnerPostId.pawnerPostItemType == 'Camera'}"> <span class="badge badge-info">กล้อง</span></c:if></td>
												<td>${estimate.pawnerPostId.pawnerPostBrand}</td>
												<td>${estimate.pawnerPostId.pawnerPostName}</td>
												<td>${estimate.pawnerPostId.pawnerPostSerial}</td>
												<td>${estimate.pawnerPostId.pawnerPostModel}</td>
												<td>${estimate.pawnerPostId.pawnerPostTypeCamera}</td>
												<td>${estimate.pawnerPostId.pawnerPostCameraLen}</td>
												<td>${estimate.pawnerPostId.pawnerPostPurchase}</td>
												<td>${estimate.pawnerPostId.pawnerPostBattery}</td>
												<td>${estimate.pawnerPostId.pawnerPostWarranty}</td>
												<td>${estimate.pawnerPostId.pawnerPostDescription}</td>
												<td>${estimate.estimatePriceMin }</td>
												<td>${estimate.estimatePriceMax }</td>
												<td>${estimate.pawnerPostId.pawnerId.pawnerFirstname}
													${estimate.pawnerPostId.pawnerId.pawnerLastname}</td>
												<td><c:if
														test="${estimate.estimateStatus == 'complete'}">
														<span class="badge badge-success">เสร็จสิ้น</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'waiting'}">
														<span class="badge badge-danger">รอดำเนินการ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'process'}">
														<span class="badge badge-warning">กำลังดำเนินการ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'proceed'}">
														<span class="badge badge-warning">กำลังดำเนินการ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'approve'}">
														<span class="badge badge-primary">ยอมรับ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'denei'}">
														<span class="badge badge-danger">ปฎิเสธ</span>
													</c:if></td>
											</tr>
										</tbody>
									</c:forEach>
								</table>
							</div>
						</div>

					</c:if>
				</c:forEach>
				<!-- End Camera -->


				<!-- Computer&Laptop -->
				<c:forEach items="${eList}" var="estimate">
					<c:if
						test="${estimate.pawnerPostId.pawnerPostItemType == 'Laptop'}">

						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-hover ">
									<thead>
										<tr>
											<th>รูปภาพ</th>
											<th>ประเภท</th>
											<th>แบรนด์</th>
											<th>ชื่อโพส</th>
											<th>หมายเลขผลิตภัณฑ์</th>
											<th>โมเดล</th>
											<th>ขนาด หน้าจอ</th>
											<th>ขนาด ฮาร์ดดิสก์</th>
											<th>ขนาด แรม</th>
											<th>ปีที่ซื้อ</th>
											<th>ปีที่ผลิต</th>
											<th>เครื่องชาร์จแบตเตอรี่</th>
											<th>ใบรับประกัน</th>
											<th>รายละเอียด</th>
											<th>ราคาต่ำสุด</th>
											<th>ราคาสูงสุด</th>
											<th>จำนำโดย</th>
											<th>สถานะ</th>
										</tr>
									</thead>
									<c:forEach items="${eList}" var="estimate">
										<tbody>
											<tr>
												<td><img class="img-responsive"
													src="images/imageUpload/${estimate.pawnerPostId.pawnerPostPicture}"
													width="300" /></td>
												<td><c:if test="${estimate.pawnerPostId.pawnerPostItemType == 'Laptop'}"> <span class="badge badge-info">แลปท็อป และ คอมพิวเตอร์</span></c:if></td>
												<td>${estimate.pawnerPostId.pawnerPostBrand}</td>
												<td>${estimate.pawnerPostId.pawnerPostName}</td>
												<td>${estimate.pawnerPostId.pawnerPostSerial}</td>
												<td>${estimate.pawnerPostId.pawnerPostModel}</td>
												<td>${estimate.pawnerPostId.pawnerPostHarddisk}</td>
												<td>${estimate.pawnerPostId.pawnerPostRam}</td>
												<td>${estimate.pawnerPostId.pawnerPostPurchase}</td>
												<td>${estimate.pawnerPostId.pawnerPostProduction}</td>
												<td>${estimate.pawnerPostId.pawnerPostBattery}</td>
												<td>${estimate.pawnerPostId.pawnerPostWarranty}</td>
												<td>${estimate.pawnerPostId.pawnerPostDescription}</td>
												<td>${estimate.estimatePriceMin }</td>
												<td>${estimate.estimatePriceMax }</td>
												<td>${estimate.pawnerPostId.pawnerId.pawnerFirstname}
													${estimate.pawnerPostId.pawnerId.pawnerLastname}</td>
												<td><c:if
														test="${estimate.estimateStatus == 'complete'}">
														<span class="badge badge-success">เสร็จสิ้น</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'waiting'}">
														<span class="badge badge-danger">รอดำเนินการ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'process'}">
														<span class="badge badge-warning">กำลังดำเนินการ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'proceed'}">
														<span class="badge badge-warning">กำลังดำเนินการ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'approve'}">
														<span class="badge badge-primary">ยอมรับ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'denei'}">
														<span class="badge badge-danger">ปฎิเสธ</span>
													</c:if></td>
											</tr>
										</tbody>
									</c:forEach>
								</table>
							</div>
						</div>

					</c:if>
				</c:forEach>
				<!-- End Computer&Laptop -->


				<!-- Smartphone -->
				<c:forEach items="${eList}" var="estimate">
					<c:if
						test="${estimate.pawnerPostId.pawnerPostItemType == 'Smartphone'}">

						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-hover ">
									<thead>
										<tr>
											<th>รูปภาพ</th>
											<th>ประเภท</th>
											<th>แบรนด์</th>
											<th>ชื่อโพส</th>
											<th>หมายเลขผลิตภัณฑ์</th>
											<th>โมเดล</th>
											<th>หน่วยความจำ</th>
											<th>ปีที่ซื้อ</th>
											<th>ปีที่ผลิต</th>
											<th>เครื่องชาร์จแบตเตอรี่</th>
											<th>ใบรับประกัน</th>
											<th>รายละเอียด</th>
											<th>ราคาต่ำสุด</th>
											<th>ราคาสูงสุด</th>
											<th>จำนำโดย</th>
											<th>สถานะ</th>
										</tr>
									</thead>
									<c:forEach items="${eList}" var="estimate">
										<tbody>
											<tr>
												<td><img class="img-responsive"
													src="images/imageUpload/${estimate.pawnerPostId.pawnerPostPicture}"
													width="300" /></td>
												<td><c:if test="${estimate.pawnerPostId.pawnerPostItemType == 'Smartphone'}"> <span class="badge badge-info">โทรศัพท์มือถือ</span></c:if></td>
												<td>${estimate.pawnerPostId.pawnerPostBrand}</td>
												<td>${estimate.pawnerPostId.pawnerPostName}</td>
												<td>${estimate.pawnerPostId.pawnerPostSerial}</td>
												<td>${estimate.pawnerPostId.pawnerPostModel}</td>
												<td>${estimate.pawnerPostId.pawnerPostCapacity}</td>
												<td>${estimate.pawnerPostId.pawnerPostPurchase}</td>
												<td>${estimate.pawnerPostId.pawnerPostProduction}</td>
												<td>${estimate.pawnerPostId.pawnerPostBattery}</td>
												<td>${estimate.pawnerPostId.pawnerPostWarranty}</td>
												<td>${estimate.pawnerPostId.pawnerPostDescription}</td>
												<td>${estimate.estimatePriceMin }</td>
												<td>${estimate.estimatePriceMax }</td>
												<td>${estimate.pawnerPostId.pawnerId.pawnerFirstname}
													${estimate.pawnerPostId.pawnerId.pawnerLastname}</td>
												<td><c:if
														test="${estimate.estimateStatus == 'complete'}">
														<span class="badge badge-success">เสร็จสิ้น</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'waiting'}">
														<span class="badge badge-danger">รอดำเนินการ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'process'}">
														<span class="badge badge-warning">กำลังดำเนินการ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'proceed'}">
														<span class="badge badge-warning">กำลังดำเนินการ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'approve'}">
														<span class="badge badge-primary">ยอมรับ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'denei'}">
														<span class="badge badge-danger">ปฎิเสธ</span>
													</c:if></td>
											</tr>
										</tbody>
									</c:forEach>
								</table>
							</div>
						</div>

					</c:if>
				</c:forEach>
				<!-- End Smartphone -->


				<!-- TV -->
				<c:forEach items="${eList}" var="estimate">
					<c:if test="${estimate.pawnerPostId.pawnerPostItemType == 'Tv'}">

						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-hover ">
									<thead>
										<tr>
											<th>รูปภาพ</th>
											<th>ประเภท</th>
											<th>แบรนด์</th>
											<th>ชื่อโพส</th>
											<th>หมายเลขผลิตภัณฑ์</th>
											<th>โมเดล</th>
											<th>ขนาด หน้าจอ</th>
											<th>ปีที่ซื้อ</th>
											<th>รีโมท</th>
											<th>ใบรับประกัน</th>
											<th>รายละเอียด</th>
											<th>ราคาต่ำสุด</th>
											<th>ราคาสูงสุด</th>
											<th>จำนำโดย</th>
											<th>สถานะ</th>
										</tr>
									</thead>
									<c:forEach items="${eList}" var="estimate">
										<tbody>
											<tr>
												<td><img class="img-responsive"
													src="images/imageUpload/${estimate.pawnerPostId.pawnerPostPicture}"
													width="300" /></td>
												<td><c:if test="${estimate.pawnerPostId.pawnerPostItemType == 'Tv'}"> <span class="badge badge-info">ทีวี</span></c:if></td>
												<td>${estimate.pawnerPostId.pawnerPostBrand}</td>
												<td>${estimate.pawnerPostId.pawnerPostName}</td>
												<td>${estimate.pawnerPostId.pawnerPostSerial}</td>
												<td>${estimate.pawnerPostId.pawnerPostModel}</td>
												<td>${estimate.pawnerPostId.pawnerPostSize}</td>
												<td>${estimate.pawnerPostId.pawnerPostPurchase}</td>
												<td>${estimate.pawnerPostId.panwePostRemote}</td>
												<td>${estimate.pawnerPostId.pawnerPostWarranty}</td>
												<td>${estimate.pawnerPostId.pawnerPostDescription}</td>
												<td>${estimate.estimatePriceMin }</td>
												<td>${estimate.estimatePriceMax }</td>
												<td>${estimate.pawnerPostId.pawnerId.pawnerFirstname}
													${estimate.pawnerPostId.pawnerId.pawnerLastname}</td>
												<td><c:if
														test="${estimate.estimateStatus == 'complete'}">
														<span class="badge badge-success">เสร็จสิ้น</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'waiting'}">
														<span class="badge badge-danger">รอดำเนินการ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'process'}">
														<span class="badge badge-warning">กำลังดำเนินการ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'proceed'}">
														<span class="badge badge-warning">กำลังดำเนินการ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'approve'}">
														<span class="badge badge-primary">ยอมรับ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'denei'}">
														<span class="badge badge-danger">ปฎิเสธ</span>
													</c:if></td>
											</tr>
										</tbody>
									</c:forEach>
								</table>
							</div>

						</div>
					</c:if>
				</c:forEach>
				<!-- End TV -->


				<!-- Watch -->
				<c:forEach items="${eList}" var="estimate">
					<c:if test="${estimate.pawnerPostId.pawnerPostItemType == 'Watch'}">

						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-hover ">
									<thead>
										<tr>
											<th>รูปภาพ</th>
											<th>ประเภท</th>
											<th>แบรนด์</th>
											<th>ชื่อโพส</th>
											<th>หน้าปัดนาฬิกา</th>
											<th>ประเภทของสาย</th>
											<th>เพชร บนนาฬิกา?</th>
											<th>ปีที่ผลิต</th>
											<th>กล่องบรรจุสินค้า</th>
											<th>ใบรับประกัน</th>
											<th>รายละเอียด</th>
											<th>ราคาต่ำสุด</th>
											<th>ราคาสูงสุด</th>
											<th>จำนำโดย</th>
											<th>สถานะ</th>
										</tr>
									</thead>
									<c:forEach items="${eList}" var="estimate">
										<tbody>
											<tr>
												<td><img class="img-responsive"
													src="images/imageUpload/${estimate.pawnerPostId.pawnerPostPicture}"
													width="300" /></td>
												<td><c:if test="${estimate.pawnerPostId.pawnerPostItemType == 'Watch'}"> <span class="badge badge-info">นาฬิกา</span></c:if></td>
												<td>${estimate.pawnerPostId.pawnerPostBrand}</td>
												<td>${estimate.pawnerPostId.pawnerPostName}</td>
												<td>${estimate.pawnerPostId.pawnerPostCase}</td>
												<td>${estimate.pawnerPostId.pawnerPostBracelet}</td>
												<td>${estimate.pawnerPostId.pawnerPostDiamond}</td>
												<td>${estimate.pawnerPostId.pawnerPostProduction}</td>
												<td>${estimate.pawnerPostId.pawnerPostPackage}</td>
												<td>${estimate.pawnerPostId.pawnerPostWarranty}</td>
												<td>${estimate.pawnerPostId.pawnerPostDescription}</td>
												<td>${estimate.estimatePriceMin }</td>
												<td>${estimate.estimatePriceMax }</td>
												<td>${estimate.pawnerPostId.pawnerId.pawnerFirstname}
													${estimate.pawnerPostId.pawnerId.pawnerLastname}</td>
												<td><c:if
														test="${estimate.estimateStatus == 'complete'}">
														<span class="badge badge-success">เสร็จสิ้น</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'waiting'}">
														<span class="badge badge-danger">รอดำเนินการ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'process'}">
														<span class="badge badge-warning">กำลังดำเนินการ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'proceed'}">
														<span class="badge badge-warning">กำลังดำเนินการ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'approve'}">
														<span class="badge badge-primary">ยอมรับ</span>
													</c:if> <c:if test="${estimate.estimateStatus == 'denei'}">
														<span class="badge badge-danger">ปฎิเสธ</span>
													</c:if></td>
											</tr>
										</tbody>
									</c:forEach>
								</table>
							</div>
						</div>

					</c:if>
				</c:forEach>
				<!-- End Watch -->
			</div>
		</div>
	</section>



</body>
</html>