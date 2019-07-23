package com.spring.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.spring.dto.Feedback;
import com.spring.dto.Login;

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
}
