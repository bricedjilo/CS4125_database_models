package com.oraclejdbc.web.controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class HomeController {

	@RequestMapping("/")
	public String showHome() {
		return "home";
	}
	
	
}
