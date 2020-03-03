package com.penjualan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMethod;

import com.penjualan.dto.BarangDto;
import com.penjualan.service.BarangService;

@Controller
public class BarangController {
	@Autowired
	BarangService svc;

	@RequestMapping(value="/barang", method = RequestMethod.GET)
	public String list(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("OK") == null){
			return "redirect:/login";
		}
		
		List<BarangDto> dtos = svc.listAll();
		model.addAttribute("listBarang", dtos);
		return "list_barang";
	}
	
	@RequestMapping("/barang/add")
	public String add(Model model) {
		BarangDto dto = new BarangDto();
		model.addAttribute("dto", dto);
		return "add_barang";
	}

	@RequestMapping("/barang/edit/{kodebarang}")
	public String detail(@PathVariable("kodebarang") String kodeBarang, Model model) {
		BarangDto dto = svc.getBarangById(kodeBarang);
		model.addAttribute("dto", dto);
		return "edit_barang";
	}
	
	@RequestMapping("/barang/save")
	public String save(@Valid @ModelAttribute("dto") BarangDto dto, BindingResult result) {
		if (result.hasErrors()) {
			return "add_barang";
		} else {
			svc.save(dto);
			return "redirect:/barang";
		}
	}
	@RequestMapping("/barang/delete/{kodebarang}")
	public String delete(@PathVariable("kodebarang") String kodeBarang) {
		svc.delete(kodeBarang);
		return "redirect:/barang";
	}
	
	
}
