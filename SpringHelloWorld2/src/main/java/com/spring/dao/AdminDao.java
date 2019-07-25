package com.spring.dao;

import java.util.List;

import com.spring.dto.Feedback;
import com.spring.dto.Leaver;
import com.spring.dto.Login;
import com.spring.dto.Marks;

public interface AdminDao {
	public void addStudent(Login logi);
	public void addStudentUp(Login logi);
	public List<Feedback> getFeed();
	public List<Leaver> getLeave();
}