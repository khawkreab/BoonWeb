<!-- 
// page : pawnshop-track-pledge
// version : 3.2
// task : pawnshop approve
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
<title>pawnshop-post</title>

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
		<c:forEach items="${pawnshopPosts}" var="post">
			<div class="container">
				<div class="history-main">
					<div class="d-flex history-title">
						<div class="mr-auto p-2">
							<fmt:formatDate
										type="both" dateStyle="long" timeStyle="short"
										value="${post.pawnshopPostDate }" />
						</div>
						<div class="ml-auto p-2">
							<span>Delete</span>
						</div>
					</div>
					<div class="history-body">
						<span class="history-img"><img class="" src="" /></span> <span
							class="history-name">${post.pawnshopPostName }
							${post.pawnshopPostBrand } ${post.pawnshopPostTypeCamera }
							${post.pawnshopPostCameraLen } </span>
						<div class="history-detail">
							<ul>

								<!-- Watch,Electronic -->
								<c:if test="${post.pawnshopPostModel != null}">
									<li>Production : ${post.pawnshopPostProduction}</li>
									<li>Model : ${post.pawnshopPostModel}</li>
									<li>Serial : ${post.pawnshopPostSerial}</li>
									<li>Warranty : ${post.pawnshopPostWarranty}</li>
									<li>Purchase : ${post.pawnshopPostPurchase }</li>
								</c:if>

								<!-- Gold -->
								<c:if test="${post.pawnshopPostPure != null}">
									<li>Pure : ${post.pawnshopPostPure  }</li>
									<li>Weigh : ${post.pawnshopPostWeigh }</li>
									<li>Category : ${post.pawnshopPostCategory }</li>
								</c:if>

								<!-- Watch -->
								<c:if test="${post.pawnshopPostCase != null}">
									<li>Case : ${post.pawnshopPostCase }</li>
									<li>Bracelet : ${post.pawnshopPostBracelet }</li>
									<c:if test="${post.pawnshopPostDiamond != null}">
										<li>Diamond : ${post.pawnshopPostDiamond }</li>
									</c:if>
									<c:if test="${post.pawnshopPostPackage != null}">
										<li>Package : ${post.pawnshopPostPackage }</li>
									</c:if>
								</c:if>

								<!-- Electronic tv com telephone -->
								<c:if test="${post.pawnshopPostSize != null}">
									<li>Size : ${post.pawnshopPostSize }</li>
								</c:if>

								<!-- Electronic camera com telephone -->
								<c:if test="${post.pawnshopPostBattery != null}">
									<li>Battery : ${post.pawnshopPostBattery }</li>
								</c:if>

								<!-- Electronic com telephone -->
								<c:if test="${post.pawnshopPostHarddisk != null}">
									<li>Harddisk : ${post.pawnshopPostHarddisk }</li>
								</c:if>

								<!-- Electronic tv -->
								<c:if test="${post.pawnshopPostRemote != null}">
									<li>Remote : ${post.pawnshopPostRemote }</li>
								</c:if>

								<!-- Electronic com-->
								<c:if test="${post.pawnshopPostRam != null}">
									<li>Ram : ${post.pawnshopPostRam }</li>
								</c:if>


								<!-- Electronic telephone-->
								<li>Description : ${post.pawnshopPostDescription }</li>
							</ul>
						</div>

					</div>

				
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