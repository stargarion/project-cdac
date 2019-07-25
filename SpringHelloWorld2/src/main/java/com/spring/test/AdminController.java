package com.spring.test;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.dto.Feedback;
import com.spring.dto.Leaver;
import com.spring.dto.Login;
import com.spring.dto.Marks;
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
	
	@ModelAttribute(value="stu_upl")
	public String dataupload(Login logi) {
		adminService.uploadStuEx(logi);
		return "admin/adwelcome";
	}
	
	@RequestMapping(value = "up_loads")
	public String uploads() {
		return "admin/uploads";
	}
	
	@RequestMapping(value = "sh_feed")
	public String showfeed(HttpSession session) {
		List<Feedback> list= adminService.showAll();
		session.setAttribute("feedback", list);
		return "admin/feeddisplay";
	}
	
	@RequestMapping(value = "le_avereply")
	public String leavereply(HttpSession session) {
		List<Leaver> listl = adminService.leaveShow();
		session.setAttribute("leave", listl);
		return "admin/leavereply";
	}
	
	@RequestMapping(value = "no_tice")
	public String notice() {
		return "admin/notice";
	}
	
	@RequestMapping(value = "re_examapproval")
	public String reexamapproval() {
		return "admin/reexamapproval";
	}
	
	@RequestMapping(value = "ma_rksa")
	public String marksa() {
		return "admin/marks";
	}
	
	@RequestMapping(value = "show_feedback")
	public String showfb() {
		return "admin/feeddisplay";
	}

}
