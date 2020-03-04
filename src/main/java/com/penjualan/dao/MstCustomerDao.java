package com.penjualan.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.penjualan.entity.MstCustomer;
import com.penjualan.entity.primarykey.MstCustomerPrimaryKey;

public interface MstCustomerDao extends JpaRepository<MstCustomer, MstCustomerPrimaryKey> {

}
