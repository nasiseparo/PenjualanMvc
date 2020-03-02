package com.penjualan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class BarangController {
	
	@RequestMapping("/add")
	public String Add(Model model) {

		return "add_transaction";
	}
	
	@RequestMapping("/list")
	public String List(Model model) {
		
		return "list_transaction";
	}
	
	@RequestMapping("/update")
	public String Update(Model model) {
		
		return "update_transaction";
	}
	@RequestMapping("/home")
	public String Home(Model model) {
		
		return "home";
	}

}
