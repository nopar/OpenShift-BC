package com.hrabkov.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hrabkov.dao.PostarDao;
import com.hrabkov.model.Postar;
import com.hrabkov.model.PostovyList;

@Repository
public class PostarHibernateDao implements PostarDao {

	@Autowired
    private SessionFactory sessionFactory;
	  
	@Override
	public void addList(PostovyList list) {
		final Postar postar = (Postar) this.sessionFactory.getCurrentSession().get(Postar.class, list.getPostar().getPostarId());
		final List<PostovyList> letters = postar.getLetters();
		letters.add(list);
	}

	@Override
	public List<PostovyList> getLists(Integer postarId) {
		final Postar postar = (Postar) this.sessionFactory.getCurrentSession().get(Postar.class, postarId);
		return postar.getLetters();
	}

	@Override
	public Postar persist(final Postar postar) {
		this.sessionFactory.getCurrentSession().persist(postar);
		return postar;
	}

	@Override
	public Postar getPostar(Integer postarId) {
		return (Postar) this.sessionFactory.getCurrentSession().get(Postar.class, postarId);
	}
}
