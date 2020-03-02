package com.penjualan.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.penjualan.entity.MstKaryawan;
import com.penjualan.entity.primarykey.MstKaryawanPrimaryKey;

public interface KaryawanDao extends JpaRepository<MstKaryawan, MstKaryawanPrimaryKey> {
	@Query("SELECT k FROM MstKaryawan k " // e adalah index ke-0, d.namaDivisi adalah index ke-1
			+ "WHERE k.username = :username")
	public List<MstKaryawan> findKaryawanByUsername(@Param("username") String username);
}
