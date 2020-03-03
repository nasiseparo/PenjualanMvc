package com.penjualan.service.implement;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.penjualan.dao.MstCustomerDao;
import com.penjualan.dto.MstCustomerDto;
import com.penjualan.entity.MstCustomer;
import com.penjualan.entity.primarykey.MstCustomerPrimaryKey;
import com.penjualan.service.MstCustomerSvc;

@Service
@Transactional
public class MstCustomerImplSvc implements MstCustomerSvc {

	@Autowired
	MstCustomerDao dao;

	@Override
	public List<MstCustomerDto> listAll() {
		List<MstCustomerDto> dtoList = new ArrayList<MstCustomerDto>();
		List<MstCustomer> list = dao.findAll();
		for (MstCustomer customer : list) {
			MstCustomerDto dto = new MstCustomerDto();
			dto.setKodeCustomer(customer.getKodeCustomer());
			dto.setNamaCustomer(customer.getNamaCustomer());
			dto.setAlamatCustomer(customer.getAlamatCustomer());
			dto.setJenisKelamin(customer.getJenisKelamin());
			dto.setEmailCustomer(customer.getEmailCustomer());
			dto.setKodeKota(customer.getKodeKota());

			dtoList.add(dto);
		}
		return dtoList;
	}

	@Override
	public void save(MstCustomerDto dto) {
		// TODO Auto-generated method stub
		MstCustomer customer = new MstCustomer();
		customer.setKodeCustomer(dto.getKodeCustomer());
		customer.setNamaCustomer(dto.getNamaCustomer());
		customer.setAlamatCustomer(dto.getAlamatCustomer());
		customer.setJenisKelamin(dto.getJenisKelamin());
		customer.setEmailCustomer(dto.getEmailCustomer());
		customer.setKodeKota(dto.getKodeKota());
		dao.save(customer);

	}

	@Override
	public MstCustomerDto SearchNik(String kode) {
		MstCustomerPrimaryKey pk = new MstCustomerPrimaryKey();
		pk.setKodeCustomer(kode);
		MstCustomer customer = dao.findOne(pk);
		if (customer != null) {
			MstCustomerDto dto = new MstCustomerDto();
			dto.setKodeCustomer(customer.getKodeCustomer());
			dto.setNamaCustomer(customer.getNamaCustomer());
			dto.setAlamatCustomer(customer.getAlamatCustomer());
			dto.setJenisKelamin(customer.getJenisKelamin());
			dto.setEmailCustomer(customer.getEmailCustomer());
			dto.setKodeKota(customer.getKodeKota());
			return dto;
		} else {
			return null;
		}
	}

	@Override
	public void update(MstCustomerDto dto) {
		// TODO Auto-generated method stub
		MstCustomerPrimaryKey pk = new MstCustomerPrimaryKey();
		pk.setKodeCustomer(dto.getKodeCustomer());
		MstCustomer customerFind = dao.findOne(pk);
		
		MstCustomer customer = new MstCustomer();
		customer.setKodeCustomer(customerFind.getKodeCustomer());
		customer.setNamaCustomer(dto.getNamaCustomer());
		customer.setAlamatCustomer(dto.getAlamatCustomer());
		customer.setJenisKelamin(dto.getJenisKelamin());
		customer.setEmailCustomer(dto.getEmailCustomer());
		customer.setKodeKota(dto.getKodeKota());
		dao.save(customer);
	}

	

	@Override
	public void delete(String kode) {
		// TODO Auto-generated method stub
		MstCustomerPrimaryKey pk = new MstCustomerPrimaryKey();
		pk.setKodeCustomer(kode);
		dao.delete(pk);

	}

	@Override
	public MstCustomerDto getById(String kode) {
		MstCustomerPrimaryKey pk = new MstCustomerPrimaryKey();
		pk.setKodeCustomer(kode);
		MstCustomer customer = dao.findOne(pk);
		MstCustomerDto dto = new MstCustomerDto();
		dto.setKodeCustomer(customer.getKodeCustomer());
		dto.setNamaCustomer(customer.getNamaCustomer());
		dto.setAlamatCustomer(customer.getAlamatCustomer());
		dto.setJenisKelamin(customer.getJenisKelamin());
		dto.setEmailCustomer(customer.getEmailCustomer());
		dto.setKodeKota(customer.getKodeKota());
		return dto;

	}

}
