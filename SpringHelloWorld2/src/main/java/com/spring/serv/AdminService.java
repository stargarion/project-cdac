package com.spring.serv;

import java.util.List;

import com.spring.dto.Feedback;
import com.spring.dto.Leaver;
import com.spring.dto.Login;
import com.spring.dto.Marks;

public interface AdminService {
	public void registerstudent(Login logi);
	public void uploadStuEx(Login mark);
	public List<Feedback> showAll();
	public List<Leaver> leaveShow();

}
