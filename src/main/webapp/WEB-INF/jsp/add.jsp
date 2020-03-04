
<%@include file="/WEB-INF/jsp/include/header.jsp"%>
<%@include file="/WEB-INF/jsp/include/sidebar.jsp"%>


	
	
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper" style="min-height: 1909.81px;">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>Add Barang</h1>
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
                <h3 class="card-title">Add Barang</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" action="${pageContext.request.contextPath}/barang/submitBarang" method="post">
                <div class="card-body">
                  <div class="form-group">
						<label for="nota">Kode Barang</label> <input type="text"
							class="form-control" id="kodeBarang" placeholder="Kode Barang" name="kodeBarang">
					</div>

					<div class="form-group">
						<label for="tanggal">Kode Supplier</label> <input type="text"
							class="form-control" id="kodeSupplier" placeholder="Kode Supplier" name="kodeSupplier">
					</div>
					<div class="form-group">
						<label for="harga">Nama Barang</label> <input type="text"
							class="form-control" id="namaBarang" placeholder="Nama Barang" name=namaBarang>
					</div>
					<div class="form-group">
						<label for="customer">Stok</label> <input type="number"
							class="form-control" id="stokBarang" placeholder="Enter Stok" name="stokBarang">
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
