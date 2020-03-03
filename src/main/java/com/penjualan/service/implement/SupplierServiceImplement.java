package com.penjualan.service.implement;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.penjualan.dao.SupplierDao;
import com.penjualan.dto.SupplierDto;
import com.penjualan.entity.MstSupplier;
import com.penjualan.entity.primarykey.MstSupplierPrimaryKey;
import com.penjualan.service.SupplierService;


@Service
@Transactional
public class SupplierServiceImplement implements SupplierService{
	
	@Autowired
	SupplierDao dao;
	
	@Override
	public List<SupplierDto> listAll() {
		// TODO Auto-generated method stub
		List<SupplierDto> dtos = new ArrayList<SupplierDto>();
		List<MstSupplier> list = dao.findAll();
		for(MstSupplier sup : list){
			SupplierDto dto = new SupplierDto();
			dto.setAlamatSupplier(sup.getAlamatSupplier());
			dto.setEmailSupplier(sup.getEmailSupplier());
			dto.setKodeKota(sup.getKodeKota());
			dto.setKodeSupplier(sup.getKodeSupplier());
			dto.setNamaSupplier(sup.getNamaSupplier());
			dto.setTelpSupplier(sup.getTelpSupplier());
			dtos.add(dto);
		}
		return dtos;
	}

	@Override
	public void save(SupplierDto dto) {
		// TODO Auto-generated method stub
		MstSupplier sup = new MstSupplier();
		sup.setAlamatSupplier(dto.getAlamatSupplier());
		sup.setEmailSupplier(dto.getEmailSupplier());
		sup.setKodeKota(dto.getKodeKota());
		sup.setKodeSupplier(dto.getKodeSupplier());
		sup.setNamaSupplier(dto.getNamaSupplier());
		sup.setTelpSupplier(dto.getTelpSupplier());
		dao.save(sup);
	}

	@Override
	public void update(SupplierDto dto) {
		// TODO Auto-generated method stub
		MstSupplierPrimaryKey pk = new MstSupplierPrimaryKey();
		pk.setKodeSupplier(dto.getKodeSupplier());
		
		MstSupplier sup = dao.findOne(pk);
		sup.setKodeKota(dto.getKodeKota());
		sup.setAlamatSupplier(dto.getAlamatSupplier());
		sup.setEmailSupplier(dto.getEmailSupplier());
		sup.setKodeSupplier(dto.getKodeSupplier());
		sup.setNamaSupplier(dto.getNamaSupplier());
		sup.setTelpSupplier(dto.getTelpSupplier());
		dao.save(sup);
	}

	@Override
	public void delete(String kodeSupplier) {
		// TODO Auto-generated method stub
		MstSupplierPrimaryKey pk = new MstSupplierPrimaryKey();
		pk.setKodeSupplier(kodeSupplier);
		dao.delete(pk);
	}

	@Override
	public SupplierDto getSupplierByName(String namaSupplier) {
		// TODO Auto-generated method stub
		MstSupplier sup = dao.findSupplierByName(namaSupplier);
		if (sup != null) {
			SupplierDto dto = new SupplierDto();
			dto.setAlamatSupplier(sup.getAlamatSupplier());
			dto.setEmailSupplier(sup.getEmailSupplier());
			dto.setKodeKota(sup.getKodeKota());
			dto.setKodeSupplier(sup.getKodeSupplier());
			dto.setNamaSupplier(sup.getNamaSupplier());
			dto.setTelpSupplier(sup.getTelpSupplier());
			return dto;
		} else {
			return null;
		}
	}

	@Override
	public SupplierDto getSupplierById(String kodeSupplier) {
		// TODO Auto-generated method stub
		MstSupplierPrimaryKey pk = new MstSupplierPrimaryKey();
		pk.setKodeSupplier(kodeSupplier);
		MstSupplier sup = (MstSupplier) dao.findOne(pk);
		if (sup != null) {
			SupplierDto dto = new SupplierDto();
			dto.setAlamatSupplier(sup.getAlamatSupplier());
			dto.setEmailSupplier(sup.getEmailSupplier());
			dto.setKodeKota(sup.getKodeKota());
			dto.setKodeSupplier(sup.getKodeSupplier());
			dto.setNamaSupplier(sup.getNamaSupplier());
			dto.setTelpSupplier(sup.getTelpSupplier());
			return dto;
		} else {
			return null;
		}
	}

	
}
