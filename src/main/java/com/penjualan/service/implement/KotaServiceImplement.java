package com.penjualan.service.implement;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.penjualan.dao.KotaDao;
import com.penjualan.dto.KotaDto;
import com.penjualan.entity.MstKota;
import com.penjualan.entity.primarykey.MstKotaPrimaryKey;
import com.penjualan.service.KotaService;

@Service
@Transactional
public class KotaServiceImplement implements KotaService {
	
	@Autowired
	KotaDao dao;
	
	@Override
	public List<KotaDto> listAll() {
		// TODO Auto-generated method stub
		List<KotaDto> dtos = new ArrayList<KotaDto>();
		List<MstKota> list = dao.findAll();
		for(MstKota k : list){
			KotaDto dto = new KotaDto();
			dto.setKodeKota(k.getKodeKota());
			dto.setKodeProvinsi(k.getKodeProvinsi());
			dto.setNamaKota(k.getNamaKota());
			dtos.add(dto);
		}
		return dtos;
	}

	@Override
	public void save(KotaDto dto) {
		// TODO Auto-generated method stub
		MstKota kot = new MstKota();
		kot.setKodeKota(dto.getKodeKota());
		kot.setKodeProvinsi(dto.getKodeProvinsi());
		kot.setNamaKota(dto.getNamaKota());
		dao.save(kot);
	}

	@Override
	public void update(KotaDto dto) {
		// TODO Auto-generated method stub
		MstKotaPrimaryKey pk = new MstKotaPrimaryKey();
		pk.setKodeKota(dto.getKodeKota());
		
		MstKota kot = dao.findOne(pk);
		kot.setKodeKota(dto.getKodeKota());
		kot.setKodeProvinsi(dto.getKodeProvinsi());
		kot.setNamaKota(dto.getNamaKota());
		dao.save(kot);
	}

	@Override
	public void delete(String kodeKota) {
		// TODO Auto-generated method stub
		MstKotaPrimaryKey pk = new MstKotaPrimaryKey();
		pk.setKodeKota(kodeKota);
		dao.delete(pk);
	}

	@Override
	public KotaDto getKotaByName(String namaKota) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
//		MahasiswaPrimaryKey pk = new MahasiswaPrimaryKey();
//		pk.setNim(nim);
		MstKota kot = dao.findKotaByName(namaKota);
		if (kot != null) {
			KotaDto dto = new KotaDto();
			dto.setKodeKota(kot.getKodeKota());
			dto.setKodeProvinsi(kot.getKodeProvinsi());
			dto.setNamaKota(kot.getNamaKota());
			return dto;
		} else {
			return null;
		}
	}

	@Override
	public KotaDto getKotaById(String kodeKota) {
		// TODO Auto-generated method stub
		MstKotaPrimaryKey pk = new MstKotaPrimaryKey();
		pk.setKodeKota(kodeKota);
		MstKota kot = (MstKota) dao.findOne(pk);
		if (kot != null) {
			KotaDto dto = new KotaDto();
			dto.setKodeKota(kot.getKodeKota());
			dto.setKodeProvinsi(kot.getKodeProvinsi());
			dto.setNamaKota(kot.getNamaKota());
			return dto;
		} else {
			return null;
		}
	}

}
