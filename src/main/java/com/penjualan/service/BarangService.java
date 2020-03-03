package com.penjualan.service;

import java.util.List;

import com.penjualan.dto.BarangDto;

public interface BarangService {
	public List<BarangDto> listAll();
	public void save(BarangDto dto);
	public void update(BarangDto dto);
	public void delete(String kodeBarang);
	
	public BarangDto getBarangById(String kodeBarang);
	public BarangDto getBarangByName(String namaBarang);
}
