package com.penjualan.service;

import java.util.List;
import com.penjualan.dto.SupplierDto;

public interface SupplierService {
	public List<SupplierDto> listAll();
	public void save(SupplierDto dto);
	public void update(SupplierDto dto);
	public void delete(String kodeSupplier);
	
//	public KotaDto getBarangById(String kodeBarangs);}
	public SupplierDto getSupplierByName(String namaSupplier);
	public SupplierDto getSupplierById(String kodeSupplier);
}
