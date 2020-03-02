package com.penjualan.service.implement;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.penjualan.dao.KaryawanDao;
import com.penjualan.dto.KaryawanDto;
import com.penjualan.entity.MstKaryawan;
import com.penjualan.entity.primarykey.MstKaryawanPrimaryKey;
import com.penjualan.service.KaryawanService;

@Service
@Transactional
public class KaryawanServiceImplement implements KaryawanService {
	
	@Autowired
	KaryawanDao dao;
	
	@Override
	public List<KaryawanDto> listAll() {
		// TODO Auto-generated method stub
		List<KaryawanDto> dtos = new ArrayList<KaryawanDto>();
		List<MstKaryawan> list = dao.findAll();
		for(MstKaryawan k : list){
			KaryawanDto dto = new KaryawanDto();
			dto.setKodeKaryawan(k.getKodeKaryawan());
			dto.setNamaKaryawan(k.getNamaKaryawan());
			dto.setUsername(k.getUsername());
			dto.setPassword(k.getPassword());
			
			dtos.add(dto);
		}
		return dtos;
	}

	@Override
	public void save(KaryawanDto dto) {
		// TODO Auto-generated method stub
		MstKaryawan kar = new MstKaryawan();
		kar.setKodeKaryawan(dto.getKodeKaryawan());
		kar.setNamaKaryawan(dto.getNamaKaryawan());
		kar.setPassword(dto.getPassword());
		kar.setUsername(dto.getUsername());
		dao.save(kar);
	}

	@Override
	public void update(KaryawanDto dto) {
		// TODO Auto-generated method stub
		MstKaryawanPrimaryKey pk = new MstKaryawanPrimaryKey();
		pk.setKodeKaryawan(dto.getKodeKaryawan());
		
		MstKaryawan kar = dao.findOne(pk);
		kar.setKodeKaryawan(dto.getKodeKaryawan());
		kar.setNamaKaryawan(kar.getNamaKaryawan());
		kar.setPassword(kar.getPassword());
		kar.setUsername(dto.getUsername());
		dao.save(kar);
	}

	@Override
	public void delete(String kodeKaryawan) {
		// TODO Auto-generated method stub
		MstKaryawanPrimaryKey pk = new MstKaryawanPrimaryKey();
		pk.setKodeKaryawan(kodeKaryawan);
		dao.delete(pk);
	}

	@Override
	public KaryawanDto getKaryawanById(String kodeKaryawan) {
		// TODO Auto-generated method stub
		MstKaryawanPrimaryKey pk = new MstKaryawanPrimaryKey();
//		pk.setNim(nim);
		pk.setKodeKaryawan(kodeKaryawan);
		MstKaryawan kar = (MstKaryawan) dao.findOne(pk);
		if (kar != null) {
			KaryawanDto dto = new KaryawanDto();
			dto.setKodeKaryawan(kar.getKodeKaryawan());
			dto.setNamaKaryawan(kar.getNamaKaryawan());
			dto.setPassword(kar.getPassword());
			dto.setUsername(kar.getUsername());
			return dto;
		} else {
			return null;
		}
	}

	@Override
	public KaryawanDto getKaryawanByUsername(String username) {
		// TODO Auto-generated method stub
//		MahasiswaPrimaryKey pk = new MahasiswaPrimaryKey();
//		pk.setNim(nim);
		MstKaryawan kar = dao.findKaryawanByUsername(username);
		if (kar != null) {
			KaryawanDto dto = new KaryawanDto();
			dto.setKodeKaryawan(kar.getKodeKaryawan());
			dto.setNamaKaryawan(kar.getNamaKaryawan());
			dto.setPassword(kar.getPassword());
			dto.setUsername(kar.getUsername());
			return dto;
		} else {
			return null;
		}
		
	}

}
