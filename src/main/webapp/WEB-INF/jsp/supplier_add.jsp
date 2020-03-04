
<%@include file="/WEB-INF/jsp/include/header.jsp"%>
<%@include file="/WEB-INF/jsp/include/sidebar.jsp"%>


	
	
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper" style="min-height: 1909.81px;">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>Tambah Data Supplier</h1>
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
                <h3 class="card-title">Tambah Data Supplier</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" action="${pageContext.request.contextPath}/supplier/submitSupplier" method="post" modeAttribute="supplier">
                <div class="card-body">
                  <div class="form-group">
						<label for="kodeSupplier">Kode Supplier</label> <input type="text"
							class="form-control" id="kodeSupplier" placeholder="Masukan kode supplier" name="kodeSupplier">
					</div>

					<div class="form-group">
						<label for="namaSupplier">Nama Supplier</label> <input type="text"
							class="form-control" id="namaSupplier" placeholder="Masukan nama supplier" name="namaSupplier">
					</div>
					<div class="form-group">
						<label for="alamatSupplier">Alamat Supplier</label> <input type="text"
							class="form-control" id="alamatSupplier" placeholder="Masukan Alamat Supplier" name="alamatSupplier">
					</div>
					<div class="form-group">
						<label for="telpSupplier">Telfon Supplier</label> <input type="text"
							class="form-control" id="telpSupplier" placeholder="Masukan Telfon Supplier" name="telpSupplier">
					</div>
					<div class="form-group">
						<label for="emailSupplier">Email Supplier</label> <input type="text"
							class="form-control" id="emailSupplier" placeholder="Masukan Email Supplier" name="emailSupplier">
					</div>
					<div class="form-group">
						<label for="kodeKota">Kode Supplier</label> <input type="text"
							class="form-control" id="kodeKota" placeholder="Masukan Kode Kota Supplier" name="kodeKota">
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
