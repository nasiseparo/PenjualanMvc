package com.penjualan.service;

import java.util.List;

import com.penjualan.dto.KaryawanDto;

public interface KaryawanService {
	public List<KaryawanDto> listAll();
	public void save(KaryawanDto dto);
	public void update(KaryawanDto dto);
	public void delete(String kodeKaryawan);
	
	public KaryawanDto getKaryawanById(String kodeKaryawan);
	public KaryawanDto getKaryawanByUsername(String username);
}
