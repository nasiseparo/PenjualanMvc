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
@RequestMapping("/kota")
public class KotaController {

	@Autowired
	KotaService svc;
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String listKota(Model model) {
		List<KotaDto> dtos = svc.listAll();
		model.addAttribute("listkota", dtos);
		return "kota_list";
	}
	
	@RequestMapping("/add")
	public String addKota(Model model) {
		KotaDto dto = new KotaDto();
		model.addAttribute("dto", dto);
		return "kota_add";
	}
	
	@RequestMapping("/save")
	public String saveKota(@Valid @ModelAttribute("dto") KotaDto dto, BindingResult result) {
		if (result.hasErrors()) {
			return "kota_add";
		} else {
			svc.save(dto);
			return "redirect:/kota/list";
		}
	}
	

	@RequestMapping("/edit/{kodekota}")
	public String detailKota(@PathVariable("kodekota") String kodeKota, Model model) {
		KotaDto dto = svc.getKotaById(kodeKota);
		model.addAttribute("dto", dto);
		return "kota_edit";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateKota(@Valid @ModelAttribute("dto") KotaDto dto, BindingResult result) {
		if (result.hasErrors()) {
			return "kota_edit";
		} else {
			svc.save(dto);
			return "redirect:/kota/list";
		}
	}
	
	
	
	
	
	@RequestMapping("/delete/{kodekota}")
	public String delete(@PathVariable("kodekota") String kodeKota) {
		svc.delete(kodeKota);
		return "redirect:/kota/list";
	}
}
