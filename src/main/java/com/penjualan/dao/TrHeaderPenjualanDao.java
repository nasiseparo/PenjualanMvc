package com.penjualan.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.penjualan.entity.TrHeaderPenjualan;
import com.penjualan.entity.primarykey.TrHeaderPenjualanPrimaryKey;

public interface TrHeaderPenjualanDao extends JpaRepository<TrHeaderPenjualan, TrHeaderPenjualanPrimaryKey>{

	@Query("select a, b.namaCustomer, c.namaKaryawan from TrHeaderPenjualan a, "
			+ "MstCustomer b, MstKaryawan c where a.kodeCustomer = b.kodeCustomer "
			+ "and a.kodeKaryawan = c.kodeKaryawan")
	//@Query("select a, b.namaDivisi from Karyawan a, Divisi b where a.kodeDivisi = b.kodeDivisi")
	public List<Object[]> findAllHeaderPenjualan();
	
	
	@Query("select a, b.namaCustomer, c.namaKaryawan from TrHeaderPenjualan a, "
			+ "MstCustomer b, MstKaryawan c where a.kodeCustomer = b.kodeCustomer "
			+ "and a.kodeKaryawan = c.kodeKaryawan "
			+ "and (a.noNota like %:cari% "
			+ "or b.namaCustomer like %:cari% "
			+ "or c.namaKaryawan like %:cari%)")
	//@Query("select a, b.namaDivisi from Karyawan a, Divisi b where a.kodeDivisi = b.kodeDivisi")
	public List<Object[]> SeacrhHeaderPenjualan(@Param("cari")String cari);
	
}
