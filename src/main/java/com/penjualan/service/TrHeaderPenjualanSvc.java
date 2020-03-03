package com.penjualan.service;

import java.util.List;

import com.penjualan.dto.MstCustomerDto;
import com.penjualan.dto.TrHeaderPenjualanDto;


public interface TrHeaderPenjualanSvc {
	
	public List<TrHeaderPenjualanDto> findAllHeaderPenjualan();
	public List<TrHeaderPenjualanDto> SeacrhHeaderPenjualan(String cari);

	public void save(TrHeaderPenjualanDto dto);
	//public TrHeaderPenjualanDto SearchNik(String kode);
	public void update(TrHeaderPenjualanDto dto);
	public void delete(String noNota);
	public TrHeaderPenjualanDto getById(String noNota);

}
