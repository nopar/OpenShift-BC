package com.hrabkov.dao;

import java.util.List;

import com.hrabkov.model.Postar;
import com.hrabkov.model.PostovyList;

public interface PostarDao {

	Postar persist(Postar postar);
	Postar getPostar(Integer postarId);
	void addList(PostovyList list);
	List<PostovyList> getLists(Integer postarId);
}
