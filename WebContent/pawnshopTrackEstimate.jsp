<!-- 
// page : pawnshop-Track-estimate
// version : 1.2
// track : liSt pawner 
// edit by : Kwin
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>สถานะของการประเมิน</title>

<!-- import all css -->
<jsp:include page="importCSS.jsp" />
<link rel="stylesheet" href="css/timeline.css">
<link rel="stylesheet" href="css/loadingPage.css">
<link rel="stylesheet" href="css/profileCard.css">
<link rel="stylesheet" href="css/sorting.css">

</head>
<body>
	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />
	<!-- loading page -->
	<div class="loadpage" id="loadpage">
		<div class='loading'>
			<span> <span></span> <span></span> <span></span> <span></span>
			</span>
			<div class='loading-base'>
				<span></span>
				<div class='loading-face'></div>
			</div>
		</div>
		<div class='loading-longfazers'>
			<span></span> <span></span> <span></span> <span></span>
		</div>
		<i class="loading-text">Loading . . .</i>
	</div>
	<!--banner-->
	<div class="banner-top">
		<div>
			<h1>สถานะของการประเมิน</h1>
			<em></em>
		</div>
	</div>
	<div id="filterBtnContainer">
		<button class="filter-btn active" onclick="filterSelection('all')">
			ทั้งหมด <i class="fas fa-th-list"> </i>
		</button>
		<button class="filter-btn" onclick="filterSelection('process')">
			รอการตอบรับ <i class="fas fa-handshake"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('approve')">
			สินค้าจำนำกำลังเดินทาง <i class="fas fa-walking"></i>
		</button>
		<button class="filter-btn" onclick="filterSelection('denei')">
			ถูกปฏิเสธ <i class="fas fa-times"></i> 
		</button>
	</div>
	<!-- not have item -->
	<div id="noitem">ไม่มีรายการ</div>
	<section id="cd-timeline" class="cd-container">
		<c:forEach items="${trackMyEstimate}" var="track">
			<c:if test="${track.estimateStatus != 'complete'}">
				<c:if test="${track.estimateStatus != 'approvedenei'}">
					<input type="hidden" value="hide" id="hide" />
					<div
						class="cd-timeline-block filter-column ${track.estimateStatus}">
						<!-------- icon -------->
						<c:if test="${track.estimateStatus == 'denei'}">
							<div class="cd-timeline-img cd-wait">
								<i class="fas fa-times-circle"></i>
							</div>
						</c:if>
						<c:if test="${track.estimateStatus == 'process'}">
							<div class="cd-timeline-img cd-wait">
								<i class="fas fa-hourglass-half"></i>
							</div>
						</c:if>
						<c:if test="${track.estimateStatus == 'approve'}">
							<div class="cd-timeline-img cd-process">
								<i class="fas fa-walking"></i>
							</div>
						</c:if>
						<!--------- end icon --------->
						<div class="cd-timeline-content">
							<!-- date -->
							<span class="cd-date"><fmt:formatDate pattern="dd"
									value="${track.pawnerPostId.pawnerPostDate }" /> <fmt:formatDate
									pattern="MMM" value="${track.pawnerPostId.pawnerPostDate }" />
								<fmt:formatDate pattern="yyyy"
									value="${track.pawnerPostId.pawnerPostDate }" /> </span>
							<!-- head -->
							<h2>${track.pawnerPostId.pawnerPostName }
								${track.pawnerPostId.pawnerPostBrand }
								${track.pawnerPostId.pawnerPostTypeCamera }
								${track.pawnerPostId.pawnerPostCameraLen }</h2>
							<ul class="row">

								<!-- Watch,Electronic -->
								<c:if test="${track.pawnerPostId.pawnerPostModel != null}">
									<li class="col-md-6">รุ่น :
										${track.pawnerPostId.pawnerPostModel}</li>
									<li class="col-md-6">หมายเลขประจำเครื่อง :
										${track.pawnerPostId.pawnerPostSerial}</li>
									<li class="col-md-6">ปีที่ซื้อสินค้า :
										${track.pawnerPostId.pawnerPostPurchase }</li>
								</c:if>

								<c:if test="${track.pawnerPostId.pawnerPostProduction != null}">
									<li class="col-md-6">ปีที่ผลิตสินค้า :
										${track.pawnerPostId.pawnerPostProduction}</li>
								</c:if>


								<!-- Gold -->
								<c:if test="${track.pawnerPostId.pawnerPostPure != null}">
									<li class="col-md-6">ยี่ห้อ :
										${track.pawnerPostId.pawnerPostBrand }</li>
									<li class="col-md-6">ความบริสุทธ์ :
										${track.pawnerPostId.pawnerPostPure  }</li>
									<li class="col-md-6">น้ำหนัก :
										${track.pawnerPostId.pawnerPostWeigh }</li>
									<li class="col-md-6">ชนิดหรือรูปแบบของทองคำ :
										${track.pawnerPostId.pawnerPostCategory }</li>
								</c:if>


								<!-- Electronic tv com telephone -->
								<c:if test="${track.pawnerPostId.pawnerPostSize != null}">
									<li class="col-md-6">ขนาดหน้าจอ :
										${track.pawnerPostId.pawnerPostSize }</li>
								</c:if>

								<!-- Electronic camera com telephone -->
								<c:if test="${track.pawnerPostId.pawnerPostBattery != null}">
									<li class="col-md-6"><span class="fas fa-check"
										aria-hidden="true"> </span>Battery</li>
								</c:if>

								<!-- Electronic com telephone -->
								<c:if test="${track.pawnerPostId.pawnerPostHarddisk != null}">
									<li class="col-md-6">Harddisk : ${ track.pawnerPostId.pawnerPostHarddisk }</li>
								</c:if>

								<!-- Electronic com-->
								<c:if test="${track.pawnerPostId.pawnerPostRam != null}">
									<li class="col-md-6">Ram :
										${track.pawnerPostId.pawnerPostRam }</li>
								</c:if>

								<!-- Watch -->
								<c:if test="${track.pawnerPostId.pawnerPostCase != null}">
									<li class="col-md-6">ชนิดของหน้าปัด :
										${track.pawnerPostId.pawnerPostCase }</li>
									<li class="col-md-6">ชนิดของสายรัดข้อมือ :
										${track.pawnerPostId.pawnerPostBracelet }</li>
									<c:if test="${track.pawnerPostId.pawnerPostDiamond != null}">
										<li class="col-md-6">เพรช :
											${track.pawnerPostId.pawnerPostDiamond }</li>
									</c:if>
									<c:if test="${track.pawnerPostId.pawnerPostPackage != null}">
										<li class="col-md-6"><span class="fas fa-check"
											aria-hidden="true"> </span> กล้องบรรจุสินค้า</li>
									</c:if>
								</c:if>

								<!-- Electronic tv -->
								<c:if test="${track.pawnerPostId.panwePostRemote != null}">
									<li class="col-md-6"><span class="fas fa-check"
										aria-hidden="true"> </span> Remote</li>
								</c:if>


								<!-- Watch,Electronic -->
								<c:if test="${track.pawnerPostId.pawnerPostModel != null}">
									<li class="col-md-6"><span class="fas fa-check"
										aria-hidden="true"> </span> การประกันสินค้า</li>
								</c:if>

							</ul>
							<i class="quick small">เพิ่มเติม</i> <span class="quick_desc">${track.pawnerPostId.pawnerPostDescription }</span>

							<!---------- approve  ---------->
							<c:if test="${track.estimateStatus == 'approve'}">
								<line-x></line-x>
								<div class="history-show-estimate">
									<div class="row d-flex">
										<div class="col-md-5 d-inline-flex">
											เจ้าของโพส คุณ
											<!-- profile card -->
											<div class="profile-card-head is-collapsed">
												<div class="card-inner js-expander">&nbsp;&nbsp;
													${track.pawnerPostId.pawnerId.pawnerFirstname}
													${track.pawnerPostId.pawnerId.pawnerLastname}</div>
												<div class="profile-card">
													<div class="profile-card-circle">
														<img src="img/logos/logo.png">
													</div>
													<span>${track.pawnerPostId.pawnerId.pawnerFirstname}
														${track.pawnerPostId.pawnerId.pawnerLastname}</span> <i>${track.pawnerPostId.pawnerId.pawnerEmail}</i>
													<i>${track.pawnerPostId.pawnerId.pawnerProvince}</i> <i>Status:${track.estimateStatus}</i>
													<span class="closed">&times;</span>
												</div>
											</div>
										</div>
										<div class="col-md-4 ml-auto">
											<p>
												เสนอราคาที่ <span style="color: #ff3300; font-weight: bold;">${track.estimatePriceMin}-${track.estimatePriceMax}
													บาท</span>
											</p>
										</div>
										<div class="col-md-3">
											<form action="pawnshop-estimate-approve.html" method="post">
												<input type="hidden" name="estimateId"
													value="${track.estimateId}"> <input type="hidden"
													name="pawnerPostId"
													value="${track.pawnerPostId.pawnerPostId}"> <input
													type="hidden" name="status" value="complete">
												<button class="btn-custom btn-custom-defalt small"
													type="submit">สินค้าจำนำถึงโรงรับจำนำแล้ว</button>
											</form>
										</div>
									</div>
								</div>
							</c:if>
							<!-- end approve -->

							<!---------- denei  ---------->
							<c:if test="${track.estimateStatus == 'denei'}">
								<line-x></line-x>
								<div class="history-show-estimate">
									<div class="row d-flex">
										<div class="col-md-5 d-inline-flex">
											เจ้าของโพส คุณ
											<!-- profile card -->
											<div class="profile-card-head is-collapsed">
												<div class="card-inner js-expander">&nbsp;&nbsp;
													${track.pawnerPostId.pawnerId.pawnerFirstname}
													${track.pawnerPostId.pawnerId.pawnerLastname}</div>
												<div class="profile-card">
													<div class="profile-card-circle">
														<img src="img/logos/logo.png">
													</div>
													<span>${track.pawnerPostId.pawnerId.pawnerFirstname}
														${track.pawnerPostId.pawnerId.pawnerLastname}</span> <i>${track.pawnerPostId.pawnerId.pawnerEmail}</i>
													<i>${track.pawnerPostId.pawnerId.pawnerProvince}</i> <i>Status:
														${track.estimateStatus}</i> <span class="closed">&times;</span>
												</div>
											</div>
										</div>
										<div class="col-md-4 ml-auto">
											<p>
												เสนอราคาที่ <span style="color: #ff3300; font-weight: bold;">${track.estimatePriceMin}-${track.estimatePriceMax}
													บาท</span>
											</p>
										</div>
										<div class="col-md-2">
											<p>
												<span style="color: #ff3300; font-weight: bold;">ถูกปฏิเสธ</span>
											</p>
										</div>
										<div class="col-md-1">
											<form action="pawnshop-estimate-approve.html" method="post">
												<input type="hidden" name="estimateId"
													value="${track.estimateId}"> <input type="hidden"
													name="pawnerPostId"
													value="${track.pawnerPostId.pawnerPostId}"> <input
													type="hidden" name="status" value="approvedenei">
												<button class="btn-custom btn-custom-defalt small"
													type="submit"
													style="position: absolute; top: 16px; left: -21px;">ฉันรู้แล้ว</button>
											</form>
										</div>
									</div>
								</div>
							</c:if>
							<!-- approve -->
							<!---------- process  ---------->
							<c:if test="${track.estimateStatus == 'process'}">
								<line-x></line-x>
								<div class="history-show-estimate">
									<div class="row d-flex">
										<!--  
										<div class="col-md-5">
											<p>เจ้าของโพส คุณ
												${track.pawnerPostId.pawnerId.pawnerFirstname}
												${track.pawnerPostId.pawnerId.pawnerLastname}
												${track.pawnerPostId.pawnerId.pawnerEmail} ณ จังหวัด
												${track.pawnerPostId.pawnerId.pawnerProvince}</p>
										</div> 
										-->
										<div class="col-md-5 d-inline-flex">
											เจ้าของโพส คุณ
											<!-- profile card -->
											<div class="profile-card-head is-collapsed">
												<div class="card-inner js-expander">&nbsp;&nbsp;
													${track.pawnerPostId.pawnerId.pawnerFirstname}
													${track.pawnerPostId.pawnerId.pawnerLastname}</div>
												<div class="profile-card">
													<div class="profile-card-circle">
														<img src="img/logos/logo.png">
													</div>
													<span>${track.pawnerPostId.pawnerId.pawnerFirstname}
														${track.pawnerPostId.pawnerId.pawnerLastname}</span> <i>${track.pawnerPostId.pawnerId.pawnerEmail}</i>
													<i>${track.pawnerPostId.pawnerId.pawnerProvince}</i> <i>Status:
														${track.estimateStatus}</i> <span class="closed">&times;</span>
												</div>
											</div>
										</div>
										<div class="col-md-4 ml-auto">
											<p>
												เสนอราคาที่ <span style="color: #ff3300; font-weight: bold;">${track.estimatePriceMin}-${track.estimatePriceMax}
													บาท</span>
											</p>
										</div>
										<div class="col-md-3">
											<p>
												สถานะ: <span style="color: #ff3300; font-weight: bold;">รอการตอบรับ</span>
											</p>
										</div>
									</div>
								</div>
							</c:if>
						</div>
					</div>
				</c:if>
			</c:if>
		</c:forEach>
	</section>
	<!-- sorting -->
	<script src="js/sorting.js"></script>
	<!-- profile Card -->
	<script src="js/profileCard.js"></script>
	<!-- cd-timeline -->
	<script type="text/javascript">
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

			var x = document.getElementById("hide").value;
			var order = document.getElementById("noOrder");
			if (x == 'hide')
				order.style.display = "none";

		}
	</script>

	<!-- Old source code -->
	<%-- 	<section>
		<c:forEach items="${trackMyEstimate}" var="track">
			<c:if test="${track.estimateStatus != 'complete'}">
				<c:if test="${track.estimateStatus != 'approvedenei'}">
					<div class="container">
						<c:if test="${track.estimateStatus == 'process'}">
							<div class="history-main offer-warning border-warning">
								<div class="shape">
									<div class="shape-text">กำลังดำเนินการ</div>
								</div>
						</c:if>

						<c:if test="${track.estimateStatus == 'denei'}">
							<div class="history-main offer-danger border-danger">
								<div class="shape">
									<div class="shape-text">ถูกปฏิเสธ</div>
								</div>
						</c:if>

						<c:if test="${track.estimateStatus == 'approve'}">
							<div class="history-main offer-success border-success">
								<div class="shape">
									<div class="shape-text">มีการยอมรับแล้ว</div>
								</div>
						</c:if>
						<div class="d-flex history-title">

							<div class="mr-auto p-2">
								<fmt:formatDate type="both" dateStyle="long" timeStyle="short"
									value="${track.estimateDate}" />
							</div>
						</div>
						<div class="history-body">
							<div class="row">
								<div class="col-sm-5">

									<span class="history-img"><img class="img-responsive"
										src="images/imageUpload/${track.pawnerPostId.pawnerPostPicture}"
										width="300" /></span>
								</div>

								<div class="col-sm-7 single-top-in">
									<div class="span_2_of_a1 simpleCart_shelfItem">
										<h3>${track.pawnerPostId.pawnerPostName }-${track.pawnerPostId.pawnerPostBrand }</h3>
										<p class="in-para">รายละเอียด</p>
										<div class="col-md-12 single-top-in">
											<div class="span_2_of_a1 simpleCart_shelfItem">
												<div class="price_single">
													<div class="preview">
														<ul class="row">
															<!-- Watch,Electronic -->
															<c:if
																test="${track.pawnerPostId.pawnerPostModel != null}">
																<li class="col-md-6">รุ่น :
																	${track.pawnerPostId.pawnerPostModel}</li>
																<li class="col-md-6">หมายเลขประจำเครื่อง :
																	${track.pawnerPostId.pawnerPostSerial}</li>
																<li class="col-md-6">ปีที่ซื้อสินค้า :
																	${track.pawnerPostId.pawnerPostPurchase }</li>

															</c:if>

															<c:if
																test="${track.pawnerPostId.pawnerPostProduction != null}">

																<li class="col-md-6">ปีที่ผลิตสินค้า :
																	${track.pawnerPostId.pawnerPostProduction}</li>
															</c:if>

															<!-- Gold -->
															<c:if test="${track.pawnerPostId.pawnerPostPure != null}">
																<li class="col-md-6">ยี่ห้อ :
																	${track.pawnerPostId.pawnerPostBrand }</li>
																<li class="col-md-6">ความบริสุทธ์ :
																	${track.pawnerPostId.pawnerPostPure  }</li>
																<li class="col-md-6">น้ำหนัก :
																	${track.pawnerPostId.pawnerPostWeigh }</li>
																<li class="col-md-6">ชนิดหรือรูปแบบของทองคำ :
																	${track.pawnerPostId.pawnerPostCategory }</li>
															</c:if>


															<!-- Electronic tv com telephone -->
															<c:if test="${track.pawnerPostId.pawnerPostSize != null}">
																<li class="col-md-6">ขนาดหน้าจอ :
																	${track.pawnerPostId.pawnerPostSize }</li>
															</c:if>

															<!-- Electronic camera com telephone -->
															<c:if
																test="${track.pawnerPostId.pawnerPostBattery != null}">
																<li class="col-md-6"><span class="fas fa-check"
																	aria-hidden="true"> </span>Battery</li>
															</c:if>

															<!-- Electronic com telephone -->
															<c:if
																test="${track.pawnerPostId.pawnerPostHarddisk != null}">
																<li class="col-md-6">Harddisk :
																	${track.pawnerPostId.pawnerPostHarddisk }</li>
															</c:if>

															<!-- Electronic com-->
															<c:if test="${track.pawnerPostId.pawnerPostRam != null}">
																<li class="col-md-6">Ram :
																	${track.pawnerPostId.pawnerPostRam }</li>
															</c:if>

															<!-- Watch -->
															<c:if test="${track.pawnerPostId.pawnerPostCase != null}">
																<li class="col-md-6">ชนิดของหน้าปัด :
																	${track.pawnerPostId.pawnerPostCase }</li>
																<li class="col-md-6">ชนิดของสายรัดข้อมือ :
																	${track.pawnerPostId.pawnerPostBracelet }</li>
																<c:if test="${post.pawnerPostDiamond != null}">
																	<li class="col-md-6">เพรช :
																		${track.pawnerPostId.pawnerPostDiamond }</li>
																</c:if>
																<c:if
																	test="${track.pawnerPostId.pawnerPostPackage != null}">
																	<li class="col-md-6"><span class="fas fa-check"
																		aria-hidden="true"> </span> กล้องบรรจุสินค้า</li>
																</c:if>
															</c:if>

															<!-- Electronic tv -->
															<c:if
																test="${track.pawnerPostId.panwePostRemote != null}">
																<li class="col-md-6"><span class="fas fa-check"
																	aria-hidden="true"> </span> Remote</li>
															</c:if>


															<!-- Watch,Electronic -->
															<c:if
																test="${track.pawnerPostId.pawnerPostWarranty != null}">
																<li class="col-md-6"><span class="fas fa-check"
																	aria-hidden="true"> </span> การประกันสินค้า</li>
															</c:if>
															<li>Description
															:${track.pawnerPostId.pawnerPostDescription }</li>
														</ul>
													</div>
												</div>
												<ul class="row">
													<li class="col-md-6">ราคาน้อยสุด:
														${track.estimatePriceMin }</li>
													<li class="col-md-6">ราคาสุงสุด:
														${track.estimatePriceMax }</li>
													<li>Status   : ${track.estimateStatus }</li>  

													<!-- Status -->
													<c:if test="${track.estimateStatus == 'complete'}">
														<li class="col-md-6">สถานะ : <span
															class="badge-success">เสร็จสิ้น</span>
														</li>
													</c:if>

													<c:if test="${track.estimateStatus == 'process'}">
														<li class="col-md-6">Status : <span
															class="badge-warning">กำลังดำเนินการ</span>
														</li>
													</c:if>

													<c:if test="${track.estimateStatus == 'approve'}">
														<li class="col-md-6">สถานะ : <span
															class="badge-success">ยอมรับ</span>
														</li>
													</c:if>

													<c:if test="${track.estimateStatus == 'denei'}">
														<li class="col-md-6">สถานะ : <span
															class="badge-danger">ปฎิเสธ</span>
														</li>
													</c:if>
													<c:if test="${track.estimateStatus == 'approve'}">
														<form action="pawnshop-estimate-approve.html"
															method="post">
															<input type="hidden" name="estimateId"
																value="${track.estimateId}"> <input
																type="hidden" name="pawnerPostId"
																value="${track.pawnerPostId.pawnerPostId}"> <input
																type="hidden" name="status" value="complete">
															<button class="item-popup-tocart" type="submit">สินค้าจำนำถึงโรงรับจำนำแล้ว</button>
														</form>
													</c:if>
													<c:if test="${track.estimateStatus == 'denei'}">
														<form action="pawnshop-estimate-approve.html"
															method="post">
															<input type="hidden" name="estimateId"
																value="${track.estimateId}"> <input
																type="hidden" name="pawnerPostId"
																value="${track.pawnerPostId.pawnerPostId}"> <input
																type="hidden" name="status" value="approvedenei">
															<button class="item-popup-tocart" type="submit">ฉันรู้แล้ว</button>
														</form>
													</c:if>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					</div>
				</c:if>
			</c:if>
		</c:forEach>
	</section> --%>
</body>
</html>