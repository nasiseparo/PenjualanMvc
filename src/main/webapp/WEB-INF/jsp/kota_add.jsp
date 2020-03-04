
<%@include file="/WEB-INF/jsp/include/header.jsp"%>
<%@include file="/WEB-INF/jsp/include/sidebar.jsp"%>


	
	
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper" style="min-height: 1909.81px;">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1>Tambah Data Kota</h1>
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
                <h3 class="card-title">Tambah Data Kota</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" action="${pageContext.request.contextPath}/kota/save" method="post">
                <div class="card-body">
                  <div class="form-group">
						<label for="kodeKota">Kode Kota</label> <input type="text"
							class="form-control" id="kodeKota" placeholder="Masukan kode kota" name="kodeKota">
					</div>

					<div class="form-group">
						<label for="namaKota">Nama Kota</label> <input type="text"
							class="form-control" id="namaKota" placeholder="Masukan nama kota" name="namaKota">
					</div>
					<div class="form-group">
						<label for="kodeProvinsi">Kode Provinsi</label> <input type="text"
							class="form-control" id="kodeProvinsi" placeholder="Masukan kode provinsi" name="kodeProvinsi">
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
