<%@include file="/WEB-INF/jsp/include/header.jsp"%>
<%@include file="/WEB-INF/jsp/include/sidebar.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" style="min-height: 1909.81px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Data Customer</h1>
				</div>
				<!--     <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Simple Tables</li>
            </ol>
          </div> -->
			</div>
		</div>
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">

							<a href="${pageContext.request.contextPath}/customer/add"
								class="btn btn-primary card-title">+Add</a>

							<div class="card-tools">
								<div class="input-group input-group-sm" style="width: 150px;">
									<input type="text" name="table_search"
										class="form-control float-right" placeholder="Search">

									<div class="input-group-append">
										<button type="submit" class="btn btn-default">
											<i class="fas fa-search"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
				
						
						<!-- /.card-header -->
						<div class="card-body table-responsive p-0">
							<table class="table table-hover text-nowrap">
								<thead>
									<tr>
										<th>Kode Customer</th>
										<th>Nama Customer</th>
										<th>Email Customer</th>
										<th>Jenis Kelamin</th>
										<th>Alamat Customer</th>
										<th>Kode Kota</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach items="${customer}" var="c">
										<tr>
											<td>${c.kodeCustomer}</td>
											<td>${c.namaCustomer}</td>
											<td>${c.emailCustomer}</td>
											<td>${c.jenisKelamin}</td>
											<td>${c.alamatCustomer}</td>
											<td>${c.kodeKota}</td>
											<td><a class="btn btn-warning"
												href="${pageContext.request.contextPath}/customer/edit/${c.kodeCustomer}">Edit</a>&nbsp
												<a class="btn btn-danger" href="${pageContext.request.contextPath}/customer/delete/${c.kodeCustomer}">Delete</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<div class="card-footer clearfix">
								<ul class="pagination pagination-sm m-0 float-right">
									<li class="page-item"><a class="page-link" href="#">�</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">�</a></li>
								</ul>
							</div>
						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->

				</div>
			</div>


		</div>
</div>
<!-- /.container-fluid -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<%@include file="/WEB-INF/jsp/include/footer.jsp"%>