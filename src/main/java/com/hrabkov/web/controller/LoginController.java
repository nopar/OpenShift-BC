package com.hrabkov.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
    @RequestMapping(value="/login.html")
    public String login(){
        return "login";
    }
     
    @RequestMapping(value="/logout.html")
    public String logout(){
        return "logout";
    }

    @RequestMapping(value="/denied.html")
    public String denied(){
        return "denied";
    }
}
