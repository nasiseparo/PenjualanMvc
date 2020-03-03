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
public class MstProvinsiController {

	@Autowired
	private MstProvinsiSvc ProvinsiSvc;

	@RequestMapping("/listprovinsi")
	public String listProvinsi(Model model) {
		List<MstProvinsiDto> dtos = ProvinsiSvc.listAll();
		model.addAttribute("provinsis", dtos);
		return "provinsiList";

	}

	@RequestMapping("/addprovinsi")
	public String addProvinsi(Model model) {
		MstProvinsiDto dto = new MstProvinsiDto();
		model.addAttribute("provinsiAdd", dto);
		return "provinsiAdd";
	}

	@RequestMapping("/saveprovinsi")
	public String saveProvisi(@Valid @ModelAttribute("provinsiAdd") MstProvinsiDto dto, BindingResult result) {
		if (result.hasErrors()) {
			return "provinsiAdd";
		} else {
			ProvinsiSvc.save(dto);
			return "redirect:/listprovinsi";
		}
	}

	@RequestMapping(value = "/editprovinsi/{kode}")
	public String detailProvinsi(@PathVariable("kode") String kode, Model model) {
		MstProvinsiDto provinsiDto = ProvinsiSvc.getById(kode);
		model.addAttribute("kodeProvinsi", provinsiDto.getKodeProvinsi());
		model.addAttribute("namaProvinsi", provinsiDto.getNamaProvinsi());
		return "provinsiEdit";
	}

	@RequestMapping(value = "/updateprovinsi", method = RequestMethod.POST)
	public String updateProvinsi(@Valid @ModelAttribute("provinsi") MstProvinsiDto dto, BindingResult result) {
		if (result.hasErrors()) {
			return "editprovinsi";
		} else {
			ProvinsiSvc.update(dto);
			return "redirect:/listprovinsi";
		}
	}

	@RequestMapping(value = "/delete/{kode}")
	public String deleteProvinsi(@PathVariable("kode") String kode, Model model) {
		if (kode != null) {
			ProvinsiSvc.delete(kode);
			return "redirect:/listprovinsi";
		} else {
			return "redirect:/listprovinsi";
		}
	}

}
