package com.spring.serv;

import java.util.List;

import com.spring.dto.Feedback;
import com.spring.dto.Leaver;
import com.spring.dto.Login;
import com.spring.dto.Marks;

public interface StudentService {
	public void insertfeed(Feedback feedback);

	public List<Feedback> showAll();

	public void insertleave(Leaver leave);

	public List<Leaver> showleave(int id);

	public List<Marks> showMarks(int uid);
	
	public void modify(Login logi);

	public void changepass(String pass, int id);
}
