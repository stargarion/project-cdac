package com.spring.dao;

import java.util.List;

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
public class StudentDaoImpli implements StudentDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public void enterfeed(final Feedback feedback) {
		hibernateTemplate.execute(new HibernateCallback<List<Feedback>>() {

			@Override
			public List<Feedback> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.save(feedback);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
	}

	@Override
	public List<Feedback> getValues() {
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
	public void enterleave(final Leaver leave) {
		hibernateTemplate.execute(new HibernateCallback<List<Leaver>>() {

			@Override
			public List<Leaver> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.save(leave);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});

	}

	@Override
	public List<Leaver> getleave() {
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

	@Override
	public List<Marks> getMarks(final int uid) {
		List<Marks> ul = hibernateTemplate.execute(new HibernateCallback<List<Marks>>() {
			public List<Marks> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from Marks where uid=?");
				q.setInteger(0, uid);
				List<Marks> userList = q.list();
				t.commit();
				session.flush();
				session.close();
				return userList;
			}
		});
		return ul;
	}

	@Override
	public void update(final Login logi) {
		hibernateTemplate.execute(new HibernateCallback<List<Login>>() {
			public List<Login> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.update(logi);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		
	}

}
