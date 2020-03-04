package com.penjualan.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.penjualan.dto.MstProvinsiDto;
import com.penjualan.service.MstProvinsiSvc;

@Controller
@RequestMapping("/provinsi")
public class MstProvinsiController {

	@Autowired
	private MstProvinsiSvc ProvinsiSvc;

	@RequestMapping("/list")
	public String listProvinsi(Model model) {
		List<MstProvinsiDto> dtos = ProvinsiSvc.listAll();
		model.addAttribute("provinsis", dtos);
		return "provinsi_list";

	}

	@RequestMapping("/add")
	public String addProvinsi(Model model) {
		MstProvinsiDto dto = new MstProvinsiDto();
		model.addAttribute("provinsi_add", dto);
		return "provinsi_add";
	}

	@RequestMapping("/save")
	public String saveProvisi(@Valid @ModelAttribute("provinsi_add") MstProvinsiDto dto, BindingResult result) {
		if (result.hasErrors()) {
			return "provinsi_add";
		} else {
			ProvinsiSvc.save(dto);
			return "redirect:/provinsi/list";
		}
	}

	@RequestMapping(value = "/edit/{kode}")
	public String detailProvinsi(@PathVariable("kode") String kode, Model model) {
		MstProvinsiDto provinsiDto = ProvinsiSvc.getById(kode);
		model.addAttribute("provinsi", provinsiDto);		
		return "provinsi_edit";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateProvinsi(@Valid @ModelAttribute("provinsi") MstProvinsiDto dto, BindingResult result) {
		if (result.hasErrors()) {
			return "edit";
		} else {
			ProvinsiSvc.update(dto);
			return "redirect:/provinsi/list";
		}
	}

	@RequestMapping(value = "/delete/{kode}")
	public String deleteProvinsi(@PathVariable("kode") String kode, Model model) {
		if (kode != null) {
			ProvinsiSvc.delete(kode);
			return "redirect:/provinsi/list";
		} else {
			return "redirect:/provinsi/list";
		}
	}

}
