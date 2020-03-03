package com.penjualan.service.implement;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.penjualan.dao.MstProvinsiDao;
import com.penjualan.dto.MstCustomerDto;
import com.penjualan.dto.MstProvinsiDto;
import com.penjualan.entity.MstCustomer;
import com.penjualan.entity.MstProvinsi;
import com.penjualan.entity.primarykey.MstProvinsiPrimaryKey;
import com.penjualan.service.MstProvinsiSvc;

@Service
@Transactional
public class MstProvinsiSvcImpl implements MstProvinsiSvc{

	@Autowired
	MstProvinsiDao dao;
	
	@Override
	public List<MstProvinsiDto> listAll() {
		List<MstProvinsiDto> dtoList = new ArrayList<MstProvinsiDto>();
		List<MstProvinsi> list = dao.findAll();
		for (MstProvinsi provinsi : list) {
			MstProvinsiDto dto = new MstProvinsiDto();
			dto.setKodeProvinsi(provinsi.getKodeProvinsi());
			dto.setNamaProvinsi(provinsi.getNamaProvinsi());
			dtoList.add(dto);
		}
		return dtoList;

	}

	@Override
	public void save(MstProvinsiDto dto) {
		// TODO Auto-generated method stub
		MstProvinsi provinsi = new MstProvinsi();
		provinsi.setKodeProvinsi(dto.getKodeProvinsi());
		provinsi.setNamaProvinsi(dto.getNamaProvinsi());
		dao.save(provinsi);
			
	}

	
	@Override
	public MstProvinsiDto SearchNik(String kode) {
		// TODO Auto-generated method stub
		MstProvinsiPrimaryKey pk = new MstProvinsiPrimaryKey();
		pk.setKodeProvinsi(kode);
		MstProvinsi provinsi = dao.findOne(pk);
		if(provinsi != null) {
			MstProvinsiDto dto = new MstProvinsiDto();
			dto.setKodeProvinsi(provinsi.getKodeProvinsi());
			dto.setNamaProvinsi(provinsi.getNamaProvinsi());
			return dto;
		}else {
			return null;	
		}
		
	}
	

	@Override
	public void update(MstProvinsiDto dto) {
		// TODO Auto-generated method stub
		MstProvinsiPrimaryKey pk = new MstProvinsiPrimaryKey();
		pk.setKodeProvinsi(dto.getKodeProvinsi());
		MstProvinsi findProvinsi = dao.findOne(pk);
		MstProvinsi provinsi = new MstProvinsi();
		
		provinsi.setKodeProvinsi(findProvinsi.getKodeProvinsi());
		provinsi.setNamaProvinsi(dto.getNamaProvinsi());
		dao.save(provinsi);
	}

	@Override
	public void delete(String kode) {
		// TODO Auto-generated method stub
		MstProvinsiPrimaryKey pk = new MstProvinsiPrimaryKey();
		pk.setKodeProvinsi(kode);
		dao.delete(pk);
		
	}

	@Override
	public MstProvinsiDto getById(String kode) {
		// TODO Auto-generated method stub
		MstProvinsiPrimaryKey pk = new MstProvinsiPrimaryKey();
		pk.setKodeProvinsi(kode);
		MstProvinsi findOne = dao.findOne(pk);
		MstProvinsiDto dto = new MstProvinsiDto();
		dto.setKodeProvinsi(findOne.getKodeProvinsi());
		dto.setNamaProvinsi(findOne.getNamaProvinsi());
		return dto;		
	}

}
