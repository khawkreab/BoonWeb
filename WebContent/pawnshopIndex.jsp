<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Bounyong</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/custom-style.min.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

</head>

<body id="page-top">

	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />


	<section>
		<div class="container">
			<div class="dashboard-left">

				<!-- ----------------------------------------------------------------------------  -->
				<div class="dashboard">
					<!-- ----------------------------------------------------------------------------  -->
					<a> <img class="DashboardProfileCard" src="img/profile.jpg"></a>
					<!-- ----------------------------------------------------------------------------  -->
					<div class="DashboardProfileCard-userFields">
						<a>K'win</a> <br> <a>@<b>GuoChakkaphat</b></a>
					</div>
					<!-- ----------------------------------------------------------------------------  -->
				</div>
				<!-- ----------------------------------------------------------------------------  -->
				<div class="list-type">

					<ul class="list-group">
						<li class="list-group-item active">list</li>
						<li class="list-group-item">New <span class="badge">12</span></li>
						<li class="list-group-item">Deleted <span class="badge">5</span></li>
						<li class="list-group-item">Warnings <span class="badge">3</span></li>
					</ul>
				</div>
				<!-- ----------------------------------------------------------------------------  -->
			</div>
			<!-- ----------------------------------------------------------------------------  -->
			<div class="dashboard-list">
				<ul>
					<c:forEach items="${listGold}" var="gold">
						<li class="tbody">
							<div class="d-flex flex-column tbody-pd">
								<div class="p-2">
									<!-- ----------------------------------------------------------------------------  -->
									<div class="tbody-content">
										<div class="d-flex justify-content-end">
											<div class="mr-auto p-2 fs">
												<img class="img-icon" alt="profilePic" src="img/gold.png" />
												${gold.pawner.firstName}  ${gold.pawner.lastName}
											</div>
											<div class="p-2">06:00 21/11/2560</div>
										</div>
									</div>
									<!-- ----------------------------------------------------------------------------  -->
								</div>
								<div class="p-2">
									<!-- ----------------------------------------------------------------------------  -->
									<div class="tbody-element">
										<div class="d-flex flex-column">
											<div class="p-2"><b>${gold.goldName}</b> , <b>brand</b>
												${gold.goldBrand} , <b>Pure</b> , <b>Weight</b></div>
											<div class="p-2">${gold.goldDetail}</div>
											<div class="p-2 img-flame">
												<img class="img-list" src="img/profile.jpg">
											</div>
											<div class="p-2 flex-row">
												<div class="d-flex justify-content-end">
													<div class="mr-auto p-2">if you want</div>
													<div class="p-2">
														<a class="btn btn-sm btn-primary"
															href="proposePriceForm.do?goldId=${gold.goldId}">Propost</a>
													</div>
												</div>

											</div>
										</div>
									</div>
								</div>
								<!-- ----------------------------------------------------------------------------  -->
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<!-- ----------------------------------------------------------------------------  -->
			<div class="appove">
				<ul class="list-group">
					<li class="list-group-item active">Cras justo odio</li>
					<li class="list-group-item">Dapibus ac facilisis in</li>
					<li class="list-group-item">Morbi leo risus</li>
					<li class="list-group-item">Porta ac consectetur ac</li>
					<li class="list-group-item">Vestibulum at eros</li>
				</ul>
			</div>
			<!-- ----------------------------------------------------------------------------  -->
		</div>
	</section>
		<!-- ----------------------------------------------------------------------------  -->
		<jsp:include page="footer.jsp" />
	
	
</body>
</html>