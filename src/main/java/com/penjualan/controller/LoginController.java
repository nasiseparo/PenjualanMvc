package com.penjualan.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.penjualan.dto.KaryawanDto;
import com.penjualan.service.KaryawanService;

@Controller
public class LoginController {
	@Autowired
	KaryawanService svc;
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String list(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("sesilogin");
		session.removeAttribute("kodeKaryawan");
		session.removeAttribute("OK");
		KaryawanDto dto = new KaryawanDto();
		model.addAttribute("karyawanLogin", dto);
		return "login";
	}
	
	@RequestMapping("/login/check-user")
	public String add(@ModelAttribute("karyawanLogin") KaryawanDto dto, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		KaryawanDto findUser = svc.getKaryawanByUsername(dto.getUsername());
		if(findUser != null) {
			if (dto.getPassword().equals(findUser.getPassword())) {
				session.setAttribute("sesilogin", dto.getUsername());
				session.setAttribute("kodeKaryawan", dto.getKodeKaryawan());
				session.setAttribute("OK", findUser);
				
				return "redirect:/barang/home";
			} else {
				model.addAttribute("pesan", "login gagal");
				return "login";
			}
		} else {
			model.addAttribute("pesan", "login gagal");
			return "login";
		}
			
	}
}
