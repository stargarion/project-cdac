package com.spring.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.spring.dto.Feedback;
import com.spring.dto.Leaver;
import com.spring.dto.Login;
import com.spring.dto.Marks;

@Repository
public class AdminDaoImpli implements AdminDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public void addStudent(final Login logi) {
		hibernateTemplate.execute(new HibernateCallback<List<Login>>() {

			@Override
			public List<Login> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.save(logi);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});

	}

	@Override
	public void addStudentUp(Login logi) {
		
	}

	@Override
	public List<Feedback> getFeed() {
		List<Feedback> ul = hibernateTemplate.execute(new HibernateCallback<List<Feedback>>() {
			public List<Feedback> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from Feedback");
				List<Feedback> userList = q.list();
				t.commit();
				session.flush();
				session.close();
				return userList;
			}
		});
		return ul;
	}

	@Override
	public List<Leaver> getLeave() {
		List<Leaver> ull = hibernateTemplate.execute(new HibernateCallback<List<Leaver>>() {
			public List<Leaver> doInHibernate(Session session) throws HibernateException {
				Transaction tl = session.beginTransaction();
				Query ql = session.createQuery("from Leaver");
				List<Leaver> userList = ql.list();
				tl.commit();
				session.flush();
				session.close();
				return userList;
			}
		});
		return ull;
	}

	
}
