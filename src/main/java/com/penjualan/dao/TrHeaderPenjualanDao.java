package com.penjualan.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.penjualan.entity.TrHeaderPenjualan;
import com.penjualan.entity.primarykey.TrHeaderPenjualanPrimaryKey;

public interface TrHeaderPenjualanDao extends JpaRepository<TrHeaderPenjualan, TrHeaderPenjualanPrimaryKey>{

	@Query("select a, b, c from TrHeaderPenjualan a, MstCustomer b, MstKaryawan c where a.kodeCustomer = b.kodeCustomer and a.kodeKaryawan = c.kodeKaryawan")
	public List<Object[]> listTransaksiHeader();
	
	@Query("select a, b, c from TrHeaderPenjualan a, MstCustomer b, MstKaryawan c Where a.kodeCustomer = b.kodeCustomer and a.kodeKaryawan = c.kodeKaryawan and (a.noNota like %:cari% or b.namaCustomer like %:cari% or c.namaKaryawan like %:cari%)")
	public List<Object[]> listTransaksiHeaderSearch(@Param("cari")String cari);
	
	@Query("select a, b, c from TrHeaderPenjualan a, MstCustomer b, MstKaryawan c where a.kodeCustomer = b.kodeCustomer and a.kodeKaryawan = c.kodeKaryawan and (a.noNota = :noNota)")
	public List<Object[]> listTransaksiHeader(@Param("noNota")String noNota);


	
}
