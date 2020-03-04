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

								<!-- kontent -->

								<form:form modelAttribute="headerDto"
									action="${pageContext.request.contextPath}/transaksi/header/ubah/proses/${noNota}"
									method="post">
									<div class="row" style="margin-bottom: 20px;">
										<div class="col-md-12">
											<div class="form-group">
												<label>No. Nota : </label>
												<%-- <input type="text"
													class="form-control" value="${data.getNoNota()}" /> --%>
												<form:input path="noNota" class="form-control" />
											</div>
											<div class="form-group">
												<label>Tanggal Transaksi : </label>
												<%-- <f:formatDate value="${data.getTanggalTransaksi()}"
													pattern="dd/MM/yyyy" var="theFormattedDate" />
												<input id="datepicker" type="text" class="form-control datepicker"
													value="${theFormattedDate}" /> --%>
												<form:input path="tanggalTransaksi"
													class="form-control datepicker" />
											</div>
											<div class="form-group">
												<label>Pilih Pelanggan : </label>
												<%-- <select
													class="form-control">
													<option value="">-Pilih Customer-</option>
													<c:forEach items="${pelanggan}" var="k">
														<option
															${data.getKodeCustomer() == k.getKodeCustomer() ? "selected" : ""}
															value="${k.getKodeCustomer()}">${k.getNamaCustomer()}</option>
													</c:forEach>
												</select> --%>
												<form:select path="kodeCustomer" class="form-control">
													<option value="">-Pilih Customer-</option>
													<c:forEach items="${pelanggan}" var="k">
														<option
															${data.getKodeCustomer() == k.getKodeCustomer() ? "selected" : ""}
															value="${k.getKodeCustomer()}">${k.getNamaCustomer()}</option>
													</c:forEach>
												</form:select>
											</div>
											<div class="form-group">
												<label>Karyawan</label> <input class="form-control"
													value="${sessionScope.OK.getNamaKaryawan()}"
													readonly="true" />
												<form:input path="kodeKaryawan" type="hidden"
													class="form-control"
													value="${sessionScope.OK.getKodeKaryawan()}"
													readonly="true" />
											</div>
										</div>
									</div>
									<button type="button" class="btn btn-primary"
										data-toggle="modal" data-target="#exampleModal">Add
										Detail</button>
									<br>
									<br>
									<div class="table-responsive">
										<table class="table table-bordered" id="tblDetailTransaksi">
											<thead>
												<tr>
													<th>Kode Detail</th>
													<th>Nama Barang</th>
													<th>Qty</th>
													<th>Harga Satuan</th>
													<th>Diskon</th>
													<th>Subtotal</th>
													<th class="text-right">Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${data.getDetail()}" var="p">
													<tr>
														<td>${p.getKodeDetail()}</td>
														<td>${p.getNamaBarang()}</td>
														<td>${p.getQty()}</td>
														<td>${p.getHargaSatuan()}</td>
														<td>${p.getDiskon()}</td>
														<td>${p.getSubtotal()}</td>

														<td class="text-right"><a
															class="btn btn-sm btn-danger btDelete"
															href="${pageContext.request.contextPath}/transaksi/detail/hapus/${p.getKodeDetail()}">delete</a></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<div class="row">
										<div class="col-md-12 text-right">
											<p>
												Global diskon :
												<%-- <input type="text" id="globalDiskon"
													value="${data.getGlobalDiskon()}" /> --%>
												<form:input path="globalDiskon" />
											</p>
											<p>
												Total Harga : <input type="text"
													value="${data.getDisplayHargaTotal()}" />
												<form:input type="hidden" path="hargaTotal" />
											</p>
										</div>

										<button type="submit" class="btn btn-primary">Submit</button>

									</div>
								</form:form>


								<!-- end konten -->

							</div>
							<!-- /.card-body -->


						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- /.content -->
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Tambah Detail
					Barang</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form
					action="${pageContext.request.contextPath}/transaksi/submitDetail"
					method="post" modelAttribute="detail">
					<div class="form-group">
					<input type="text"
							class="form-control" id="noNota"
							name="noNota" value="${data.getNoNota()}" hidden>
							
						<label for="kodeDetail">Kode Detail</label> <input type="text"
							class="form-control" id="kodeDetail" placeholder="Kode Detail"
							name="kodeDetail">
					</div>

					<div class="form-group">
						
							 <label
							for="kodeBarang">Kode Barang</label> <input type="text"
							class="form-control" id="kodeBarang" placeholder="Kode Barang"
							name="kodeBarang">
					</div>

					<div class="form-group">
						<label for="qty">Stok</label> <input type="text"
							class="form-control" id="stok" placeholder="Stok" name="qty">
					</div>
					<div class="form-group">
						<label for="hargaSatuan">Harga Satuan</label> <input type="text"
							class="form-control" id="hargaSatuan" placeholder="Harga Satuan"
							name=hargaSatuan>
					</div>
					<div class="form-group">
						<label for="qty">Qty</label> <input type="text"
							class="form-control" id="qty" placeholder="qty" name="qty">
					</div>
					<div class="form-group">
						<label for="qty">Diskon</label> <input type="text"
							class="form-control" id="diskon" placeholder="diskon"
							name="diskon">
					</div>
					<div class="form-group">
						<label for="subtotal">Subtotal</label> <input type="text"
							class="form-control" id="subtotal" placeholder="subtotal"
							name="subtotal">
					</div>
					<button type="submit" class="btn btn-primary">Tambah</button>
				</form>

			</div>

		</div>
	</div>
</div>
<!-- /.content-wrapper -->

<script type="text/javascript">
	
	$(document).ready(function(){
		$('#qty').keyup(function(e){
			var hargaSatuan = $('#hargaSatuan').val();
			var diskon = $('#diskon').val();
			var qty = $(this).val();
			
			var hasil1 = (hargaSatuan * qty);
			var diskonRP = (hasil1 * diskon) / 100;
			
			var total = hasil1 - diskonRP;
			
			console.log("asu")
			
			$('#subtotal').val(total);
		})
		
		$('#diskon').keyup(function(e){
			var hargaSatuan = $('#hargaSatuan').val();
			var qty = $('#qty').val();
			var diskon = $(this).val();
			
			var hasil1 = (hargaSatuan * qty);
			var diskonRP = (hasil1 * diskon) / 100;
			
			var total = hasil1 - diskonRP;
			
			$('#subtotal').val(total);
		})
	});
	
	</script>
	

<%@include file="/WEB-INF/jsp/include/footer.jsp"%>