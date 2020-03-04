
<%@include file="/WEB-INF/jsp/include/header.jsp"%>
<%@include file="/WEB-INF/jsp/include/sidebar.jsp"%>




<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" style="min-height: 1909.81px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Add Transaksi</h1>
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
							<h3 class="card-title">Add Transaksi</h3>
						</div>
						<!-- /.card-header -->
						<!-- form start -->
						<form role="form"
							action="${pageContext.request.contextPath}/transaksi/submitTransaksi"
							method="post">
							<div class="card-body">
								<div class="form-group">

									<label for="noNota">No Nota</label> <input type="text"
										class="form-control" id="noNota"
										placeholder="No Nota" name="noNota">
								</div>
								
								<div class="form-group">

									<label for="tanggalTransaksi">Tanggal Transaksi</label> <input type="text"
										class="form-control" id="tanggalTransaksi"
										placeholder="Tanggal Transaksi" name="tanggalTransaksi">
								</div>

								<div class="form-group">
									<label for="hargaTotal">Harga Total</label> <input type="text"
										class="form-control" id="hargaTotal" placeholder="Harga Total"
										name="hargaTotal">
								</div>
								<div class="form-group">
									<label for="customer">Customer</label> <input
										type="text" class="form-control" id="customer"
										placeholder="Customer" name=customer>
								</div>
								<div class="form-group">
									<label for="karyawan">Karyawan</label> <input
										type="text" class="form-control" id="karyawan"
										placeholder="Karyawan" name="karyawan">
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
