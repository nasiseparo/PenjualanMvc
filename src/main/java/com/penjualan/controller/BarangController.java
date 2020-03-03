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
import com.penjualan.dto.MstProvinsiDto;
import com.penjualan.service.MstCustomerSvc;
import com.penjualan.service.MstProvinsiSvc;

@Controller
public class BarangController {

	
	@Autowired
	private MstCustomerSvc CustomerSvc;
	@Autowired
	private MstProvinsiSvc ProvinsiSvc;
	
	
	
//	---------------------Start of Crud Customer ---------------------------------------------------------
	
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
				return "customerAdd";
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
			model.addAttribute("jenisKelamin", customerDto.getJenisKelamin());
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
		
		
//		---------------------Start of Crud Provinsi ---------------------------------------------------------
		
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
		public String saveProvisi(@Valid @ModelAttribute("provinsiAdd") MstProvinsiDto dto,
				BindingResult result) {
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
		public String updateProvinsi(@Valid @ModelAttribute("provinsi") MstProvinsiDto dto,
				BindingResult result) {
			if (result.hasErrors()) {
				return "editprovinsi";
			} else {
				ProvinsiSvc.update(dto);
				return "redirect:/listprovinsi";
			}
		}
		
		
		@RequestMapping(value = "/delete/{kode}")
		public String deleteProvinsi(@PathVariable("kode") String kode, Model model) {
			if(kode!=null){
				ProvinsiSvc.delete(kode);
				return "redirect:/listprovinsi";
			}else{
				return "redirect:/listprovinsi";
			}
		}

}
