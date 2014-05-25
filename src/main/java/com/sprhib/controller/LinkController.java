package com.sprhib.controller;

import java.security.Principal;
import com.sprhib.model.Odber;
import com.sprhib.service.EntityService;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LinkController {

    @Autowired
    private EntityService<Odber> odberService;

    @RequestMapping(value = "/")
    public ModelAndView mainPage() {
        
        
        return new ModelAndView("non_logged_home");
    }

    @RequestMapping(value = "/index")
    public ModelAndView indexPage() {
        
        return new ModelAndView("non_logged_home");
    }
    
    
    @RequestMapping(value = "/login")
    public ModelAndView loginPage() {
             
        return new ModelAndView("login");
    }
    
    
    @RequestMapping(value = "/loginfailed", method = RequestMethod.GET)
    public String loginerror(ModelMap model, HttpServletRequest request) {
        System.out.println(request.getServletPath());

        model.addAttribute("error", "true");
        return "login";

    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(ModelMap model) {

        return "non_logged_home";

    }   
    
    
    
    // for 403 access denied page
    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public ModelAndView accesssDenied(Principal user) {

        ModelAndView model = new ModelAndView();

        if (user != null) {
            model.addObject("msg", "Hi " + user.getName()
                    + ", you do not have permission to access this page!");
        } else {
            model.addObject("msg",
                    "You do not have permission to access this page!");
        }

        model.setViewName("403");
        return model;

    }


        

    @RequestMapping(value = "/pocitadlo")
    public ModelAndView pocutadloOdberov() {
        ModelAndView modelAndView = new ModelAndView("darca/pocitadlo_odberov");

        Integer pocetJeho = odberService.getKonkretny();

        String pocet_odberov = "Celkovy pocet odberov je " + pocetJeho;
        modelAndView.addObject("pocet_odberov", pocet_odberov);

        return modelAndView;
    }

}
