<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link href="<c:url value='/resources/css/bootstrap.min.css' />"
	rel="stylesheet">
<link href="<c:url value='/resources/css/user-style.css' />"
	rel="stylesheet">
<!-- datepicker css -->
<!-- <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" /> -->
<link href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/css/bootstrap-datetimepicker.css" rel="stylesheet"/>

<title>Supplier</title>
</head>
<body>

	<div class="container container-fluid">
		<form:form method="POST"
			action="${pageContext.request.contextPath}/supplier/save"
			modelAttribute="dto">
			<div class="form-group">
				<label for="exampleInputEmail1">Kode Supplier</label>
				<form:input class="form-control" placeholder="Masukkan Kode Supplier"
					path="kodeSupplier" />
				<form:errors path="kodeSupplier" />
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Nama Supplier</label>
				<form:input class="form-control" placeholder="Masukkan Nama Supplier"
					path="namaSupplier" />
				<form:errors path="namaSupplier" />
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Alamat Supplier</label>
				<form:input class="form-control" placeholder="Masukkan Alamat Supplier"
					path="alamatSupplier" />
				<form:errors path="alamatSupplier" />
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Telp Supplier</label>
				<form:input class="form-control" placeholder="Masukkan Telp Supplier"
					path="telpSupplier" />
				<form:errors path="telpSupplier" />
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Email Supplier</label>
				<form:input class="form-control" placeholder="Masukkan Email Supplier"
					path="emailSupplier" />
				<form:errors path="emailSupplier" />
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Kode Kota</label>
				<form:input class="form-control" placeholder="Masukkan Kode Kota"
					path="kodeKota" />
				<form:errors path="kodeKota" />
			</div>

			<%-- <div class="form-group">
				<label for="exampleInputPassword1">Tanggal Lahir</label>
				<form:input class="form-control" placeholder="dd/MM/yyyy"
					path="tanggalLahir" />
				<form:errors path="tanggalLahir" />
			</div> --%>
			
			<%-- <div class="form-group">
				<label for="exampleInputPassword1">Kode Supplier</label>
				<form:input class="form-control" placeholder="Kode Supplier"
					path="kodeSupplier" />
				<form:errors path="kodeSupplier" />
			</div> --%>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form:form>
	</div>

	<!-- Optional JavaScript -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"> </script>
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
	<!-- Date time picker -->
	
	<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>
	<!-- <script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script> -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
	<script src="<c:url value='/resources/js/user.js' />"></script>
</body>
</html>