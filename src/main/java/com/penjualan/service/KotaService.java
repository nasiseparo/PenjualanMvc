package com.penjualan.service;

import java.util.List;

import com.penjualan.dto.KotaDto;

public interface KotaService {
	public List<KotaDto> listAll();
	public void save(KotaDto dto);
	public void update(KotaDto dto);
	public void delete(String kodeKota);
	
//	public KotaDto getBarangById(String kodeBarangs);}
	public KotaDto getKotaByName(String namaKota);
	public KotaDto getKotaById(String kodeKota);
}
