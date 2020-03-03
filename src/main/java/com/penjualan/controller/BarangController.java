package com.penjualan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class BarangController {
	
	@RequestMapping("/add")
	public String Add(Model model) {

		return "add";
	}
	@RequestMapping("/edit")
	public String Edit(Model model) {
		
		return "edit";
	}
	@RequestMapping("/list")
	public String List(Model model) {
		
		return "list_transaction";
	}
	@RequestMapping("/login")
	public String Login(Model model) {
		
		return "login";
	}
	
	@RequestMapping("/update")
	public String Update(Model model) {
		
		return "update_transaction";
	}
	@RequestMapping("/home")
	public String Home(Model model) {
		
		return "home";
	}
	@RequestMapping("/list_detail")
	public String Detail(Model model) {
		
		return "list_detail";
	}

}
