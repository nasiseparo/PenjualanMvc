
<%@include file="/WEB-INF/jsp/include/header.jsp"%>
<%@include file="/WEB-INF/jsp/include/sidebar.jsp"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>




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
						<form:form modelAttribute="data"
							action="${pageContext.request.contextPath}/transaksi/submitTransaksi"
							method="post">
							<div class="card-body">
								<div class="form-group">
									<label for="noNota">No Nota</label>
									<form:input path="noNota" type="text" class="form-control" />
								</div>
								<div class="form-group">
									<label>Tanggal Transaksi : </label>
									<form:input path="tanggalTransaksi"
										class="form-control datepicker" />
								</div>
								<div class="form-group">
									<label for="globalDiskon">Global Diskon</label>
									<form:input path="globalDiskon" type="text"
										class="form-control" onkeypress="return hanyaAngka(event)" />
								</div>

								<form:input path="hargaTotal" type="hidden" class="form-control" />

								<div class="form-group">
									<label for="pelanggan">Pelanggan</label>
									<form:select path="kodeCustomer" class="form-control">
										<option value="">-Pilih Pelanggan</option>
										<c:forEach items="${pelanggan}" var="p">
											<option value="${p.getKodeCustomer()}">${p.getNamaCustomer()}</option>
										</c:forEach>
									</form:select>
								</div>
								<div class="form-group">
									<label for="karyawan">Karyawan</label>
									<form:select path="kodeKaryawan" class="form-control">
										<option value="">-Pilih Pelanggan</option>
										<c:forEach items="${karyawan}" var="k">
											<option value="${k.getKodeKaryawan()}">${k.getNamaKaryawan()}</option>
										</c:forEach>
									</form:select>
								</div>
								<div class="box-footer">
									<button type="submit" class="btn btn-primary">Submit</button>
									<a href="${pageContext.request.contextPath}/transaksi/list"></a>
									<a type="button" class="btn btn-warning" href="${pageContext.request.contextPath}/transaksi/list">Kembali</a>
									
								</div>
							</div>
						</form:form>

					</div>
					<!-- /.card-body -->

					<!-- /.card -->
				</div>
			</div>


		</div>

		<!-- /.container-fluid -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<%@include file="/WEB-INF/jsp/include/footer.jsp"%>
