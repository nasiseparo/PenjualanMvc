
<%@include file="/WEB-INF/jsp/include/header.jsp"%>
<%@include file="/WEB-INF/jsp/include/sidebar.jsp"%>




<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" style="min-height: 1909.81px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Add Customer</h1>
				</div>

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

						<!-- /.card-header -->

						<div class="card-header">
							<h3 class="card-title">Add Customer</h3>
						</div>
						<!-- /.card-header -->
						<!-- form start -->
						<form role="form"
							action="${pageContext.request.contextPath}/customer/submitCustomer"
							method="post" modelAttribute="customer">
							<div class="card-body">
								<div class="form-group">

									<label for="nota">Kode Customer</label> <input type="text"
										class="form-control" id="kodeCustomer"
										placeholder="Kode Customer" name="kodeCustomer" value="${customer.kodeCustomer}"}>
								</div>
								
								<div class="form-group">

									<label for="nota">Nama Customer</label> <input type="text"
										class="form-control" id="namaCustomer"
										placeholder="Nama Customer" name="namaCustomer" value="${customer.namaCustomer}">
								</div>

								<div class="form-group">
									<label for="email">Email</label> <input type="text"
										class="form-control" id="email" placeholder="Email"
										name="emailCustomer" value="${customer.emailCustomer}">
								</div>
								<div class="form-group">
									<label for="jenisKelamin">Jenis Kelamin</label> <input
										type="text" class="form-control" id="jenisKelamin"
										placeholder="Jenis Kelamin" name=jenisKelamin value="${customer.jenisKelamin}">
								</div>
								<div class="form-group">
									<label for="alamatCustomer">Alamat Customer</label> <input
										type="text" class="form-control" id="alamatCustomer"
										placeholder="Alamat Customer" name="alamatCustomer" value="${customer.alamatCustomer}">
								</div>
								<div class="form-group">
									<label for="kodeKota">Kode Kota</label> <input type="text"
										class="form-control" id="kodeKota" placeholder="kodeKota"
										name="kodeKota" value="${customer.kodeKota}">
								</div>


							</div>
							<!-- /.card-body -->

							<div class="card-footer">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form>
					</div>
					<!-- /.card-body -->

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
