package com.penjualan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.penjualan.dto.KaryawanDto;
import com.penjualan.service.KaryawanService;

@Controller
@RequestMapping("/karyawan")
public class KaryawanKontroller {
	
	@Autowired
	KaryawanService svc;

	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String list(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("sesilogin")==null&&
				session.getAttribute("kodeKaryawan")==null&&
				session.getAttribute("OK")==null){
	
			return "redirect:/login";
		}
		List<KaryawanDto> dtos = svc.listAll();
		model.addAttribute("listKaryawan", dtos);
		return "list_karyawan";
	}
	
	@RequestMapping("/add")
	public String add(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("sesilogin")==null&&
				session.getAttribute("kodeKaryawan")==null&&
				session.getAttribute("OK")==null){
	
			return "redirect:/login";
		}
		KaryawanDto dto = new KaryawanDto();
		model.addAttribute("dto", dto);
		return "addpenduduk";
	}
}
