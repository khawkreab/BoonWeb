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

			<!-- ----------------------------------------------------------------------------  -->
			<div class="dashboard">
				<!-- ----------------------------------------------------------------------------  -->
				<div class="DashboardProfileCard  module">
					<a class="DashboardProfileCard-bg u-bgUserColor u-block"
						href="/GuoChakkaphat" tabindex="-1" aria-hidden="true"
						rel="noopener"> </a>
					<div class="DashboardProfileCard-content">
						<a class="DashboardProfileCard-avatarLink u-inlineBlock"
							href="/GuoChakkaphat" title="K'win" tabindex="-1"
							aria-hidden="true" rel="noopener"> <img
							class="DashboardProfileCard-avatarImage js-action-profile-avatar"
							src="https://pbs.twimg.com/profile_images/900580000620924928/jW4Umfy3_bigger.jpg"
							alt="">
						</a>
						<div class="DashboardProfileCard-userFields account-group">
							<div class="DashboardProfileCard-name u-textTruncate">
								<a class="u-textInheritColor js-nav" href="/GuoChakkaphat"
									rel="noopener">K'win</a><span class="UserBadges"></span>
							</div>
							<span class="DashboardProfileCard-screenname u-inlineBlock u-dir"
								dir="ltr"> <a
								class="DashboardProfileCard-screennameLink u-linkComplex u-linkClean js-nav"
								href="/GuoChakkaphat" rel="noopener"><span
									class="username u-dir" dir="ltr">@<b
										class="u-linkComplex-target">GuoChakkaphat</b></span></a>
							</span>
						</div>
					</div>
				</div>
			</div>
			<!-- ----------------------------------------------------------------------------  -->
			<div class="list-type"></div>
			<!-- ----------------------------------------------------------------------------  -->
		</div>
		<!-- ----------------------------------------------------------------------------  -->
		<div class="tbody">
			<c:forEach items="${listGold}" var="gold">
				<div class="card" style="width: 500px;">
					<div class="card-img">
						<img class="card-img-top" src="img/header-bg.jpg"
							alt="Card image cap">
					</div>
					<div class="card-block">
						<h4 class="card-title">${gold.goldName}</h4>
						<p class="card-text">${gold.goldBrand}</p>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item"><a
							href="proposePriceForm.do?goldId=${gold.goldId}">Propose
								Price</a></li>
					</ul>
				</div>
			</c:forEach>
		</div>
		<!-- ----------------------------------------------------------------------------  -->
		<div class="appove">approve</div>

		<!-- ----------------------------------------------------------------------------  -->


		</div>
	</section>
</body>
</html>