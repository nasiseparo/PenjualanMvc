<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Karyawan</title>

<link href="<c:url value='/resources/css/bootstrap.min.css' />"
	rel="stylesheet">
<link href="<c:url value='/resources/css/user-style.css' />"
	rel="stylesheet">
</head>
<body>

	<div class="container container-fluid">
		<input type="button" value="Tambah" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/barang/add';">
		<table class="table table-dark">
			<tr>
				<th>Kode Barang</th>
				<th>Nama Barang</th>
				<th>Stok Barang</th>
				<th>Kode Supplier</th>
			</tr>
			<c:forEach items="${listBarang}" var="barang">
				<tr>
					<td>${barang.kodeBarang}</td>
					<td>${barang.namaBarang}</td>
					<td>${barang.stokBarang}</td>
					<td>${barang.kodeSupplier}</td>
					<td>
						<input type="button" value="Edit" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/barang/edit/${barang.kodeBarang}';" >
						<input type="button" value="Delete" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/barang/delete/${barang.kodeBarang}';" >
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>
</body>
</html>