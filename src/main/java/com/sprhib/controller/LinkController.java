package com.sprhib.controller;

import com.sprhib.model.Odber;
import com.sprhib.service.EntityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LinkController {
    
        @Autowired
	private EntityService<Odber> odberService;
	
	@RequestMapping(value="/")
	public ModelAndView mainPage() {
		return new ModelAndView("home");
	}
	
	@RequestMapping(value="/index")
	public ModelAndView indexPage() {
		return new ModelAndView("home");
	}
        
//        @RequestMapping(value="/pripomienkovac")
//	public ModelAndView pripomienkovac() {
//		return new ModelAndView("darca/pripomienkovac");
//	}
        
        
        @RequestMapping(value="/pocitadlo")
	public ModelAndView pocutadloOdberov() {
            ModelAndView modelAndView = new ModelAndView("darca/pocitadlo_odberov");
            
		//int pocet = odberService.getKonkretny();
            Integer pocetJeho = odberService.getKonkretny();
                
		          
                
		String pocet_odberov = "Celkovy pocet odberov je " + pocetJeho;
		modelAndView.addObject("pocet_odberov", pocet_odberov);
		
		return modelAndView;
	}

}
