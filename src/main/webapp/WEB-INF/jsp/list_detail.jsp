<%@include file="/WEB-INF/jsp/include/header.jsp"%>
<%@include file="/WEB-INF/jsp/include/sidebar.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" style="min-height: 1909.81px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Penjualan Edit</h1>
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

							
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#exampleModal">+ Add</button>

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
										<th>Diskon</th>
										<th>Sub Total</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>D008</td>
										<td>Sepatu</td>
										<td>10</td>
										<td>1000</td>
										<td>20</td>
										<td>8000</td>
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
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Add Detail</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
			<form role="form">
                <div class="card-body">
                  <div class="form-group">
						<label for="kodeDetail">Kode Detail</label> <input type="text"
							class="form-control" id="kodeDetail" placeholder="Kode Detail">
					</div>

					<div class="form-group">
						<label for="barang">Barang</label> <input type="text"
							class="form-control" id="barang" placeholder="Barang">
					</div>
					<div class="form-group">
						<label for="stok">Stok</label> <input type="number"
							class="form-control" id="stok" placeholder="Enter Stok">
					</div>
					<div class="form-group">
						<label for="hargaSatuan">Harga Satuan</label> <input type="text"
							class="form-control" id="hargaSatuan" placeholder="Harga Satuan">
					</div>

					<div class="form-group">
						<label for="qty">Qty</label> <input type="number"
							class="form-control" id="qty" placeholder="Enter Qty">
					</div>
					<div class="form-group">
						<label for="diskon">Diskon</label> <input type="number"
							class="form-control" id="Diskon" placeholder="Subtotal">
					</div>
                </div>
                <!-- /.card-body -->

        
			
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
			 </form>
		</div>
	</div>
</div>
<!-- /.content-wrapper -->
<%@include file="/WEB-INF/jsp/include/footer.jsp"%>