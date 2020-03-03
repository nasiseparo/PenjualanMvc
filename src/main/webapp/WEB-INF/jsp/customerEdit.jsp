<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Data Customer</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<br>
		<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a
			class="navbar-brand" href="#">Edit Data Customer</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="${pageContext.request.contextPath}/listcustomer">Home <span
						class="sr-only">(current)</span>
				</a></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Menu </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item"
							href="${pageContext.request.contextPath}/addcustomer">Tambah
							Data</a> <a class="dropdown-item" href="#">Another action</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div></li>

			</ul>

		</div>
		</nav>


		<form class="px-4 py-3" action="${pageContext.request.contextPath}/updatecustomer"
			method="post" modelAttribute="customer">

			<div class="form-group">
				<label for="kodeCustomer">Kode Customer</label> <input type="text" class="form-control"
					id="kodeCustomer" aria-describedby="nik" placeholder="Masukan Kode Customer"
					name="kodeCustomer" autocomplete="off" value="${kodeCustomer}">
			</div>
			<div class="form-group">
					<label for="namaCustomer">Nama</label> <input type="text" class="form-control"
					id="namaCustomer" aria-describedby="namaCustomer" placeholder="Masukan Nama"
					name="namaCustomer" autocomplete="off" value="${namaCustomer}">
			</div>
			<div class="form-group">
				<label for="alamatCustomer">Alamat</label>
				<textarea class="form-control" cols="50" name="alamatCustomer">${alamatCustomer}</textarea>
			</div>
			<div class="form-group">
				<label for="jenisKelamin">Jenis Kelamin</label> <input
					type="text" class="form-control" id="jenisKelamin"
					aria-describedby="jenisKelamin" placeholder="Masukan Jenis Kelamin"
					name="jenisKelamin" autocomplete="off"  value="${jenisKelamin}">
			</div>
			<div class="form-group">
				<label for="emailCustomer">Email</label> <input
					type="email" class="form-control" id="emailCustomer"
					aria-describedby="emailCustomer" placeholder="Email@email.com"
					name="emailCustomer" autocomplete="off"  value="${emailCustomer}">
			</div>
			
			<div class="form-group">
				<label for="kodeKota">Kode Kota</label> <input
					type="text" class="form-control" id="kodeKota"
					aria-describedby="kodeKota" placeholder="Masukan kode kota"
					name="kodeKota" autocomplete="off"  value="${kodeKota}">
			</div>
			
			<button type="submit" class="btn btn-primary">Update Data</button>
		</form>
		
	</div>
	

</body>
</html>