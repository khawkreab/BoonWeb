<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>order</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
	<%@ page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<c:forEach items="${order}" var="order">
			<div class="container">
				<div class="history-main">
					<div class="d-flex history-title">
						<div class="mr-auto p-2">
						<fmt:formatDate
										type="both" dateStyle="long" timeStyle="short"
										value="${order.orderItemDateIn }" />
						</div>
						<div class="ml-auto p-2">
							<span>${order.pawnshopPostId.pawnshopId.pawnshopName } shop</span>
						</div>
					</div>
					<div class="history-body">
						<div class="row">
							<div class="col-sm-5">



								<span class="history-img"><img class=""
									src="img/gold.png" width="300" /></span>
							</div>
							<div class="col-sm-7">

								<span class="history-name">${order.pawnshopPostId.pawnshopPostName }
									${order.pawnshopPostId.pawnshopPostBrand } ${order.pawnshopPostId.pawnshopPostTypeCamera }
									${order.pawnshopPostId.pawnshopPostCameraLen } </span>
								<div class="history-detail">
									<ul>

										<!-- Watch,Electronic -->
										<c:if test="${order.pawnshopPostId.pawnshopPostModel != null}">
											<li>Model : ${order.pawnshopPostId.pawnshopPostModel}</li>
											<li>Serial : ${order.pawnshopPostId.pawnshopPostSerial}</li>
										</c:if>
										
											<c:if test="${order.pawnshopPostId.pawnshopPostProduction != null}">
											<li>Production : ${order.pawnshopPostId.pawnshopPostProduction}</li>
										</c:if>

										<c:if test="${order.pawnshopPostId.pawnshopPostWarranty != null}">
											<li>Warranty : ${order.pawnshopPostId.pawnshopPostWarranty}</li>
										</c:if>
										<c:if test="${order.pawnshopPostId.pawnshopPostPurchase != null}">
											<li>Purchase : ${order.pawnshopPostId.pawnshopPostPurchase }</li>
										</c:if>

										<!-- Gold -->
										<c:if test="${order.pawnshopPostId.pawnshopPostPure != null}">
											<li>Pure : ${order.pawnshopPostId.pawnshopPostPure  }</li>
											<li>Weigh : ${order.pawnshopPostId.pawnshopPostWeigh }</li>
											<li>Category : ${order.pawnshopPostId.pawnshopPostCategory }</li>
										</c:if>

										<!-- Watch -->
										<c:if test="${order.pawnshopPostId.pawnshopPostCase != null}">
											<li>Case : ${order.pawnshopPostId.pawnshopPostCase }</li>
											<li>Bracelet : ${order.pawnshopPostId.pawnshopPostBracelet }</li>
											<c:if test="${order.pawnshopPostId.pawnshopPostDiamond != null}">
												<li>Diamond : ${order.pawnshopPostId.pawnshopPostDiamond }</li>
											</c:if>
											<c:if test="${order.pawnshopPostId.pawnshopPostPackage != null}">
												<li>Package : ${order.pawnshopPostId.pawnshopPostPackage }</li>
											</c:if>
										</c:if>

										<!-- Electronic tv com telephone -->
										<c:if test="${order.pawnshopPostId.pawnshopPostSize != null}">
											<li>Size : ${order.pawnshopPostId.pawnshopPostSize }</li>
										</c:if>

										<!-- Electronic camera com telephone -->
										<c:if test="${order.pawnshopPostId.pawnshopPostBattery != null}">
											<li>Battery : ${order.pawnshopPostId.pawnshopPostBattery }</li>
										</c:if>

										<!-- Electronic com telephone -->
										<c:if test="${order.pawnshopPostId.pawnshopPostHarddisk != null}">
											<li>Harddisk : ${order.pawnshopPostId.pawnshopPostHarddisk }</li>
										</c:if>

										<!-- Electronic tv -->
										<c:if test="${order.pawnshopPostId.pawnshopPostRemote != null}">
											<li>Remote : ${order.pawnshopPostId.pawnshopPostRemote }</li>
										</c:if>

										<!-- Electronic com-->
										<c:if test="${order.pawnshopPostId.pawnshopPostRam != null}">
											<li>Ram : ${order.pawnshopPostId.pawnshopPostRam }</li>
										</c:if>


										<!-- Electronic telephone-->
										<li>Description : ${order.pawnshopPostId.pawnshopPostDescription }</li>
										
										<li>Price : ${order.pawnshopPostId.pawnshopPostPrice }</li>
									</ul>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</c:forEach>
	</section>

</body>
</html>