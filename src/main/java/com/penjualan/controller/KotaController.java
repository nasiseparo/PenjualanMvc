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

import com.penjualan.dto.KotaDto;
import com.penjualan.service.KotaService;

@Controller
public class KotaController {

	@Autowired
	KotaService svc;
	
	@RequestMapping(value="/kota", method = RequestMethod.GET)
	public String list(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("OK") == null){
			return "redirect:/login";
		}
		
		List<KotaDto> dtos = svc.listAll();
		model.addAttribute("listkota", dtos);
		return "list_kota";
	}
	
	@RequestMapping("/kota/add")
	public String add(Model model) {
		KotaDto dto = new KotaDto();
		model.addAttribute("dto", dto);
		return "add_kota";
	}
	

	@RequestMapping("/kota/edit/{kodekota}")
	public String detail(@PathVariable("kodekota") String kodeKota, Model model) {
		KotaDto dto = svc.getKotaById(kodeKota);
		model.addAttribute("dto", dto);
		return "edit_kota";
	}
	
	@RequestMapping("/kota/save")
	public String save(@Valid @ModelAttribute("dto") KotaDto dto, BindingResult result) {
		if (result.hasErrors()) {
			return "add_kota";
		} else {
			svc.save(dto);
			return "redirect:/kota";
		}
	}
	@RequestMapping("/kota/delete/{kodekota}")
	public String delete(@PathVariable("kodekota") String kodeKota) {
		svc.delete(kodeKota);
		return "redirect:/kota";
	}
}
