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

<!-- Gold -->
<c:if test="${estimate.pawnerPostId.pawnerPostItemType == 'Gold'}">
		<div class="card">
			<div class="card-title">
				<h4>Gold</h4>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-hover ">
						<thead>
							<tr>
								<th>Photo</th>
								<th>Category</th>
								<th>Post Name</th>
								<th>Pure</th>
								<th>Weigh</th>
								<th>Description</th>
								<th>Price Min</th>
								<th>Price Max</th>
								<th>Post By</th>
								<th>Status</th>
							</tr>
						</thead>
						<c:forEach items="${eList}" var="estimate">
							<tbody>
							<tr>
								<td>
									<img class="img-responsive"src="images/imageUpload/${estimate.pawnerPostId.pawnerPostPicture}" width="300" />
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostCategory}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostName}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostPure}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostWeigh}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostDescription}
								</td>
								<td>
									${estimate.estimatePriceMin }
								</td>
								<td>
									${estimate.estimatePriceMax }
								</td>
								<td>
									${estimate.pawnerPostId.pawnerId.pawnerFirstname} ${estimate.pawnerPostId.pawnerId.pawnerLastname}
								</td>
								<td>
										<c:if test="${estimate.estimateStatus == 'complete'}">
											<span class="badge badge-success">Complete</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'waiting'}">
											<span class="badge badge-danger">Waiting</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'process'}">
											<span class="badge badge-warning">Process</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'proceed'}">
											<span class="badge badge-warning">Process</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'approve'}">
											<span class="badge badge-primary">Approve</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'denei'}">
											<span class="badge badge-danger">Denei</span>
										</c:if>
								</td>
							</tr>
							</tbody>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
</c:if>
<!-- End Gold -->


<!-- Camera -->
<c:if test="${estimate.pawnerPostId.pawnerPostItemType == 'Camera'}">
		<div class="card">
			<div class="card-title">
				<h4>Camera</h4>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-hover ">
						<thead>
							<tr>
								<th>Photo</th>
								<th>Brand</th>
								<th>Post Name</th>
								<th>Serial Number</th>
								<th>Model</th>
								<th>Type of camera</th>
								<th>Type of len</th>
								<th>Year of purchase</th>
								<th>Battery charger</th>
								<th>Warranty Certificate</th>
								<th>Description</th>
								<th>Price Min</th>
								<th>Price Max</th>
								<th>Post By</th>
								<th>Status</th>
							</tr>
						</thead>
						<c:forEach items="${eList}" var="estimate">
							<tbody>
							<tr>
								<td>
									<img class="img-responsive"src="images/imageUpload/${estimate.pawnerPostId.pawnerPostPicture}" width="300" />
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostBrand}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostName}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostSerial}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostModel}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostTypeCamera}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostCameraLen}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostPurchase}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostBattery}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostWarranty}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostDescription}
								</td>
								<td>
									${estimate.estimatePriceMin }
								</td>
								<td>
									${estimate.estimatePriceMax }
								</td>
								<td>
									${estimate.pawnerPostId.pawnerId.pawnerFirstname} ${estimate.pawnerPostId.pawnerId.pawnerLastname}
								</td>
								<td>
										<c:if test="${estimate.estimateStatus == 'complete'}">
											<span class="badge badge-success">Complete</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'waiting'}">
											<span class="badge badge-danger">Waiting</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'process'}">
											<span class="badge badge-warning">Process</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'proceed'}">
											<span class="badge badge-warning">Process</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'approve'}">
											<span class="badge badge-primary">Approve</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'denei'}">
											<span class="badge badge-danger">Denei</span>
										</c:if>
								</td>
							</tr>
							</tbody>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
</c:if>
<!-- End Camera -->


