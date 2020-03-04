<%@include file="/WEB-INF/jsp/include/header.jsp"%>
<%@include file="/WEB-INF/jsp/include/sidebar.jsp"%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" style="min-height: 1909.81px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Transaksi</h1>
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
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div class="card card-primary">

						<!-- /.card-header -->
						<!-- form start -->
						<form role="form">
							<div class="card-body">
								<div class="form-group">
									<label for="noNota">No Nota</label> <input type="email"
										class="form-control" id="noNota" placeholder="Enter No Nota">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Tanggal Transaksi</label> <input
										type="text" class="form-control" id="tanggalTransaksi"
										placeholder="Tanggal Transaksi">
								</div>
								<div class="form-group">
									<label for="customer">Customer</label> <input
										type="text" class="form-control" id="customer"
										placeholder="Customer"> 
										
								</div>
								<div class="form-group">
									<label
										for="karyawan">Karyawan</label> <input
										type="text" class="form-control" id="karyawan"
										placeholder="Karyawan">
										
								</div>


							</div>
							<!-- /.card-body -->

							<div class="card-footer">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-header">

							<a href="${pageContext.request.contextPath}/transaksi/add"
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
										<th>Kode Detail</th>
										<th>Barang</th>
										<th>Qty</th>
										<th>Harga Satuan</th>
										<th>Sub Total</th>
									</tr>
								</thead>
								<tbody>

									<tr>
										<td>B001</td>
										<td>21/11/1990</td>
										<td>10000</td>
										<td>Adi</td>
										<td>Adi</td>
									</tr>

								</tbody>
							</table>
							<div class="card-footer clearfix">
								<ul class="pagination pagination-sm m-0 float-right">
									<li class="page-item"><a class="page-link" href="#">«</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">»</a></li>
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