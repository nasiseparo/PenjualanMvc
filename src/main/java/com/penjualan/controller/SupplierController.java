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
import com.penjualan.dto.SupplierDto;
import com.penjualan.service.SupplierService;

@Controller
@RequestMapping("/supplier")
public class SupplierController {
	
	@Autowired
	SupplierService svc;
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String list(Model model) {
	
		List<SupplierDto> dtos = svc.listAll();
		model.addAttribute("supplier", dtos);
		return "supplier_list";
	}
	
	@RequestMapping("/add")
	public String add(Model model) {
		SupplierDto dto = new SupplierDto();
		model.addAttribute("supplier", dto);
		return "supplier_add";
	}
	
	@RequestMapping(value = "/submitSupplier", method = RequestMethod.POST)
	public String submitForm(@Valid @ModelAttribute("supplier") SupplierDto dto, BindingResult result, ModelMap model) {
		if (result.hasErrors()) {
			return "supplier_add";
		} else {
	
			svc.save(dto);
			return "redirect:/supplier/list";
		}

	}

	@RequestMapping("/edit/{kodeSupplier}")
	public String detail(@PathVariable("kodeSupplier") String kodeSupplier, Model model) {
		SupplierDto dto = svc.getSupplierById(kodeSupplier);
		model.addAttribute("supplier", dto);
		return "supplier_edit";
	}
	
	@RequestMapping(value="/update", method = RequestMethod.POST)
	public String save(@Valid @ModelAttribute("supplier") SupplierDto dto, BindingResult result) {
		if (result.hasErrors()) {
			return "supplier_add";
		} else {
			svc.save(dto);
			return "redirect:/supplier/list";
		}
	}
	@RequestMapping("/delete/{kodeSupplier}")
	public String delete(@PathVariable("kodeSupplier") String kodeSupplier) {
		svc.delete(kodeSupplier);
		return "redirect:/supplier/list";
	}
}
