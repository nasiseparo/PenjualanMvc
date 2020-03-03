<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">

<title>Insert title here</title>
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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>


<style type="text/css">
.btn-space {
	margin-bottom: 25px;
	margin-top: 25px;
}

.text-space {
	margin-bottom: 15px;
	margin-top: 15px;
}
</style>
</head>

<body>

	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a
			class="navbar-brand">Add Customer</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link active"
					href="http://localhost:8080/PenjualanMvc/addcustomer">Home<span
					class="sr-only">(current)</span></a> <a class="nav-item nav-link"
					href="http://localhost:8080/PenjualanMvc/listcustomer">List</a>
			</div>
		</div>
		</nav>


		<div style="margin-top: 3">
			<form:form method="post"
				action="${pageContext.request.contextPath}/savecustomer"
				modelAttribute="customerAdd">

				<label for="kodeCustomer" class="text-space">Kode Customer:</label>
				<form:input type="text" class="form-control"
					placeholder="Kode Customer" path="kodeCustomer" />

				<label for="namaCustomer" class="text-space">Nama:</label>
				<form:input type="text" class="form-control"
					placeholder="Nama Customer" path="namaCustomer" />


				<label for="alamatCustomer" class="text-space">Alamat:</label>
				<form:input class="form-control" path="alamatCustomer" rows="3" />

				<label for="jenisKelamin" class="text-space">Jenis Kelamin:</label>
				<form:input type="text" class="form-control"
					placeholder="Jenis Kelamin" path="jenisKelamin" />

				<label for="emailCustomer" class="text-space">Email:</label>
				<form:input type="email" class="form-control"
					placeholder="Email@email.com" path="emailCustomer" />

				<label for="kodeKota" class="text-space">Kode Kota:</label>
				<form:input type="input" class="form-control"
					placeholder="Kode Kota" path="kodeKota" />

				<input type="submit" class="btn btn-primary btn-space"
					value="simpan">
			</form:form>
		</div>

	</div>

	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>