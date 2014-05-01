package com.hrabkov.service.iml;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hrabkov.assembler.PostarAssembler;
import com.hrabkov.dao.PostarDao;
import com.hrabkov.dto.PostarDto;
import com.hrabkov.model.Postar;
import com.hrabkov.model.PostovyList;
import com.hrabkov.service.PostarService;

@Service
public class PostarServiceImpl implements PostarService {

	@Autowired
	private PostarDao postarDao;

	@Autowired
	private PostarAssembler postarAssembler;
	
	@Transactional(readOnly=false)
	@Override
	public void addList(PostovyList list) {
		
		postarDao.addList(list);
	}

	@Transactional(readOnly=true)
	@Override
	public List<PostovyList> getLists(Integer postarId) {
		
		return postarDao.getLists(postarId);
	}

	@Transactional(readOnly=false)
	@Override
	public Integer create(String name) {
		Postar novyPostar = new Postar();
		novyPostar.setName(name);
		postarDao.persist(novyPostar);
		return novyPostar.getPostarId();
	}

	@Override
	public Integer createPostarWithList(String postarName, String listDesc) {
		Postar novyPostar = new Postar();
		novyPostar.setName(postarName);
		
		final List<PostovyList> listy = new ArrayList<PostovyList>();
		PostovyList novyList = new PostovyList();
		novyList.setAddress(listDesc);
		novyList.setPostar(novyPostar);
		listy.add(novyList);
		novyPostar.setLetters(listy);
		
		postarDao.persist(novyPostar);
		return novyPostar.getPostarId();
	}

	@Transactional(readOnly=false)
	@Override
	public PostarDto getPostar(final Integer postarId) {
		return postarAssembler.extractFromDomain(postarDao.getPostar(postarId));
	}

}
