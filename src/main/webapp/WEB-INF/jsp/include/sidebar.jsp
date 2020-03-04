<!-- Main Sidebar Container -->
	<aside class="main-sidebar sidebar-dark-primary elevation-4">
		<!-- Brand Logo -->
		<a href="#" class="brand-link"> <img
			src="<c:url value='/resources/dist/img/AdminLTELogo.png'/>"
			alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
			style="opacity: .8"> <span class="brand-text font-weight-light">Penjualan MVC
				3</span>
		</a>

		<!-- Sidebar -->
		<div class="sidebar">
			<!-- Sidebar user (optional) -->
			<div class="user-panel mt-3 pb-3 mb-3 d-flex">
				<div class="image">
					<img src="<c:url value='/resources/dist/img/user2-160x160.jpg'/>"
						class="img-circle elevation-2" alt="User Image">

				</div>
				<div class="info">
					<a href="#" class="d-block">Admin</a>
				</div>
			</div>

			<!-- Sidebar Menu -->
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column"
					data-widget="treeview" role="menu" data-accordion="false">
					<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
					<li class="nav-item has-treeview"><a href="#" class="nav-link">
							<i class="nav-icon fas fa-tachometer-alt"></i>
							<p>
								Dashboard <i class="right fas fa-angle-left"></i>
							</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item"><a href="${pageContext.request.contextPath}/barang/home"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>Master Barang</p>
							</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/karyawan/list"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>Data Karyawan</p>
							</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/customer/list"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>Data Customer</p>
							</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/supplier/list"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>Data Supplier</p>
							</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/kota/list"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>Data Kota</p>
							</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/provinsi/list"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>Data Provinsi</p>
							</a></li>
						</ul></li>



				</ul>
			</nav>
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column"
					data-widget="treeview" role="menu" data-accordion="false">
					<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
					<li class="nav-item has-treeview"><a href="#" class="nav-link">
							<i class="nav-icon fas fa-tachometer-alt"></i>
							<p>
								Detail Transaksi <i class="right fas fa-angle-left"></i>
							</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item"><a href="${pageContext.request.contextPath}/transaksi/list"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>Transaksi</p>
							</a></li>
						
						</ul></li>



				</ul>
			</nav>
			<!-- /.sidebar-menu -->
		</div>
		<!-- /.sidebar -->
	</aside>
