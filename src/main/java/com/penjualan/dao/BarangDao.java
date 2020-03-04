package com.penjualan.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.penjualan.entity.MstBarang;
import com.penjualan.entity.MstKaryawan;
import com.penjualan.entity.primarykey.MstBarangPrimaryKey;

public interface BarangDao extends JpaRepository<MstBarang, MstBarangPrimaryKey>{
	@Query("SELECT b FROM MstBarang b " // e adalah index ke-0, d.namaDivisi adalah index ke-1
			+ "WHERE b.namaBarang LIKE %:namabarang%")
	public MstBarang findBarangByName(@Param("namabarang") String namaBarang);
}
