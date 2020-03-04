<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<link href="<c:url value='/resources/css/bootstrap.min.css' />"
	rel="stylesheet">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 3 | Dashboard</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="<c:url value='/resources/plugins/fontawesome-free/css/all.min.css'/>">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bbootstrap 4 -->
<link rel="stylesheet"
	href="<c:url value='/resources/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css'/>">
<!-- iCheck -->
<link rel="stylesheet"
	href="<c:url value='/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css'/>">
<!-- JQVMap -->
<link rel="stylesheet"
	href="<c:url value='/resources/plugins/jqvmap/jqvmap.min.css'/>">
<!-- Theme style -->
<link rel="stylesheet"
	href="<c:url value='/resources/dist/css/adminlte.min.css'/>">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="<c:url value='/resources/plugins/overlayScrollbars/css/OverlayScrollbars.min.css'/>">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="<c:url value='/resources/plugins/daterangepicker/daterangepicker.css'/>">
<!-- summernote -->
<link rel="stylesheet"
	href="<c:url value='/resources/plugins/summernote/summernote-bs4.css'/>">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">

</head>
<body>
	<div class="wrapper">
		<div class="container">
			<div class="row">
				
					<div class="center">

						<div class="container-fluid">
							<div class="row">
								<div class="col-8">
									<div class="card card-info">
										<div class="card-header">
											<h3 class="card-title">Login</h3>
										</div>
										<!-- /.card-header -->
										<!-- form start -->
										<form class="form-horizontal">
											<div class="card-body">
												<div class="form-group row">
													<label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
													<div class="col-sm-10">
														<input type="email" class="form-control" id="inputEmail3"
															placeholder="Email">
													</div>
												</div>
												<div class="form-group row">
													<label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
													<div class="col-sm-10">
														<input type="password" class="form-control"
															id="inputPassword3" placeholder="Password">
													</div>
												</div>
												<div class="form-group row">
													<div class="offset-sm-2 col-sm-10">
														<div class="form-check">
															<input type="checkbox" class="form-check-input"
																id="exampleCheck2"> <label
																class="form-check-label" for="exampleCheck2">Remember
																me</label>
														</div>
													</div>
												</div>
											</div>
											<!-- /.card-body -->
											<div class="card-footer">
												<button type="submit" class="btn btn-info">Sign in</button>
												<button type="submit" class="btn btn-default float-right">Cancel</button>
											</div>
											<!-- /.card-footer -->
										</form>
									</div>
								</div>
							</div>
						</div>
						<!-- /.container-fluid -->

					</div>

				</div>
			</div>
		</div>
	</div>

	<style>
.center {
	margin: auto;
	width: 60%;
	padding: 10px;
}
</style>