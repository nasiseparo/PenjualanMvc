<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Homepage</title>

<link href="<c:url value='/resources/css/bootstrap.min.css' />"
	rel="stylesheet">
<link href="<c:url value='/resources/css/user-style.css' />"
	rel="stylesheet">
</head>
<body>
<div class="container fluid-container">
<input type="button" value="Menu Karyawan" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/karyawan';">
</div>
<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>
</body>
</html>