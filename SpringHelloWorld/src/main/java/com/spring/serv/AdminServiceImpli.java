package com.spring.serv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.AdminDao;
import com.spring.dto.Login;

@Service
public class AdminServiceImpli implements AdminService {

	@Autowired
	private AdminDao adminDao;

	@Override
	public void registerstudent(Login logi) {
		adminDao.addStudent(logi);

	}

}
