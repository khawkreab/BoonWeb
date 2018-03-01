<!-- 
// page : pawner-track-pledge
// version : 3.2
// task : pawner approve
// edit by : khawkreab
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>pawner-track-pledge</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="navbar.jsp" />

	<section>
		<div class="container">
			<div class="history-filter">
				<div class="d-flex">
					<div class="mr-auto p-2">history</div>
					<div class="ml-auto p-2">
						Show: <select>
							<option>finish</option>
							<option>process</option>
						</select>
					</div>
				</div>
			</div>
		</div>
		<c:forEach items="${pawnerPosts}" var="post">
			<div class="container">
				<div class="history-main">
					<div class="d-flex history-title">
						<div class="mr-auto p-2">
							<span>${post.pawnerPostDate }</span>
						</div>
						<div class="ml-auto p-2">
							<span>Delete</span>
						</div>
					</div>
					<div class="history-body">
						<div class="row">
							<div class="col-sm-5">



								<span class="history-img"><img class=""
									src="img/gold.png" width="300" /></span>
							</div>
							<div class="col-sm-7">

								<span class="history-name">${post.pawnerPostName }
									${post.pawnerPostBrand } ${post.pawnerPostTypeCamera }
									${post.pawnerPostCameraLen } </span>
								<div class="history-detail">
									<ul>

										<!-- Watch,Electronic -->
										<c:if test="${post.pawnerPostModel != null}">
											<li>Production : ${post.pawnerPostProduction}</li>
											<li>Model : ${post.pawnerPostModel}</li>
											<li>Serial : ${post.pawnerPostSerial}</li>
										</c:if>

										<c:if test="${post.pawnerPostWarranty != null}">
											<li>Warranty : ${post.pawnerPostWarranty}</li>
										</c:if>
										<c:if test="${post.pawnerPostPurchase != null}">
											<li>Purchase : ${post.pawnerPostPurchase }</li>
										</c:if>

										<!-- Gold -->
										<c:if test="${post.pawnerPostPure != null}">
											<li>Pure : ${post.pawnerPostPure  }</li>
											<li>Weigh : ${post.pawnerPostWeigh }</li>
											<li>Category : ${post.pawnerPostCategory }</li>
										</c:if>

										<!-- Watch -->
										<c:if test="${post.pawnerPostCase != null}">
											<li>Case : ${post.pawnerPostCase }</li>
											<li>Bracelet : ${post.pawnerPostBracelet }</li>
											<c:if test="${post.pawnerPostDiamond != null}">
												<li>Diamond : ${post.pawnerPostDiamond }</li>
											</c:if>
											<c:if test="${post.pawnerPostPackage != null}">
												<li>Package : ${post.pawnerPostPackage }</li>
											</c:if>
										</c:if>

										<!-- Electronic tv com telephone -->
										<c:if test="${post.pawnerPostSize != null}">
											<li>Size : ${post.pawnerPostSize }</li>
										</c:if>

										<!-- Electronic camera com telephone -->
										<c:if test="${post.pawnerPostBattery != null}">
											<li>Battery : ${post.pawnerPostBattery }</li>
										</c:if>

										<!-- Electronic com telephone -->
										<c:if test="${post.pawnerPostHarddisk != null}">
											<li>Harddisk : ${post.pawnerPostHarddisk }</li>
										</c:if>

										<!-- Electronic tv -->
										<c:if test="${post.panwePostRemote != null}">
											<li>Remote : ${post.panwePostRemote }</li>
										</c:if>

										<!-- Electronic com-->
										<c:if test="${post.pawnerPostRam != null}">
											<li>Ram : ${post.pawnerPostRam }</li>
										</c:if>


										<!-- Electronic telephone-->
										<li>Description : ${post.pawnerPostDescription }</li>
									</ul>
								</div>
							</div>
						</div>

					</div>

					<c:if test="${post.pawnerPostStatus == 'waiting'}">
						<div class="line margin-lr-1"></div>
						<span class="text-center"> ยังไม่ประเมิน </span>
					</c:if>
					<c:if test="${post.pawnerPostStatus == 'approve'}">
						<div class="line margin-lr-1"></div>
					Print
					</c:if>
					<c:if test="${post.pawnerPostStatus == 'process'}">
						<div class="line margin-lr-1"></div>
						<div class="history-show-estimate">
							<div id="showlist${post.pawnerPostId}" class="collapse">
								<div class="row">
									<div class="col-md-6">Pawn Shop</div>
									<div class="col-md-2">min</div>
									<div class="col-md-2">max</div>
									<div class="col-md-2">*****</div>
								</div>
								<ul>
									<c:forEach items="${estimatesList}" var="estimate">
										<c:if
											test="${estimate.pawnerPostId.pawnerPostId == post.pawnerPostId }">

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
																value="${post.pawnerPostId}">
															<button type="submit">Approve</button>
														</form>
													</div>
												</div>
											</li>
										</c:if>

									</c:forEach>
								</ul>
							</div>
							<div class="d-flex justify-content-center">
								<span> <a id="more" class="show" href="#"
									data-toggle="collapse"
									data-target="#showlist${post.pawnerPostId}">more</a></span>
							</div>
						</div>
					</c:if>
				</div>
			</div>
		</c:forEach>
	</section>


	<script type="text/javascript">
		$('div span a').click(function() {
			$(this).text(function(i, old) {
				return old == 'more' ? 'less' : 'more';
			});
		});
	</script>
</body>
</html>