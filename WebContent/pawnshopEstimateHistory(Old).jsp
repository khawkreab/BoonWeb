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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>pawnshop-estimate-history</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/custom-style.min.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

	<section>
		<div class="container">
			<div class="history-filter">
				<div class="d-flex">
					<div class="mr-auto p-2">Estimate History</div>

				</div>
			</div>
		</div>
		<c:forEach items="${eList}" var="estimate">
			<div class="container">

				<div class="history-main">
					<div class="d-flex history-title">

						<div class="ml-auto p-2">
							<span>${estimate.pawnerPostId.pawnerPostItemType}</span>
						</div>
					</div>
					<div class="history-body">
						<div class="row">
							<div class="col-sm-5">

								<div class="pro-img">
									<img class="img-responsive"
										src="images/imageUpload/${estimate.pawnerPostId.pawnerPostPicture}"
										width="300" />
								</div>
							</div>
							<div class="col-sm-7">

								<span class="history-name">${estimate.pawnerPostId.pawnerPostName}
									${estimate.pawnerPostId.pawnerPostBrand}
									${estimate.pawnerPostId.pawnerPostTypeCamera}
									${estimate.pawnerPostId.pawnerPostCameraLen} </span>
									
								<div class="history-detail">
								
									<ul>

										<!-- Watch,Electronic -->
										<c:if test="${estimate.pawnerPostId.pawnerPostModel != null}">
											<li>Model : ${estimate.pawnerPostId.pawnerPostModel}</li>
											<li>Serial : ${estimate.pawnerPostId.pawnerPostSerial}</li>
										</c:if>

										<c:if
											test="${estimate.pawnerPostId.pawnerPostProduction != null}">
											<li>Production :
												${estimate.pawnerPostId.pawnerPostProduction}</li>
										</c:if>

										<c:if
											test="${estimate.pawnerPostId.pawnerPostWarranty != null}">
											<li>Warranty :
												${estimate.pawnerPostId.pawnerPostWarranty}</li>
										</c:if>
										<c:if
											test="${estimate.pawnerPostId.pawnerPostPurchase != null}">
											<li>Purchase :
												${estimate.pawnerPostId.pawnerPostPurchase}</li>
										</c:if>

										<!-- Gold -->
										<c:if test="${estimate.pawnerPostId.pawnerPostPure != null}">
											<li>Pure : ${estimate.pawnerPostId.pawnerPostPure  }</li>
											<li>Weigh : ${estimate.pawnerPostId.pawnerPostWeigh }</li>
											<li>Category :
												${estimate.pawnerPostId.pawnerPostCategory }</li>
										</c:if>

										<!-- Watch -->
										<c:if test="${estimate.pawnerPostId.pawnerPostCase != null}">
											<li>Case : ${estimate.pawnerPostId.pawnerPostCase }</li>
											<li>Bracelet :
												${estimate.pawnerPostId.pawnerPostBracelet }</li>
											<c:if
												test="${estimate.pawnerPostId.pawnerPostDiamond != null}">
												<li>Diamond : ${estimate.pawnerPostId.pawnerPostDiamond }</li>
											</c:if>
											<c:if
												test="${estimate.pawnerPostId.pawnerPostPackage != null}">
												<li>Package :
													${estimate.pawnerPostId.pawnerPostPackage}</li>
											</c:if>
										</c:if>

										<!-- Electronic tv com telephone -->
										<c:if test="${estimate.pawnerPostId.pawnerPostSize != null}">
											<li>Size : ${estimate.pawnerPostId.pawnerPostSize }</li>
										</c:if>

										<!-- Electronic camera com telephone -->
										<c:if
											test="${estimate.pawnerPostId.pawnerPostBattery != null}">
											<li>Battery : ${estimate.pawnerPostId.pawnerPostBattery}</li>
										</c:if>

										<!-- Electronic com telephone -->
										<c:if
											test="${estimate.pawnerPostId.pawnerPostHarddisk != null}">
											<li>Harddisk :
												${estimate.pawnerPostId.pawnerPostHarddisk }</li>
										</c:if>

										<!-- Electronic tv -->
										<c:if test="${estimate.pawnerPostId.panwePostRemote != null}">
											<li>Remote : ${estimate.pawnerPostId.panwePostRemote }</li>
										</c:if>

										<!-- Electronic com-->
										<c:if test="${estimate.pawnerPostId.pawnerPostRam!= null}">
											<li>Ram : ${estimate.pawnerPostId.pawnerPostRam }</li>
										</c:if>


										<!-- Electronic telephone-->
										<li>Description :
											${estimate.pawnerPostId.pawnerPostDescription }</li>

										<li>Price Min: ${estimate.estimatePriceMin }</li>
										<li>Price Max: ${estimate.estimatePriceMax }</li>
										<li>Estimate Date: ${estimate.estimateDate}</li>
										<li>Access Date: ${estimate.estimateAccessDate}</li>
										<%-- <li>Status   : ${estimate.estimateStatus }</li>   --%>

										<!-- Status -->
										<c:if test="${estimate.estimateStatus == 'complete'}">
											<li>Status : <span class="badge badge-success">Complete</span>
											</li>
										</c:if>

										<c:if test="${estimate.estimateStatus == 'waiting'}">
											<li>Status : <span class="badge badge-danger">Waiting</span>
											</li>
										</c:if>

										<c:if test="${estimate.estimateStatus == 'process'}">
											<li>Status : <span class="badge badge-warning">Process</span>
											</li>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'proceed'}">
											<li>Status : <span class="badge badge-warning">Process</span>
											</li>
										</c:if>

										<c:if test="${estimate.estimateStatus == 'approve'}">
											<li>Status : <span class="badge badge-primary">Approve</span>
											</li>
										</c:if>
										<c:if test="${estimate.estimateStatus == 'denei'}">
											<li>Status : <span class="badge badge-danger">Denei</span>
											</li>
										</c:if>




										<li>
											<h3>Post By</h3>
										</li>
										<li>Pawner Name :<span class="badge badge-default">
												${estimate.pawnerPostId.pawnerId.pawnerFirstname}
												${estimate.pawnerPostId.pawnerId.pawnerLastname}</span></li>
										<li>Pawner Mail :<span class="badge badge-default">
												${estimate.pawnerPostId.pawnerId.pawnerEmail} </span></li>



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
<%-- 
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
<c:if test="${estimate.pawnerPostId.pawnerPostItemType == 'Watch'}">
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
</html>  --%>