<!-- Computer&Laptop -->
<c:if test="${estimate.pawnerPostId.pawnerPostItemType == 'Laptop'}">
		<div class="card">
			<div class="card-title">
				<h4>Computer&Laptop</h4>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-hover ">
						<thead>
							<tr>
								<th>Photo</th>
								<th>Brand</th>
								<th>Post Name</th>
								<th>Serial Number</th>
								<th>Model</th>
								<th>Display size</th>
								<th>Harddisk size</th>
								<th>Ram size</th>
								<th>Year of purchase</th>
								<th>Year of production</th>
								<th>Battery charger</th>
								<th>Warranty Certificate</th>
								<th>Description</th>
								<th>Price Min</th>
								<th>Price Max</th>
								<th>Post By</th>
								<th>Status</th>
							</tr>
						</thead>
						<c:forEach items="${eList}" var="estimate">
							<tbody>
							<tr>
								<td>
									<img class="img-responsive"src="images/imageUpload/${estimate.pawnerPostId.pawnerPostPicture}" width="300" />
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostBrand}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostName}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostSerial}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostModel}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostHarddisk}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostRam}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostPurchase}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostProduction}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostBattery}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostWarranty}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostDescription}
								</td>
								<td>
									${estimate.estimatePriceMin }
								</td>
								<td>
									${estimate.estimatePriceMax }
								</td>
								<td>
									${estimate.pawnerPostId.pawnerId.pawnerFirstname} ${estimate.pawnerPostId.pawnerId.pawnerLastname}
								</td>
								<td>
										<c:if test="${estimate.estimateStatus == 'complete'}">
											<span class="badge badge-success">Complete</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'waiting'}">
											<span class="badge badge-danger">Waiting</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'process'}">
											<span class="badge badge-warning">Process</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'proceed'}">
											<span class="badge badge-warning">Process</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'approve'}">
											<span class="badge badge-primary">Approve</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'denei'}">
											<span class="badge badge-danger">Denei</span>
										</c:if>
								</td>
							</tr>
							</tbody>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
</c:if>
<!-- End Computer&Laptop -->


<!-- Smartphone -->
<c:if test="${estimate.pawnerPostId.pawnerPostItemType == 'Smartphone'}">
		<div class="card">
			<div class="card-title">
				<h4>Smartphone</h4>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-hover ">
						<thead>
							<tr>
								<th>Photo</th>
								<th>Brand</th>
								<th>Post Name</th>
								<th>Serial Number</th>
								<th>Model</th>
								<th>Capacity</th>
								<th>Year of purchase</th>
								<th>Year of production</th>
								<th>Battery charger</th>
								<th>Warranty Certificate</th>
								<th>Description</th>
								<th>Price Min</th>
								<th>Price Max</th>
								<th>Post By</th>
								<th>Status</th>
							</tr>
						</thead>
						<c:forEach items="${eList}" var="estimate">
							<tbody>
							<tr>
								<td>
									<img class="img-responsive"src="images/imageUpload/${estimate.pawnerPostId.pawnerPostPicture}" width="300" />
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostBrand}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostName}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostSerial}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostModel}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostCapacity}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostPurchase}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostProduction}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostBattery}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostWarranty}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostDescription}
								</td>
								<td>
									${estimate.estimatePriceMin }
								</td>
								<td>
									${estimate.estimatePriceMax }
								</td>
								<td>
									${estimate.pawnerPostId.pawnerId.pawnerFirstname} ${estimate.pawnerPostId.pawnerId.pawnerLastname}
								</td>
								<td>
										<c:if test="${estimate.estimateStatus == 'complete'}">
											<span class="badge badge-success">Complete</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'waiting'}">
											<span class="badge badge-danger">Waiting</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'process'}">
											<span class="badge badge-warning">Process</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'proceed'}">
											<span class="badge badge-warning">Process</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'approve'}">
											<span class="badge badge-primary">Approve</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'denei'}">
											<span class="badge badge-danger">Denei</span>
										</c:if>
								</td>
							</tr>
							</tbody>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
</c:if>
<!-- End Smartphone -->


