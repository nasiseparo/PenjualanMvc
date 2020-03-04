package com.penjualan.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	
	@RequestMapping("/add")
	public String add(Model model) {
		return "transaksi_add";
	}
	@RequestMapping("/detail")
	public String detail(Model model) {
		return "transaksi_detail";
	}
	
}
