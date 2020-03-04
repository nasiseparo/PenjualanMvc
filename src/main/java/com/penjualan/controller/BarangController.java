package com.penjualan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.penjualan.dto.BarangDto;
import com.penjualan.service.BarangService;

@Controller
@RequestMapping("/barang")
public class BarangController {

	@Autowired
	BarangService barangSvc;

	@RequestMapping("/add")
	public String Add(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("sesilogin")==null&&
				session.getAttribute("kodeKaryawan")==null&&
				session.getAttribute("OK")==null){
	
			return "redirect:/login";
		}
		
		BarangDto dto = new BarangDto();
		model.addAttribute("dto", dto);
		return "add";
	}

	@RequestMapping(value = "/submitBarang", method = RequestMethod.POST)
	public String submitForm(@Valid @ModelAttribute("barang") BarangDto dto, 
			BindingResult result, ModelMap model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("sesilogin")==null&&
				session.getAttribute("kodeKaryawan")==null&&
				session.getAttribute("OK")==null){
	
			return "redirect:/login";
		}
		if (result.hasErrors()) {
			return "pendudukadd";
		} else {
			model.addAttribute("kodeBarang", dto.getKodeBarang());
			model.addAttribute("kodeSupplier", dto.getKodeSupplier());
			model.addAttribute("namaBarang", dto.getNamaBarang());
			model.addAttribute("stokBarang", dto.getStokBarang());
			barangSvc.save(dto);
			return "redirect:/barang/home";
		}

	}

	@RequestMapping(value = "/edit/{kodeBarang}")
	public String detail(@PathVariable("kodeBarang") String kodeBarang, 
			Model model,  HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("sesilogin")==null&&
				session.getAttribute("kodeKaryawan")==null&&
				session.getAttribute("OK")==null){
	
			return "redirect:/login";
		}
		BarangDto barangDto = barangSvc.getBarangById(kodeBarang);
		model.addAttribute("barang", barangDto);	
		return "edit";
	}


	@RequestMapping("/home")
	public String Home(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("sesilogin")==null&&
				session.getAttribute("kodeKaryawan")==null&&
				session.getAttribute("OK")==null){
	
			return "redirect:/login";
		}
		List<BarangDto> dtos = barangSvc.listAll();
		model.addAttribute("barang", dtos);
		return "home";
	}

	@RequestMapping(value = "/delete/{kodeBarang}")
	public String delete(@PathVariable("kodeBarang") String kodeBarang) {
		
		if(kodeBarang!=null){
			barangSvc.delete(kodeBarang);
			return "redirect:/barang/home";
		}else{
			return "redirect:/barang/home";
		}
	}
	

}