<!-- TV -->
<c:if test="${estimate.pawnerPostId.pawnerPostItemType == 'Tv'}">
		<div class="card">
			<div class="card-title">
				<h4>TV</h4>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-hover ">
						<thead>
							<tr>
								<th>Photo</th>
								<th>Brand</th>
								<th>Post Name</th>
								<th>Serial Number</th>
								<th>Model</th>
								<th>Display size</th>
								<th>Year of purchase</th>
								<th>Remote control</th>
								<th>Warranty Certificate</th>
								<th>Description</th>
								<th>Price Min</th>
								<th>Price Max</th>
								<th>Post By</th>
								<th>Status</th>
							</tr>
						</thead>
						<c:forEach items="${eList}" var="estimate">
							<tbody>
							<tr>
								<td>
									<img class="img-responsive"src="images/imageUpload/${estimate.pawnerPostId.pawnerPostPicture}" width="300" />
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostBrand}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostName}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostSerial}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostModel}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostSize}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostPurchase}
								</td>
								<td>
									${estimate.pawnerPostId.panwePostRemote}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostWarranty}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostDescription}
								</td>
								<td>
									${estimate.estimatePriceMin }
								</td>
								<td>
									${estimate.estimatePriceMax }
								</td>
								<td>
									${estimate.pawnerPostId.pawnerId.pawnerFirstname} ${estimate.pawnerPostId.pawnerId.pawnerLastname}
								</td>
								<td>
										<c:if test="${estimate.estimateStatus == 'complete'}">
											<span class="badge badge-success">Complete</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'waiting'}">
											<span class="badge badge-danger">Waiting</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'process'}">
											<span class="badge badge-warning">Process</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'proceed'}">
											<span class="badge badge-warning">Process</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'approve'}">
											<span class="badge badge-primary">Approve</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'denei'}">
											<span class="badge badge-danger">Denei</span>
										</c:if>
								</td>
							</tr>
							</tbody>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
</c:if>
<!-- End TV -->


<!-- Watch -->
<c:if test="${estimate.pawnerPostId.pawnerPostItemType == 'watch'}">
		<div class="card">
			<div class="card-title">
				<h4>Wearables (Watch)</h4>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-hover ">
						<thead>
							<tr>
								<th>Photo</th>
								<th>Brand</th>
								<th>Post Name</th>
								<th>Type of case</th>
								<th>Type of bracelet</th>
								<th>Diamonds on your timepiece?</th>
								<th>Production year</th>
								<th>Packagingl</th>
								<th>Warranty Certificate</th>
								<th>Description</th>
								<th>Price Min</th>
								<th>Price Max</th>
								<th>Post By</th>
								<th>Status</th>
							</tr>
						</thead>
						<c:forEach items="${eList}" var="estimate">
							<tbody>
							<tr>
								<td>
									<img class="img-responsive"src="images/imageUpload/${estimate.pawnerPostId.pawnerPostPicture}" width="300" />
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostBrand}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostName}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostCase}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostBracelet}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostDiamond}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostProduction}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostPackage}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostWarranty}
								</td>
								<td>
									${estimate.pawnerPostId.pawnerPostDescription}
								</td>
								<td>
									${estimate.estimatePriceMin }
								</td>
								<td>
									${estimate.estimatePriceMax }
								</td>
								<td>
									${estimate.pawnerPostId.pawnerId.pawnerFirstname} ${estimate.pawnerPostId.pawnerId.pawnerLastname}
								</td>
								<td>
										<c:if test="${estimate.estimateStatus == 'complete'}">
											<span class="badge badge-success">Complete</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'waiting'}">
											<span class="badge badge-danger">Waiting</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'process'}">
											<span class="badge badge-warning">Process</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'proceed'}">
											<span class="badge badge-warning">Process</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'approve'}">
											<span class="badge badge-primary">Approve</span>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'denei'}">
											<span class="badge badge-danger">Denei</span>
										</c:if>
								</td>
							</tr>
							</tbody>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
</c:if>
<!-- End Watch -->

</section>


</body>
</html>