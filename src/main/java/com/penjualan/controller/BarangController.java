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
public class BarangController {

	
	@Autowired
	private MstCustomerSvc CustomerSvc;
	
	
	
	
//	---------------------Crud Customer ---------------------------------------------------------
	
		@RequestMapping("/listcustomer")
		public String listCustomer(Model model) {
			List<MstCustomerDto> dtos = CustomerSvc.listAll();
			model.addAttribute("customers", dtos);
			return "customerList";
		
	}
		
		@RequestMapping("/addcustomer")
		public String addCustomer(Model model) {
			MstCustomerDto dto = new MstCustomerDto();
			model.addAttribute("customerAdd", dto);
			return "customerAdd";
		}
		
		
		@RequestMapping("/savecustomer")
		public String save(@Valid @ModelAttribute("customerAdd") MstCustomerDto dto,
				BindingResult result) {
			if (result.hasErrors()) {
				return "CustomerAdd";
			} else {
				CustomerSvc.save(dto);
				return "redirect:/listcustomer";
			}
		}
		
		
		@RequestMapping(value = "/editcustomer/{kode}")
		public String detail(@PathVariable("kode") String kode, Model model) {
			MstCustomerDto customerDto = CustomerSvc.getById(kode);
			model.addAttribute("kodeCustomer", customerDto.getKodeCustomer());
			model.addAttribute("namaCustomer", customerDto.getNamaCustomer());
			model.addAttribute("alamatCustomer", customerDto.getAlamatCustomer());
			model.addAttribute("emailCustomer", customerDto.getEmailCustomer());
			model.addAttribute("kodeKota", customerDto.getKodeKota());
			return "customerEdit";
		}

		
		@RequestMapping(value = "/updatecustomer", method = RequestMethod.POST)
		public String update(@Valid @ModelAttribute("customer") MstCustomerDto dto,
				BindingResult result) {
			if (result.hasErrors()) {
				return "editcustomer";
			} else {
				CustomerSvc.update(dto);
				return "redirect:/listcustomer";
			}
		}
		
		
		@RequestMapping(value = "/delete/{kode}")
		public String delete(@PathVariable("kode") String kode, Model model) {
			if(kode!=null){
				CustomerSvc.delete(kode);
				return "redirect:/listcustomer";
			}else{
				return "redirect:/listcustomer";
			}
		}

		
//		---------------------End of Crud Customer ---------------------------------------------------------
		
}
