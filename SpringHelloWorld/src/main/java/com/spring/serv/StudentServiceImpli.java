package com.spring.serv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.StudentDao;
import com.spring.dto.Feedback;
import com.spring.dto.Leaver;
import com.spring.dto.Login;
import com.spring.dto.Marks;

@Service
public class StudentServiceImpli implements StudentService {
	@Autowired
	private StudentDao studentdao;

	@Override
	public void insertfeed(Feedback feedback) {
		studentdao.enterfeed(feedback);

	}

	@Override
	public List<Feedback> showAll() {
		return studentdao.getValues();
	}

	@Override
	public void insertleave(Leaver leave) {
		studentdao.enterleave(leave);

	}

	@Override
	public List<Leaver> showleave() {
		return studentdao.getleave();
	}

	@Override
	public List<Marks> showMarks(int uid) {
		return studentdao.getMarks(uid);
	}

	@Override
	public void modify(Login logi) {
		studentdao.update(logi);
		
	}

}
