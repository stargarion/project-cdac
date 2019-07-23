package com.spring.test;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.dto.Feedback;
import com.spring.dto.Leaver;
import com.spring.dto.Login;
import com.spring.dto.Marks;
import com.spring.serv.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;

	@RequestMapping(value = "/fe_edback")
	public String getform(HttpSession session) {
		List<Feedback> list = studentService.showAll();
		session.setAttribute("feedback", list);
		return "student/feedback";
	}

	@RequestMapping(value = "pr_ofile")
	public String profile(HttpSession session, ModelMap model) {
		Login a=(Login) session.getAttribute("login");
		model.put("login", a);
		return "student/stwelcome";
	}

	@RequestMapping(value = "ma_rks")
	public String marks() {
		return "student/marks";
	}

	@RequestMapping(value = "/feed_back")
	public String givefeed(Feedback feedback, HttpSession session) {
		studentService.insertfeed(feedback);
		List<Feedback> list = studentService.showAll();
		session.setAttribute("feedback", list);
		return "student/feedback";
	}

	@RequestMapping(value = "/lea_ve")
	public String getleaveform(HttpSession session) {
		List<Leaver> listl = studentService.showleave();
		session.setAttribute("leave", listl);
		return "student/leave";
	}

	@RequestMapping(value = "/leave_give")
	public String giveleave(Leaver leave, HttpSession session) {
		studentService.insertleave(leave);
		List<Leaver> listl = studentService.showleave();
		session.setAttribute("leave", listl);
		return "student/leave";
	}
	
	@RequestMapping(value="update")
	public String update(Login logi,HttpSession session) {
		studentService.modify(logi);
		session.setAttribute("login", logi);
		return "student/stwelcome";
	}

	@ModelAttribute("Feedback")
	public Feedback createModelFeed() {
		return new Feedback();
	}

	@ModelAttribute("Leaver")
	public Leaver createModelLeave() {
		return new Leaver();
	}
	
	@ModelAttribute("Login")
	public Login createModel() {
		return new Login();
	}
	
	

	/*
	 * @RequestMapping(value="/ma_rks") public String getmarks(HttpSession
	 * session, @RequestAttribute("uid") Integer uid) { System.out.println(uid); int
	 * uid1=uid; List<Marks> listl = studentService.showMarks(uid1);
	 * session.setAttribute("marks", listl.get(0)); return "student/marksshow"; }
	 */
}
