package com.penjualan.service;

import java.util.List;

import com.penjualan.dto.MstCustomerDto;
import com.penjualan.dto.MstProvinsiDto;

public interface MstProvinsiSvc {
	
	public List<MstProvinsiDto> listAll();

	public void save(MstProvinsiDto dto);

	public MstProvinsiDto SearchNik(String kode);

	public void update(MstProvinsiDto dto);

	public void delete(String kode);
	
	public MstProvinsiDto getById(String kode);


}
