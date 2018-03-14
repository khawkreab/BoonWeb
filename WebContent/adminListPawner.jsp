<!-- 
// page : admin-list-pawner
// version : 1.0
// task : --
// edit by : 
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>admin-list-pawner</title>



<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/new-design.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">


</head>
<body>
	<div id="">

		<!-- Navigation -->
		<jsp:include page="navbar.jsp" />
		
		
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">List Pawner</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">DataTables Advanced Tables</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="">
								<table class="table table-striped table-bordered table-hover"
									id="">
									<thead>
										<tr>
											<th>ID</th>
											<th>Frist Name</th>
											<th>Last Name</th>
											<th>E-mail</th>
											<th>Password</th>
											<th>Remove</th>
										</tr>
									</thead>
									<c:forEach items="${pawnerList}" var="pm">
										<tbody>
											<tr class="odd gradeX">
												<td>${pm.pawnerId}</td>
												<td>${pm.pawnerFirstname}</td> 
												<td>${pm.pawnerLastname}</td>
												<td>${pm.pawnerEmail}</td>
												<td>${pm.pawnerPassword}</td>
												<td><a href="deletePawner.html?id=${pm.pawnerId}">Remove</a></td>
												
											</tr>
										</tbody>
									</c:forEach>
								</table>
							</div>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>

		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="js/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script src="js/dataTables/jquery.dataTables.min.js"></script>
	<script src="js/dataTables/dataTables.bootstrap.min.js"></script>

	<script>
		$(document).ready(function() {
			$('#dataTables-example').DataTable({
				responsive : true
			});
		});
	</script>

</body>
</html>