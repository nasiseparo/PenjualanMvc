<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<title>Form Login</title>
</head>
<body>
	<div class="container">
		<div class="well">
			<h1>Login</h1>
			<f:form modelAttribute="karyawanLogin" method="POST"
				action="${pageContext.request.contextPath}/login/check-user">
				<table>
					<tr>
						<td>User</td>
						<td>:</td>
						<td><f:input path="username" /></td>
					</tr>

					<tr>
						<td>Password</td>
						<td>:</td>
						<td><f:password path="password" /></td>
					</tr>

					<tr>
						<td><input type="submit" class="btn btn-primary"
							value="Login"></td>
					</tr>
					<tr>
						<td>${pesan}</td>
					</tr>
				</table>
			</f:form>
		</div>
	</div>
</body>
</html>