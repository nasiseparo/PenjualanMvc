package com.penjualan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.penjualan.dto.SupplierDto;
import com.penjualan.service.SupplierService;

@Controller
public class SupplierController {
	
	@Autowired
	SupplierService svc;
	
	@RequestMapping(value="/supplier", method = RequestMethod.GET)
	public String list(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("OK") == null){
			return "redirect:/login";
		}
		
		List<SupplierDto> dtos = svc.listAll();
		model.addAttribute("listsupplier", dtos);
		return "list_supplier";
	}
	
	@RequestMapping("/supplier/add")
	public String add(Model model) {
		SupplierDto dto = new SupplierDto();
		model.addAttribute("dto", dto);
		return "add_supplier";
	}

	@RequestMapping("/supplier/edit/{kodesupplier}")
	public String detail(@PathVariable("kodesupplier") String kodeSupplier, Model model) {
		SupplierDto dto = svc.getSupplierById(kodeSupplier);
		model.addAttribute("dto", dto);
		return "edit_supplier";
	}
	
	@RequestMapping("/supplier/save")
	public String save(@Valid @ModelAttribute("dto") SupplierDto dto, BindingResult result) {
		if (result.hasErrors()) {
			return "add_supplier";
		} else {
			svc.save(dto);
			return "redirect:/supplier";
		}
	}
	@RequestMapping("/supplier/delete/{kodesupplier}")
	public String delete(@PathVariable("kodesupplier") String kodeSupplier) {
		svc.delete(kodeSupplier);
		return "redirect:/supplier";
	}
}
