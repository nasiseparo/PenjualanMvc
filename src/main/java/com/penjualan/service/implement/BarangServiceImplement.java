package com.penjualan.service.implement;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.penjualan.dao.BarangDao;
import com.penjualan.dto.BarangDto;
import com.penjualan.entity.MstBarang;
import com.penjualan.entity.primarykey.MstBarangPrimaryKey;
import com.penjualan.service.BarangService;

@Service
@Transactional
public class BarangServiceImplement implements BarangService{
	
	@Autowired
	BarangDao dao;
	
	@Override
	public List<BarangDto> listAll() {
		// TODO Auto-generated method stub
		List<BarangDto> dtos = new ArrayList<BarangDto>();
		List<MstBarang> list = dao.findAll();
		for(MstBarang b : list){
			BarangDto dto = new BarangDto();
			dto.setKodeBarang(b.getKodeBarang());
			dto.setKodeSupplier(b.getKodeSupplier());
			dto.setNamaBarang(b.getNamaBarang());
			dto.setStokBarang(b.getStokBarang());
			dtos.add(dto);
		}
		return dtos;
	}

	@Override
	public void save(BarangDto dto) {
		// TODO Auto-generated method stub
		MstBarang bar = new MstBarang();
		bar.setKodeBarang(dto.getKodeBarang());
		bar.setKodeSupplier(dto.getKodeSupplier());
		bar.setNamaBarang(dto.getNamaBarang());
		bar.setStokBarang(dto.getStokBarang());
		dao.save(bar);
		
	}

	@Override
	public void update(BarangDto dto) {
		// TODO Auto-generated method stub
		MstBarangPrimaryKey pk = new MstBarangPrimaryKey();
		pk.setKodeBarang(dto.getKodeBarang());
		
		MstBarang bar = dao.findOne(pk);
		bar.setKodeBarang(dto.getKodeBarang());
		bar.setKodeSupplier(dto.getKodeSupplier());
		bar.setNamaBarang(dto.getNamaBarang());
		bar.setStokBarang(dto.getStokBarang());
		dao.save(bar);
	}

	@Override
	public void delete(String kodeBarang) {
		// TODO Auto-generated method stub
		MstBarangPrimaryKey pk = new MstBarangPrimaryKey();
		pk.setKodeBarang(kodeBarang);
		dao.delete(pk);
	}

	@Override
	public BarangDto getBarangById(String kodeBarang) {
		// TODO Auto-generated method stub
		MstBarangPrimaryKey pk = new MstBarangPrimaryKey();
//		pk.setNim(nim);
		pk.setKodeBarang(kodeBarang);
		MstBarang bar = (MstBarang) dao.findOne(pk);
		if (bar != null) {
			BarangDto dto = new BarangDto();
			dto.setKodeBarang(bar.getKodeBarang());
			dto.setKodeSupplier(bar.getKodeSupplier());
			dto.setNamaBarang(bar.getNamaBarang());
			dto.setStokBarang(bar.getStokBarang());
			return dto;
		} else {
			return null;
		}
	}

	@Override
	public BarangDto getBarangByName(String namaBarang) {
		// TODO Auto-generated method stub

		MstBarang bar = dao.findBarangByName(namaBarang);
		if (bar != null) {
			BarangDto dto = new BarangDto();
			dto.setKodeBarang(bar.getKodeBarang());
			dto.setKodeSupplier(bar.getKodeSupplier());
			dto.setNamaBarang(bar.getNamaBarang());
			dto.setStokBarang(bar.getStokBarang());
			return dto;
		} else {
			return null;
		}
	}

}
