<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Supplier</title>

<link href="<c:url value='/resources/css/bootstrap.min.css' />"
	rel="stylesheet">
<link href="<c:url value='/resources/css/user-style.css' />"
	rel="stylesheet">
</head>
<body>

	<div class="container container-fluid">
		<input type="button" value="Tambah" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/supplier/add';">
		<table class="table table-dark">
			<tr>
				<th>Kode Supplier</th>
				<th>Nama Supplier</th>
				<th>Alamat Supplier</th>
				<th>Telp Supplier</th>
				<th>Email Supplier</th>
				<th>Kode Kota</th>
			</tr>
			<c:forEach items="${listsupplier}" var="sup">
				<tr>
					<td>${sup.kodeSupplier}</td>
					<td>${sup.namaSupplier}</td>
					<td>${sup.alamatSupplier}</td>
					<td>${sup.telpSupplier}</td>
					<td>${sup.emailSupplier}</td>
					<td>${sup.kodeKota}</td>
					<td>
						<input type="button" value="Edit" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/supplier/edit/${sup.kodeSupplier}';" >
						<input type="button" value="Delete" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/supplier/delete/${sup.kodeSupplier}';" >
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>
</body>
</html>