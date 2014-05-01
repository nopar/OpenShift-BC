package com.hrabkov.service;

import java.util.List;

import com.hrabkov.dto.PostarDto;
import com.hrabkov.model.Postar;
import com.hrabkov.model.PostovyList;

public interface PostarService {

	Integer create(String name);
	Integer createPostarWithList(String postarName, String listDesc);
	void addList(PostovyList list);
	List<PostovyList> getLists(Integer postarId);
	PostarDto getPostar(Integer postarId);
}
