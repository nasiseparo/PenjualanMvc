package com.penjualan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class HomeController {
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model) {
		String hello = "Hello Spring MVC";
		model.addAttribute("message", hello);
		return "home"; // return ini merefers ke nama file .jsp di Deployed Res > webapp > WEB-INF > jsp > hello.jsp
	
	}

}
