package com.wjw.test.proj.ssm.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	private Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping(method=RequestMethod.GET)
	public String toLogin(){
		return "login";
	}
	
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String toIndex(){
		return "index";
	}
	
	
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(@RequestParam(value="username")String username,@RequestParam(value="password")String password){
		if("admin".equals(username)&&"admin".equals(password)){
			logger.info("=========登陆成功===========");
		}else{
			logger.info("=========登陆失败===========");
		}
		return "login";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(String username,String password,Model model){
		if("admin".equals(username)&&"admin".equals(password)){
			model.addAttribute("username", username);
			model.addAttribute("password", password);
			return "index";
		}
		return "login";
	}
}
