package com.penjualan.service.implement;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.penjualan.dao.TrHeaderPenjualanDao;
import com.penjualan.dto.TrHeaderPenjualanDto;
import com.penjualan.entity.TrHeaderPenjualan;
import com.penjualan.service.TrHeaderPenjualanSvc;


@Transactional
@Service
public class TrHeaderPenjualanSvcImpl implements TrHeaderPenjualanSvc {

	@Autowired
	private TrHeaderPenjualanDao dao;
	
	
	@Override
	public List<TrHeaderPenjualanDto> findAllHeaderPenjualan() {
		List<Object[]> list = dao.findAllHeaderPenjualan();
		List<TrHeaderPenjualanDto> dtos = new ArrayList<>();

		for (Object[] o : list) {
			TrHeaderPenjualanDto dto = new TrHeaderPenjualanDto();
			TrHeaderPenjualan TrHeader = (TrHeaderPenjualan) o[0];
			dto.setNoNota(TrHeader.getNoNota());
			dto.setTanggalTransaksi(TrHeader.getTanggalTransaksi());
			dto.setHargaTotal(TrHeader.getHargaTotal());
			dto.setKodeCustomer(TrHeader.getKodeCustomer());
			dto.setKodeKaryawan(TrHeader.getKodeKaryawan());
			dto.setNamaCustomer((String) o[1]);
			dto.setNamaKaryawan((String) o[2]);
			dtos.add(dto);
		}
		return dtos;
	}

	@Override
	public List<TrHeaderPenjualanDto> SeacrhHeaderPenjualan(String cari) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(TrHeaderPenjualanDto dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(TrHeaderPenjualanDto dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(String noNota) {
		// TODO Auto-generated method stub

	}

	@Override
	public TrHeaderPenjualanDto getById(String noNota) {
		// TODO Auto-generated method stub
		return null;
	}

}
