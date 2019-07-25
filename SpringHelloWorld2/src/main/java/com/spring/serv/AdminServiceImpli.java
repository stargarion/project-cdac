package com.spring.serv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.AdminDao;
import com.spring.dto.Feedback;
import com.spring.dto.Leaver;
import com.spring.dto.Login;
import com.spring.dto.Marks;

@Service
public class AdminServiceImpli implements AdminService {

	@Autowired
	private AdminDao adminDao;

	@Override
	public void registerstudent(Login logi) {
		adminDao.addStudent(logi);

	}

	@Override
	public void uploadStuEx(Login logi) {
		adminDao.addStudentUp(logi);
		
	}

	@Override
	public List<Feedback> showAll() {
		return adminDao.getFeed();
	}

	@Override
	public List<Leaver> leaveShow() {
		return adminDao.getLeave();
	}

}
