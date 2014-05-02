package com.hrabkov.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hrabkov.dao.UserDao;
import com.hrabkov.model.User;

@Repository
public class UserHibernateImpl implements UserDao {

	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
	public User getUser(final Integer userId) {

		return (User) this.sessionFactory.getCurrentSession().get(User.class, userId);
	}

	@Override
	public User getByName(String userName) {

		final Query query = this.sessionFactory.getCurrentSession().createQuery("from com.hrabkov.model.User where name = :userName");
		query.setParameter("userName", userName);
		final List<User> users = query.list();
		return users == null || users.isEmpty() ? null : users.get(0);
	}

}
