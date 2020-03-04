package com.penjualan.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.penjualan.entity.MstProvinsi;
import com.penjualan.entity.primarykey.MstProvinsiPrimaryKey;

public interface MstProvinsiDao extends JpaRepository<MstProvinsi, MstProvinsiPrimaryKey> {

}
