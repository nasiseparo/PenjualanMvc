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

import com.penjualan.dto.MstCustomerDto;
import com.penjualan.service.MstCustomerSvc;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private MstCustomerSvc CustomerSvc;

	@RequestMapping("/list")
	public String listCustomer(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("sesilogin")==null&&
				session.getAttribute("kodeKaryawan")==null&&
				session.getAttribute("OK")==null){
	
			return "redirect:/login";
		}
		List<MstCustomerDto> dtos = CustomerSvc.listAll();
		model.addAttribute("customer", dtos);
		return "customer_list";

	}

	@RequestMapping("/add")
	public String addCustomer(Model model,  HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("sesilogin")==null&&
				session.getAttribute("kodeKaryawan")==null&&
				session.getAttribute("OK")==null){
	
			return "redirect:/login";
		}
		MstCustomerDto dto = new MstCustomerDto();
		model.addAttribute("customer", dto);
		return "customer_add";
	}

	@RequestMapping("/submitCustomer")
	public String save(@Valid @ModelAttribute("customer") MstCustomerDto dto,
			BindingResult result,  HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("sesilogin")==null&&
				session.getAttribute("kodeKaryawan")==null&&
				session.getAttribute("OK")==null){
	
			return "redirect:/login";
		}
		if (result.hasErrors()) {
			return "customer_add";
		} else {
			CustomerSvc.save(dto);
			return "redirect:/customer/list";
		}
	}

	@RequestMapping(value = "/edit/{kodeCustomer}")
	public String edit(@PathVariable("kodeCustomer") String kodeCustomer, Model model,
			 HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("sesilogin")==null&&
				session.getAttribute("kodeKaryawan")==null&&
				session.getAttribute("OK")==null){
	
			return "redirect:/login";
		}
		MstCustomerDto customerDto = CustomerSvc.getById(kodeCustomer);
		model.addAttribute("customer", customerDto);
		return "customer_edit";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@Valid @ModelAttribute("customer") MstCustomerDto dto, 
			BindingResult result, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("sesilogin")==null&&
				session.getAttribute("kodeKaryawan")==null&&
				session.getAttribute("OK")==null){
	
			return "redirect:/login";
		}
		if (result.hasErrors()) {
			return "editcustomer";
		} else {
			CustomerSvc.update(dto);
			return "redirect:/customer/list_customer";
		}
	}

	@RequestMapping(value = "/delete/{kodeCustomer}")
	public String delete(@PathVariable("kodeCustomer") String kode, Model model,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("sesilogin")==null&&
				session.getAttribute("kodeKaryawan")==null&&
				session.getAttribute("OK")==null){
	
			return "redirect:/login";
		}
		if (kode != null) {
			CustomerSvc.delete(kode);
			return "redirect:/customer/list";
		} else {
			return "redirect:/customer/list";
		}
	}

}
