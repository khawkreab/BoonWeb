<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Date"%>

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
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

</head>

<body id="page-top">
	<!-- Navigation -->
	<jsp:include page="navbar.jsp" />

	<%
		Long id = (Long) request.getSession().getAttribute("id");
	%>
	<section>
		<div class="container">
			<!-- ----------------------------------------------------------------------------  -->
			<%-- <div class="dashboard-list">
				<ul>
					<c:forEach items="${listGold}" var="gold">
						<li class="tbody">
							<div class="d-flex flex-column tbody-pd">
								<div class="p-2">
									<!-- ----------------------------------------------------------------------------  -->
									<div class="tbody-content">
										<div class="d-flex justify-content-end">
											<div class="mr-auto p-2 fs">
												<div class="img-icon">
													<div class="user-avatar__inner">
														<span class="">${gold.pawner.firstName.substring(0,1).toUpperCase()}</span>
													</div>
												</div>
												${gold.pawner.firstName} ${gold.pawner.lastName}
											</div>
											<div class="p-2">${gold.date}</div>
										</div>
									</div>
									<!-- ----------------------------------------------------------------------------  -->
								</div>
								<div class="p-2">
									<!-- ----------------------------------------------------------------------------  -->
									<div class="tbody-element">
										<div class="d-flex flex-column">
											<div class="p-2">
												<b>${gold.goldName}</b> , <b>brand</b> ${gold.goldBrand} , <b>Pure</b>
												, <b>Weight</b>
											</div>
											<div class="p-2">
												<b>Detail</b>${gold.goldDetail}</div>
											<div class="p-2 img-flame">
												<img class="img-list" src="img/profile.jpg">
											</div>
											<div class="p-2 flex-row">
												<div class="d-flex justify-content-end">
													<div class="mr-auto p-2">if you want</div>
													<div class="p-2">

														<form:form action="saveProposePrice.do"
															commandName="proposePrice">
															<form:hidden path="proposePriceId" />
															<form:hidden path="pawnshopId.pawnshopId" value="<%=id%>" />
															<form:hidden path="goldId.goldId" value="${gold.goldId}" />
															<form:hidden path="status" value="Processing" />
															<form:input path="price" type="number" value="THB"
																pattern="[0-9]" min="1" max="1000000" />THB

															<button type="submit" class="btn btn-sm btn-primary">Propost</button>
														</form:form>
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
			</div> --%>
			<!-- ----------------------------------------------------------------------------  -->
			<!-- ----------------------------------------------------------------------------  -->
			<div class="card-deck">
				<a href="#">
					<div class="card">
						<span class="card-img-top"> <img src="img/profile.jpg"
							alt="Card image cap"></span>
						<div class="card-body">
							<span class="card-title">Card title
								gdfuyrfikfuilfliydfuyklflfrlufg;uil</span> <span class="card-text">This
								is a wider card with supporting text below as a natural lead-in
								to additional content. This content is a little bit longer.</span> <span
								class="card-footer"> <small class="text-muted">Last
									updated 3 mins ago</small>
							</span>
						</div>
					</div>
				</a> <a href="#">
					<div class="card">
						<span class="card-img-top"> <img src="img/profile.jpg"
							alt="Card image cap"></span>
						<div class="card-body">
							<span class="card-title">Card title
								gdfuyrfikfuilfliydfuyklflfrlufg;uil</span> <span class="card-text">This
								is a wider card with supporting text below as a natural lead-in
								to additional content. This content is a little bit longer.</span> <span
								class="card-footer"> <small class="text-muted">Last
									updated 3 mins ago</small>
							</span>
						</div>
					</div>
				</a> <a href="#">
					<div class="card">
						<span class="card-img-top"> <img src="img/profile.jpg"
							alt="Card image cap"></span>
						<div class="card-body">
							<span class="card-title">Card title
								gdfuyrfikfuilfliydfuyklflfrlufg;uil</span> <span class="card-text">This
								is a wider card with supporting text below as a natural lead-in
								to additional content. This content is a little bit longer.</span> <span
								class="card-footer"> <small class="text-muted">Last
									updated 3 mins ago</small>
							</span>
						</div>
					</div>
				</a> <a href="#">
					<div class="card">
						<span class="card-img-top"> <img src="img/profile.jpg"
							alt="Card image cap"></span>
						<div class="card-body">
							<span class="card-title">Card title
								gdfuyrfikfuilfliydfuyklflfrlufg;uil</span> <span class="card-text">This
								is a wider card with supporting text below as a natural lead-in
								to additional content. This content is a little bit longer.</span> <span
								class="card-footer"> <small class="text-muted">Last
									updated 3 mins ago</small>
							</span>
						</div>
					</div>
				</a> <a href="#">
					<div class="card">
						<span class="card-img-top"> <img src="img/profile.jpg"
							alt="Card image cap"></span>
						<div class="card-body">
							<span class="card-title">Card title
								gdfuyrfikfuilfliydfuyklflfrlufg;uil</span> <span class="card-text">This
								is a wider card with supporting text below as a natural lead-in
								to additional content. This content is a little bit longer.</span> <span
								class="card-footer"> <small class="text-muted">Last
									updated 3 mins ago</small>
							</span>
						</div>
					</div>
				</a> <a href="#">
					<div class="card">
						<span class="card-img-top"> <img src="img/profile.jpg"
							alt="Card image cap"></span>
						<div class="card-body">
							<span class="card-title">Card title
								gdfuyrfikfuilfliydfuyklflfrlufg;uil</span> <span class="card-text">This
								is a wider card with supporting text below as a natural lead-in
								to additional content. This content is a little bit longer.</span> <span
								class="card-footer"> <small class="text-muted">Last
									updated 3 mins ago</small>
							</span>
						</div>
					</div>
				</a> <a href="#">
					<div class="card">
						<span class="card-img-top"> <img src="img/profile.jpg"
							alt="Card image cap"></span>
						<div class="card-body">
							<span class="card-title">Card title
								gdfuyrfikfuilfliydfuyklflfrlufg;uil</span> <span class="card-text">This
								is a wider card with supporting text below as a natural lead-in
								to additional content. This content is a little bit longer.</span> <span
								class="card-footer"> <small class="text-muted">Last
									updated 3 mins ago</small>
							</span>
						</div>
					</div>
				</a> <a href="#">
					<div class="card">
						<span class="card-img-top"> <img src="img/profile.jpg"
							alt="Card image cap"></span>
						<div class="card-body">
							<span class="card-title">Card title
								gdfuyrfikfuilfliydfuyklflfrlufg;uil</span> <span class="card-text">This
								is a wider card with supporting text below as a natural lead-in
								to additional content. This content is a little bit longer.</span> <span
								class="card-footer"> <small class="text-muted">Last
									updated 3 mins ago</small>
							</span>
						</div>
					</div>
				</a> <a href="#">
					<div class="card">
						<span class="card-img-top"> <img src="img/profile.jpg"
							alt="Card image cap"></span>
						<div class="card-body">
							<span class="card-title">Card title
								gdfuyrfikfuilfliydfuyklflfrlufg;uil</span> <span class="card-text">This
								is a wider card with supporting text below as a natural lead-in
								to additional content. This content is a little bit longer.</span> <span
								class="card-footer"> <small class="text-muted">Last
									updated 3 mins ago</small>
							</span>
						</div>
					</div>
				</a> <a href="#">
					<div class="card">
						<span class="card-img-top"> <img src="img/profile.jpg"
							alt="Card image cap"></span>
						<div class="card-body">
							<span class="card-title">Card title
								gdfuyrfikfuilfliydfuyklflfrlufg;uil</span> <span class="card-text">This
								is a wider card with supporting text below as a natural lead-in
								to additional content. This content is a little bit longer.</span> <span
								class="card-footer"> <small class="text-muted">Last
									updated 3 mins ago</small>
							</span>
						</div>
					</div>
				</a> <a href="#">
					<div class="card">
						<span class="card-img-top"> <img src="img/profile.jpg"
							alt="Card image cap"></span>
						<div class="card-body">
							<span class="card-title">Card title
								gdfuyrfikfuilfliydfuyklflfrlufg;uil</span> <span class="card-text">This
								is a wider card with supporting text below as a natural lead-in
								to additional content. This content is a little bit longer.</span> <span
								class="card-footer"> <small class="text-muted">Last
									updated 3 mins ago</small>
							</span>
						</div>
					</div>
				</a>
			</div>
		</div>
	</section>
	<!-- ----------------------------------------------------------------------------  -->
	<jsp:include page="footer.jsp" />


</body>
</html>