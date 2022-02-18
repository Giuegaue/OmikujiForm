package com.zach.omikujiForm.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class mainController {
	
	@RequestMapping("/")
    public String index() {
		
        return "index.jsp";
	}
	
	@RequestMapping(value="/submit", method=RequestMethod.POST)
	public String submit(
		@RequestParam(value="years", required = false) Integer years,
		@RequestParam(value="city", required = false) String city,
		@RequestParam(value="person", required = false) String person,
		@RequestParam(value="activity", required = false) String activity,
		@RequestParam(value="creature", required = false) String creature,
		@RequestParam(value="comment", required = false) String comment, 
		HttpSession session
		) {
		session.setAttribute("years", years);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("activity", activity);
		session.setAttribute("creature", creature);
		session.setAttribute("comment", comment);
		return "redirect:/omikuji/show";
		
	}
	
	@RequestMapping("/omikuji/show")
	public String show(HttpSession s, Model model) {
		return "view.jsp";	
	}	
	
}