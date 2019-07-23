package com.spring.dao;

import java.util.List;

import com.spring.dto.Feedback;
import com.spring.dto.Leaver;
import com.spring.dto.Login;
import com.spring.dto.Marks;

public interface StudentDao {
	public void enterfeed(Feedback feedback);

	public List<Feedback> getValues();

	public void enterleave(Leaver leave);

	public List<Leaver> getleave();

	public List<Marks> getMarks(int uid);
	
	public void update(Login logi);
}
