package com.hrabkov.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hrabkov.dto.PostarDto;
import com.hrabkov.service.PostarService;

@Controller
public class PostarController {

	@Autowired
	private PostarService postarService; 
	
	@RequestMapping(value = "/index")
	public ModelAndView getPostar() {

		PostarDto postar = postarService.getPostar(13);
		
		final ModelAndView model = new ModelAndView("index");
		model.addObject("postar", postar);
		return model;
	}
}
