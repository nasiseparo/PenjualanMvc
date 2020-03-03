package com.penjualan.service;

import java.util.List;

import com.penjualan.dto.MstCustomerDto;
import com.penjualan.dto.TrHeaderPenjualanDto;


public interface TrHeaderPenjualanSvc {
	
	public List<TrHeaderPenjualanDto> findAllHeaderPenjualan();
	public List<TrHeaderPenjualanDto> SeacrhHeaderPenjualan(String cari);

	public List<MstCustomerDto> listAll();

	public void save(MstCustomerDto dto);

	public MstCustomerDto SearchNik(String kode);

	public void update(MstCustomerDto dto);

	public void delete(String kode);
	
	public MstCustomerDto getById(String kode);

}
