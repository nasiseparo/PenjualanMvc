package com.penjualan.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.penjualan.entity.MstBarang;
import com.penjualan.entity.MstKota;
import com.penjualan.entity.primarykey.MstKotaPrimaryKey;

public interface KotaDao extends JpaRepository<MstKota, MstKotaPrimaryKey>{
	
	
	@Query("SELECT kota FROM MstKota kota " // e adalah index ke-0, d.namaDivisi adalah index ke-1
			+ "WHERE kota.namaKota LIKE %:namakota%")
	public MstKota findKotaByName(@Param("namakota") String namaKota);

}
