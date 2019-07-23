package com.spring.test;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.dto.Login;
import com.spring.serv.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	@RequestMapping(value = "reg_form")
	public String getregform() {
		return "admin/register";
	}

	@RequestMapping(value = "regis_ter")
	public String register(Login logi, HttpSession session) {
		adminService.registerstudent(logi);
		return "admin/adwelcome";
	}

	@ModelAttribute("Login")
	public Login createModel() {
		return new Login();
	}

}
