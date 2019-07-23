package com.spring.test;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dto.Feedback;
import com.spring.dto.Login;
import com.spring.serv.LoginService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private LoginService loginService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "home/login";
	}

	@RequestMapping(value = "/sy_llabus")
	public String syllabus() {
		return "home/syllabus";
	}

	@RequestMapping(value = "/ab_out")
	public String about() {
		return "home/about";
	}

	@RequestMapping(value = "/login_do")
	public String logindo(ModelMap model, HttpSession session, Login logi) {
		Login b = loginService.validate(logi);
		if (b == null) {
			model.put("login", new Login());
			return "home/login";
		}
		if (b.getUserrole().equals("admin")) {
			session.setAttribute("login", b);
			return "admin/adwelcome";
		} else if (b.getUserrole().equals("student")) {
			session.setAttribute("login", b);
			return "student/stwelcome";
		}
		return null;

	}

	@RequestMapping(value = "lo_gout")
	public String logoutdo() {
		return "logout";
	}

	@ModelAttribute("Login")
	public Login createModel() {
		return new Login();
	}

}
