package com.hrabkov.dao;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import com.hrabkov.model.PostovyList;
import com.hrabkov.service.PostarService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath*:context/applicationContext.xml" })
@TransactionConfiguration(transactionManager = "transactionManager", defaultRollback = false)
public class PostarDaoTest {
	
	@Autowired
	private PostarService postarService;
	
	@Transactional
	@Test
	public void testPostar() {
		final Integer postarId = postarService.createPostarWithList("nejaky postar", "nejaky list");		
		final List<PostovyList> lists = postarService.getLists(postarId);
		
		System.out.println(lists);
	}
}
