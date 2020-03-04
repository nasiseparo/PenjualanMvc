package com.penjualan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/transaksi")
public class TransaksiController {
	
	
	@RequestMapping("/list")
	public String list(Model model) {
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
