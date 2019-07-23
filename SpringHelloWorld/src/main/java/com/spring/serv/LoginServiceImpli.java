package com.spring.serv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.LoginDao;
import com.spring.dto.Login;

@Service
public class LoginServiceImpli implements LoginService {

	@Autowired
	private LoginDao loginDao;

	@Override
	public Login validate(Login logi) {
		return loginDao.login(logi);
	}

}
