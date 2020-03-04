package com.penjualan.service;

import java.util.List;
import com.penjualan.dto.MstCustomerDto;

public interface MstCustomerSvc {

	public List<MstCustomerDto> listAll();

	public void save(MstCustomerDto dto);

	public MstCustomerDto SearchNik(String kode);

	public void update(MstCustomerDto dto);

	public void delete(String kode);
	
	public MstCustomerDto getById(String kodeCustomer);

}
