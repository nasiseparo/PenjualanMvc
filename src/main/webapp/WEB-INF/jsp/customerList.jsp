<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Custmoer</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
	<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<style type="text/css">
.btn-space {
	margin-bottom: 25px;
	margin-top: 25px;
}

.octicon-pencil { {% octicon pencil %
	
}
}
</style>


</head>

<body>
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a
			class="navbar-brand">List Customer</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link active"
					href="http://localhost:8080/mvc/penduduk/list">Home<span
					class="sr-only">(current)</span></a>
			</div>
		</div>
		<button class="btn float-right btn-danger"
			onclick="location.href='${pageContext.request.contextPath}/penduduk/login';">LogOut</button>
		</nav>

		<div style="margin-bottom: 2">
			<button type="button" class="btn btn-info float-right btn-space"
				onclick="location.href='${pageContext.request.contextPath}/addcustomer';">
				<i class="fa fa-plus"></i> Add New
			</button>
		</div>
		<table border="1" class="table table-striped">
			<tr class="table-dark">
				<th>Kode</th>
				<th>Nama</th>
				<th>Alamat</th>
				<th>Jenis Kelamin</th>
				<th>Email</th>
				<th>Kode Kota</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${customers}" var="p">
				<tr>
					<td>${p.kodeCustomer}</td>
					<td>${p.namaCustomer}</td>
					<td>${p.alamatCustomer}</td>
					<td>${p.jenisKelamin}</td>
					<td>${p.emailCustomer}</td>
					<td>${p.kodeCustomer}</td>
					<td style="text-align: center">
						<button class="btn btn-success octicon-pencil"
						onclick="location.href='${pageContext.request.contextPath}/editcustomer/${p.kodeCustomer}';">
							<i class="fas fa-edit"></i> Edit
						</button>
						<button class="btn btn-danger">
							<i class="fas fa-trash-alt"></i> Delete
						</button>

					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>