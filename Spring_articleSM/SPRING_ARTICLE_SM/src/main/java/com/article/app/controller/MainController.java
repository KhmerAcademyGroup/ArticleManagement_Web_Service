package com.article.app.controller;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/")
public class MainController {

	/*@Autowired
	@Qualifier("studentServiceJDBC")*/
	
	@RequestMapping(value = {"/","/home","/index"} )
	public String homePage(ModelMap model) throws SQLException{
		model.addAttribute("message", "Spring");
		return "home";
	}
	
	
	
		
		
	
}
