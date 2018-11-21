<!-- 
// page : pawner-track-pledge
// version : 3.2
// task : pawner approve
// edit by : khawkreab
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>สถานะการจำนำ</title>
<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<link rel="stylesheet" href="css/timeline.css">
</head>
<body style="background-color: #eee">
	<jsp:include page="navbar.jsp" />

	<!--banner-->
	<div class="banner-top">
		<div>
			<h1>สถานะการจำนำ</h1>
			<em></em>
		</div>
	</div>

	<section id="cd-timeline" class="cd-container">
		<c:forEach items="${pawnerPostsProcess}" var="postprocess">
			<c:if
				test="${postprocess.pawnerPostStatus == 'process' || postprocess.pawnerPostStatus == 'waiting' || postprocess.pawnerPostStatus == 'approve'}">
				<div class="cd-timeline-block">
					<!-------- icon -------->
					<c:if test="${postprocess.pawnerPostStatus == 'waiting'}">
						<div class="cd-timeline-img cd-wait">
							<i class="fas fa-hourglass-half"></i>
						</div>
					</c:if>
					<c:if test="${postprocess.pawnerPostStatus == 'process'}">
						<div class="cd-timeline-img cd-process">
							<i class="fas fa-handshake"></i>
						</div>
					</c:if>
					<c:if test="${postprocess.pawnerPostStatus == 'approve'}">
						<div class="cd-timeline-img bg-info">
							<i class="fas fa-print"></i>
						</div>
					</c:if>
					<!--------- end icon --------->

					<div class="cd-timeline-content">
						<!-- date -->
						<span class="cd-date"><fmt:formatDate pattern="dd"
								value="${postprocess.pawnerPostDate }" /> <fmt:formatDate
								pattern="MMM" value="${postprocess.pawnerPostDate }" /> <fmt:formatDate
								pattern="yyyy" value="${postprocess.pawnerPostDate }" /> </span>
						<!--  -->
						<h2>${postprocess.pawnerPostName }
							${postprocess.pawnerPostBrand }
							${postprocess.pawnerPostTypeCamera }
							${postprocess.pawnerPostCameraLen }</h2>
						<ul class="row">

							<!-- Watch,Electronic -->
							<c:if test="${postprocess.pawnerPostModel != null}">
								<li class="col-md-6">รุ่น : ${postprocess.pawnerPostModel}</li>
								<li class="col-md-6">หมายเลขประจำเครื่อง :
									${postprocess.pawnerPostSerial}</li>
								<li class="col-md-6">ปีที่ซื้อสินค้า :
									${postprocess.pawnerPostPurchase }</li>
							</c:if>

							<c:if test="${postprocess.pawnerPostProduction != null}">
								<li class="col-md-6">ปีที่ผลิตสินค้า :
									${postprocess.pawnerPostProduction}</li>
							</c:if>


							<!-- Gold -->
							<c:if test="${postprocess.pawnerPostPure != null}">
								<li class="col-md-6">ยี่ห้อ : ${postprocess.pawnerPostBrand }</li>
								<li class="col-md-6">ความบริสุทธ์ :
									${postprocess.pawnerPostPure  }</li>
								<li class="col-md-6">น้ำหนัก :
									${postprocess.pawnerPostWeigh }</li>
								<li class="col-md-6">ชนิดหรือรูปแบบของทองคำ :
									${postprocess.pawnerPostCategory }</li>
							</c:if>


							<!-- Electronic tv com telephone -->
							<c:if test="${postprocess.pawnerPostSize != null}">
								<li class="col-md-6">ขนาดหน้าจอ :
									${postprocess.pawnerPostSize }</li>
							</c:if>

							<!-- Electronic camera com telephone -->
							<c:if test="${postprocess.pawnerPostBattery != null}">
								<li class="col-md-6"><span class="fas fa-check"
									aria-hidden="true"> </span>Battery</li>
							</c:if>

							<!-- Electronic com telephone -->
							<c:if test="${postprocess.pawnerPostHarddisk != null}">
								<li class="col-md-6">Harddisk : ${ postprocess.pawnerPostHarddisk }</li>
							</c:if>

							<!-- Electronic com-->
							<c:if test="${postprocess.pawnerPostRam != null}">
								<li class="col-md-6">Ram : ${postprocess.pawnerPostRam }</li>
							</c:if>

							<!-- Watch -->
							<c:if test="${postprocess.pawnerPostCase != null}">
								<li class="col-md-6">ชนิดของหน้าปัด :
									${postprocess.pawnerPostCase }</li>
								<li class="col-md-6">ชนิดของสายรัดข้อมือ :
									${postprocess.pawnerPostBracelet }</li>
								<c:if test="${postprocess.pawnerPostDiamond != null}">
									<li class="col-md-6">เพรช :
										${postprocess.pawnerPostDiamond }</li>
								</c:if>
								<c:if test="${postprocess.pawnerPostPackage != null}">
									<li class="col-md-6"><span class="fas fa-check"
										aria-hidden="true"> </span> กล้องบรรจุสินค้า</li>
								</c:if>
							</c:if>

							<!-- Electronic tv -->
							<c:if test="${postprocess.panwePostRemote != null}">
								<li class="col-md-6"><span class="fas fa-check"
									aria-hidden="true"> </span> Remote</li>
							</c:if>


							<!-- Watch,Electronic -->
							<c:if test="${postprocess.pawnerPostModel != null}">
								<li class="col-md-6"><span class="fas fa-check"
									aria-hidden="true"> </span> การประกันสินค้า</li>
							</c:if>

						</ul>
						<i class="quick small">เพิ่มเติม</i> <span class="quick_desc">${postprocess.pawnerPostDescription }</span>

						<!---------- process  ---------->
						<c:if test="${postprocess.pawnerPostStatus == 'process'}">
							<line-x></line-x>
							<div class="history-show-estimate">
								<div class="row d-flex">
									<div class="col-md-4">โรงรับจำนำที่มาเสนอราคา</div>
									<div class="ml-auto col-md-2">ราคาต่ำสุด</div>
									<div class="col-md-2">ราคาสูงสุด</div>
									<div class="col-md-2"></div>
								</div>
								<ul>
									<c:forEach items="${estimatesList}" var="estimate">
										<c:if
											test="${estimate.pawnerPostId.pawnerPostId == postprocess.pawnerPostId }">
											<li>
												<div class="row d-flex">
													<div class="col-md-4">
														${estimate.pawnshopId.pawnshopName}</div>
													<div class="ml-auto col-md-2">${estimate.estimatePriceMin}</div>
													<div class="col-md-2">${estimate.estimatePriceMax}</div>
													<div class="col-md-2">
														<form action="pawner-approve.html" method="post">
															<input type="hidden" name="estimateId"
																value="${estimate.estimateId}"> <input
																type="hidden" name="pawnerPostId"
																value="${estimate.pawnerPostId.pawnerPostId}">
															<button class="btn-custom btn-custom-defalt small"
																type="submit">รับข้อเสนอ</button>
														</form>
													</div>
												</div>
											</li>
										</c:if>
									</c:forEach>
								</ul>
							</div>
						</c:if>
						<!-- approve -->
						<c:if test="${postprocess.pawnerPostStatus == 'approve'}">
							<line-x></line-x>
							<div class="history-show-estimate">
								<c:forEach items="${estimatesApprove}" var="estimate">
									<c:if
										test="${estimate.pawnerPostId.pawnerPostId == postprocess.pawnerPostId }">
										<div class="row d-flex">
											<div class="col-md-5">
												<p>โรงรับจำนำ ${estimate.pawnshopId.pawnshopName} ณ
													จังหวัด ${estimate.pawnshopId.pawnshopProvince}</p>
											</div>
											<div class="col-md-4 ml-auto">
												<p>
													ด้วยราคา <span style="color: #ff3300; font-weight: bold;">${estimate.estimatePriceMin}-${estimate.estimatePriceMax}
														บาท</span>
												</p>
											</div>
											<div class="col-md-2">
												<p>
													<button class="btn-custom btn-custom-sky small"
														type="submit">
														<i class="fas fa-print" style="margin: auto;"></i> <span
															style="margin-left: 5px;">พิมพ์ใบจำนำ</span>
													</button>
												</p>
											</div>
										</div>
									</c:if>
								</c:forEach>
							</div>
						</c:if>
					</div>
					<!-- cd-timeline-content -->
				</div>
				<!-- cd-timeline-block -->
			</c:if>
		</c:forEach>

	</section>
	<!-- cd-timeline -->

	<%-- <!-- -------------------------------- status process ---------------------------------- -->
	<section>
		<c:forEach items="${pawnerPostsProcess}" var="postprocess">
			<div class="container">
				<div class="history-main offer-warning border-warning">
					<div class="shape">
						<div class="shape-text">รอการยอมรับ</div>
					</div>
					<div class="d-flex history-title">
						<div class="mr-auto p-2">
							<fmt:formatDate type="date" dateStyle="long" timeStyle="short"
								value="${postprocess.pawnerPostDate }" />
						</div>
						<div class="ml-auto p-2">
							<span></span>
						</div>
					</div>
					<div class="history-body">
						<div class="row">
							<div class="col-sm-3">
								<div class="pro-img">
									<img class="img-responsive"
										src="img/uploadImge/${postprocess.pawnerPostPicture }" />
								</div>
							</div>
							<div class="col-md-9 single-top-in">
								<div class="span_2_of_a1 simpleCart_shelfItem">
									<h3>${postprocess.pawnerPostName }
										${postprocess.pawnerPostBrand }
										${postprocess.pawnerPostTypeCamera }
										${postprocess.pawnerPostCameraLen }</h3>
									<p class="in-para">ข้อมูล</p>
									<div class="price_single">
										<div class="preview">
											<ul class="row">

												<!-- Watch,Electronic -->
												<c:if test="${postprocess.pawnerPostModel != null}">
													<li class="col-md-6">รุ่น :
														${postprocess.pawnerPostModel}</li>
													<li class="col-md-6">หมายเลขประจำเครื่อง :
														${postprocess.pawnerPostSerial}</li>
													<li class="col-md-6">ปีที่ซื้อสินค้า :
														${postprocess.pawnerPostPurchase }</li>
												</c:if>

												<c:if test="${postprocess.pawnerPostProduction != null}">
													<li class="col-md-6">ปีที่ผลิตสินค้า :
														${postprocess.pawnerPostProduction}</li>
												</c:if>


												<!-- Gold -->
												<c:if test="${postprocess.pawnerPostPure != null}">
													<li class="col-md-6">ยี่ห้อ :
														${postprocess.pawnerPostBrand }</li>
													<li class="col-md-6">ความบริสุทธ์ :
														${postprocess.pawnerPostPure  }</li>
													<li class="col-md-6">น้ำหนัก :
														${postprocess.pawnerPostWeigh }</li>
													<li class="col-md-6">ชนิดหรือรูปแบบของทองคำ :
														${postprocess.pawnerPostCategory }</li>
												</c:if>


												<!-- Electronic tv com telephone -->
												<c:if test="${postprocess.pawnerPostSize != null}">
													<li class="col-md-6">ขนาดหน้าจอ :
														${postprocess.pawnerPostSize }</li>
												</c:if>

												<!-- Electronic camera com telephone -->
												<c:if test="${postprocess.pawnerPostBattery != null}">
													<li class="col-md-6"><span class="fas fa-check"
														aria-hidden="true"> </span>Battery</li>
												</c:if>

												<!-- Electronic com telephone -->
												<c:if test="${postprocess.pawnerPostHarddisk != null}">
													<li class="col-md-6">Harddisk : ${ postprocess.pawnerPostHarddisk }</li>
												</c:if>

												<!-- Electronic com-->
												<c:if test="${postprocess.pawnerPostRam != null}">
													<li class="col-md-6">Ram : ${postprocess.pawnerPostRam }</li>
												</c:if>

												<!-- Watch -->
												<c:if test="${postprocess.pawnerPostCase != null}">
													<li class="col-md-6">ชนิดของหน้าปัด :
														${postprocess.pawnerPostCase }</li>
													<li class="col-md-6">ชนิดของสายรัดข้อมือ :
														${postprocess.pawnerPostBracelet }</li>
													<c:if test="${postprocess.pawnerPostDiamond != null}">
														<li class="col-md-6">เพรช :
															${postprocess.pawnerPostDiamond }</li>
													</c:if>
													<c:if test="${postprocess.pawnerPostPackage != null}">
														<li class="col-md-6"><span class="fas fa-check"
															aria-hidden="true"> </span> กล้องบรรจุสินค้า</li>
													</c:if>
												</c:if>

												<!-- Electronic tv -->
												<c:if test="${postprocess.panwePostRemote != null}">
													<li class="col-md-6"><span class="fas fa-check"
														aria-hidden="true"> </span> Remote</li>
												</c:if>


												<!-- Watch,Electronic -->
												<c:if test="${postprocess.pawnerPostModel != null}">
													<li class="col-md-6"><span class="fas fa-check"
														aria-hidden="true"> </span> การประกันสินค้า</li>
												</c:if>

											</ul>
										</div>
									</div>
									<h4 class="quick">รายละเอียดเพิ่มเติม</h4>
									<p class="quick_desc">${postprocess.pawnerPostDescription }</p>
								</div>
							</div>
						</div>
					</div>

					<div class="line margin-lr-1"></div>
					<div class="history-show-estimate">
						<div class="row">
							<div class="col-md-6">โรงรับจำนำที่มาเสนอราคา</div>
							<div class="col-md-2">ราคาน้อยสุดที่ได้รับ</div>
							<div class="col-md-2">ราคามากสุดที่ได้รับ</div>
							<div class="col-md-2"></div>
						</div>
						<ul>
							<c:forEach items="${estimatesList}" var="estimate">
								<c:if
									test="${estimate.pawnerPostId.pawnerPostId == postprocess.pawnerPostId }">
									<li>
										<div class="row">
											<div class="col-md-6">
												${estimate.pawnshopId.pawnshopName}</div>
											<div class="col-md-2">${estimate.estimatePriceMin}</div>
											<div class="col-md-2">${estimate.estimatePriceMax}</div>
											<div class="col-md-2">
												<form action="pawner-approve.html" method="post">
													<input type="hidden" name="estimateId"
														value="${estimate.estimateId}"> <input
														type="hidden" name="pawnerPostId"
														value="${estimate.pawnerPostId.pawnerPostId}">
													<button
														style="border-radius: 2px; background: #ff7f00; font-size: 13px; color: #fff; padding: 5px; border: none; margin: 5px"
														type="submit">ยืนยันราคาสินค้า</button>
												</form>
											</div>
										</div>
									</li>
								</c:if>

							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</c:forEach>

		<!-- -----------------status waiting ----------------------------- -->
		<c:forEach items="${pawnerPosts}" var="post">
			<div class="container">
				<div class="history-main offer-info border-info">
					<div class="shape">
						<div class="shape-text">ยังไม่มีการประเมิน</div>
					</div>
					<div class="d-flex history-title">
						<div class="mr-auto p-2">
							<fmt:formatDate type="both" dateStyle="long" timeStyle="short"
								value="${post.pawnerPostDate }" />
						</div>
						<div class="ml-auto p-2">
							<span></span>
						</div>
					</div>
					<div class="history-body">
						<div class="row">
							<div class="col-sm-5">
								<div class="pro-img">
									<img class="img-responsive"
										src="img/uploadImge/${post.pawnerPostPicture }" />
								</div>
							</div>
							<div class="col-md-7 single-top-in">
								<div class="span_2_of_a1 simpleCart_shelfItem">
									<h3>${post.pawnerPostName }-${post.pawnerPostBrand }
										${post.pawnerPostTypeCamera } ${post.pawnerPostCameraLen }</h3>
									<p class="in-para">Information</p>
									<div class="price_single">
										<div class="preview">
											<ul class="row">

												<!-- Watch,Electronic -->
												<c:if test="${post.pawnerPostModel != null}">
													<li class="col-md-6">รุ่น : ${post.pawnerPostModel}</li>
													<li class="col-md-6">หมายเลขประจำเครื่อง :
														${post.pawnerPostSerial}</li>
													<li class="col-md-6">ปีที่ซื้อสินค้า :
														${post.pawnerPostPurchase }</li>
													<li class="col-md-6">ปีที่ผลิตสินค้า :
														${post.pawnerPostProduction}</li>
												</c:if>

												<!-- Gold -->
												<c:if test="${post.pawnerPostPure != null}">
													<li class="col-md-6">ยี่ห้อ : ${post.pawnerPostBrand }</li>
													<li class="col-md-6">ความบริสุทธ์ :
														${post.pawnerPostPure  }</li>
													<li class="col-md-6">น้ำหนัก : ${post.pawnerPostWeigh }</li>
													<li class="col-md-6">ชนิดหรือรูปแบบของทองคำ :
														${post.pawnerPostCategory }</li>
												</c:if>


												<!-- Electronic tv com telephone -->
												<c:if test="${post.pawnerPostSize != null}">
													<li class="col-md-6">ขนาดหน้าจอ :
														${post.pawnerPostSize }</li>
												</c:if>

												<!-- Electronic camera com telephone -->
												<c:if test="${post.pawnerPostBattery != null}">
													<li class="col-md-6"><span class="fas fa-check"
														aria-hidden="true"> </span>Battery</li>
												</c:if>

												<!-- Electronic com telephone -->
												<c:if test="${post.pawnerPostHarddisk != null}">
													<li class="col-md-6">Harddisk :
														${post.pawnerPostHarddisk }</li>
												</c:if>

												<!-- Electronic com-->
												<c:if test="${post.pawnerPostRam != null}">
													<li class="col-md-6">Ram : ${post.pawnerPostRam }</li>
												</c:if>

												<!-- Watch -->
												<c:if test="${post.pawnerPostCase != null}">
													<li class="col-md-6">ชนิดของหน้าปัด :
														${post.pawnerPostCase }</li>
													<li class="col-md-6">ชนิดของสายรัดข้อมือ :
														${post.pawnerPostBracelet }</li>
													<c:if test="${post.pawnerPostDiamond != null}">
														<li class="col-md-6">เพรช : ${post.pawnerPostDiamond }</li>
													</c:if>
													<c:if test="${post.pawnerPostPackage != null}">
														<li class="col-md-6"><span class="fas fa-check"
															aria-hidden="true"> </span> กล้องบรรจุสินค้า</li>
													</c:if>
												</c:if>

												<!-- Electronic tv -->
												<c:if test="${post.panwePostRemote != null}">
													<li class="col-md-6"><span class="fas fa-check"
														aria-hidden="true"> </span> Remote</li>
												</c:if>


												<!-- Watch,Electronic -->
												<c:if test="${post.pawnerPostModel != null}">
													<li class="col-md-6"><span class="fas fa-check"
														aria-hidden="true"> </span> การประกันสินค้า</li>
												</c:if>

											</ul>
										</div>
									</div>
									<h4 class="quick">รายละเอียดเพิ่มเติม</h4>
									<p class="quick_desc">${post.pawnerPostDescription }</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</section> --%>

</body>
</html>