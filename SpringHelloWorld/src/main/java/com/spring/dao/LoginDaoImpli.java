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

import com.spring.dto.Login;
@Repository
public class LoginDaoImpli implements LoginDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

/*	@Override
	public int login(final Login logi) {
		List<Login> ul = hibernateTemplate.execute(new HibernateCallback<List<Login>>() {
			public List<Login> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from Login where username = ? and password = ? and userrole=?");
				q.setString(0, logi.getUsername());
				q.setString(1, logi.getPassword());
				q.setString(2, logi.getUserrole());
				List<Login> userList = q.list();
				t.commit();
				session.flush();
				session.close();
				return userList;
			}
		});
		if(!ul.isEmpty()) {
			if(logi.getUserrole().equals("admin"))
			return 1;
			else if(logi.getUserrole().equals("student"))
				return 2;
		}	
		return 0;    
	}*/
	
	@Override
	public Login login(final Login logi) {
		List<Login> ul = hibernateTemplate.execute(new HibernateCallback<List<Login>>() {
			public List<Login> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from Login where username = ? and password = ? and userrole=?");
				q.setString(0, logi.getUsername());
				q.setString(1, logi.getPassword());
				q.setString(2, logi.getUserrole());
				List<Login> userList = q.list();
				t.commit();
				session.flush();
				session.close();
				return userList;
			}
		});
		if(!ul.isEmpty()) {
			return ul.get(0);
		}	
		return null;    
	}
	
}
