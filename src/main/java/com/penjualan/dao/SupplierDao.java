package com.penjualan.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.penjualan.entity.MstSupplier;
import com.penjualan.entity.primarykey.MstSupplierPrimaryKey;

public interface SupplierDao extends JpaRepository<MstSupplier, MstSupplierPrimaryKey> {
	
	@Query("SELECT sup FROM MstSupplier sup " // e adalah index ke-0, d.namaDivisi adalah index ke-1
			+ "WHERE sup.namaSupplier LIKE %:namasupplier%")
	public MstSupplier findSupplierByName(@Param("namasupplier") String namaSupplier);
}
