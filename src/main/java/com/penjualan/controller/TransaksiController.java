package com.penjualan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.penjualan.dto.BarangDto;
import com.penjualan.dto.KaryawanDto;
import com.penjualan.dto.MstCustomerDto;
import com.penjualan.dto.TrDetailPenjualanDto;
import com.penjualan.dto.TrHeaderPenjualanDto;
import com.penjualan.service.BarangService;
import com.penjualan.service.KaryawanService;
import com.penjualan.service.MstCustomerSvc;
import com.penjualan.service.TransaksiSvc;

@Controller
@RequestMapping("/transaksi")
public class TransaksiController {
	
	@Autowired
	private TransaksiSvc svc;
	
	@Autowired
	private BarangService bSvc;
	
	@Autowired
	private MstCustomerSvc cSvc;
	
	@Autowired
	private KaryawanService kSvc;


	@RequestMapping("/list")
	public String list(Model model) {
		List<TrHeaderPenjualanDto> list = svc.listTransaksiHeader();
		model.addAttribute("data", list);
		return "list_transaction";
	}
	
	@RequestMapping("/detail/{noNota}")
	public String detail(Model model, HttpServletRequest request, @PathVariable("noNota")String noNota){
		TrHeaderPenjualanDto list = svc.listTransaksiHeader(noNota);
		List<MstCustomerDto> customer = cSvc.listAll();
		TrHeaderPenjualanDto headerDto = svc.listTransaksiHeader(noNota);
		model.addAttribute("headerDto", headerDto);
		model.addAttribute("pelanggan", customer);
		model.addAttribute("data", list);
		return "viewTransaksiDetail";
	}

	@RequestMapping("/header/ubah/proses/{noNota}")
	public String header_ubah(@Valid @ModelAttribute("header") TrHeaderPenjualanDto header,
			BindingResult result, ModelMap model, @PathVariable("noNota")String noNota){
		
//		MstKaryawanDto karyawanSkrg = (MstKaryawanDto)session.getAttribute("sesikaryawan");
		if (result.hasErrors()) {
			return "redirect:/transaksi/list";
		}
		
		TrHeaderPenjualanDto isExist = svc.listTransaksiHeader(noNota);
		
		if (isExist == null) {
			return "redirect:/transaksi/list";
		}else{
//			String kodeKaryawan = (String) session.getAttribute("kodeKaryawan");
//			header.setKodeKaryawan(kodeKaryawan);
			svc.updateHeader(header);
			return "redirect:/transaksi/list";
		}
	}
	
	@RequestMapping("/detail/tambah/{noNota}")
	public String detail_tambah(Model model, HttpServletRequest request, @PathVariable("noNota")String noNota){
		List<BarangDto> barang = bSvc.listAll();
		TrDetailPenjualanDto detail = new TrDetailPenjualanDto();
		model.addAttribute("noNota", noNota);
		model.addAttribute("barangData", barang);
		model.addAttribute("detail", detail);
		return "viewTransaksiDetailTambah";
	}
	
	@RequestMapping("/detail/tambah/proses/{noNota}")
	public String detail_tambah_proses(@Valid @ModelAttribute("detail") TrDetailPenjualanDto detail,
			BindingResult result, ModelMap model, @PathVariable("noNota")String noNota){
		
		if (result.hasErrors()) {
			return "redirect:/transaksi/list";
		}
		
		TrHeaderPenjualanDto isExist = svc.listTransaksiHeader(noNota);
		
		if (isExist == null) {
			return "redirect:/transaksi/list";
		}else{
			svc.saveDetail(detail);
			List<TrDetailPenjualanDto> forUpdateHeader = svc.listTransaksiDetailByNoNota(noNota);
			TrHeaderPenjualanDto newme = svc.listTransaksiHeader(noNota);
			
			int hargaTotal=0;
			int globaldiskon = newme.getGlobalDiskon();
			
			for (TrDetailPenjualanDto h : forUpdateHeader) {
				hargaTotal += h.getSubtotal();
			}
			
			int globalDiskonRP = (hargaTotal * newme.getGlobalDiskon()) / 100;
			
			newme.setHargaTotal(hargaTotal - globalDiskonRP);
			
			svc.saveHargaTotalHeader(newme);
			
			return "redirect:/transaksi/detail/" + detail.getNoNota();
		}
	}
	

	@RequestMapping("/tambah")
	public String addHeader(Model model, HttpServletRequest request){
		List<KaryawanDto> karyawan = kSvc.listAll();
		List<MstCustomerDto> customer = cSvc.listAll();
		TrHeaderPenjualanDto dto = new TrHeaderPenjualanDto();
		model.addAttribute("data", dto);
		model.addAttribute("pelanggan", customer);
		model.addAttribute("karyawan",karyawan);
		return "viewTransaksiHeaderTambah";
	}


	@RequestMapping("/simpanheader/proses")
	public String tambahProsesHeader(@Valid @ModelAttribute("data") TrHeaderPenjualanDto dto,
			 BindingResult result){
		if(result.hasErrors()){
			 return "transaksi/tambah";
		 }else{
			 svc.saveHeader(dto);
			 return "redirect:/transaksi/detail/tambah/" + dto.getNoNota();
		 }
	}
	
}
