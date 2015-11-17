package com.oraclejdbc.web.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
//import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oraclejdbc.web.dao.Offers;
import com.oraclejdbc.web.service.OffersService;

import org.springframework.web.servlet.ModelAndView;

@Controller
public class OffersController {

	private OffersService offersService;
	
	@RequestMapping(value="/test", method=RequestMethod.GET)
	public String showTest(Model model, @RequestParam("id") String id) {
		System.out.println("Id is: " + id);
		return "home";
	}
	
	@RequestMapping("/offers")
	public String showOffers(Model model) {
		List<Offers> offers = offersService.getCurrent();
		model.addAttribute("offers", offers);
		return "offers";
	}

	@Autowired
	public void setOffersService(OffersService offersService) {
		this.offersService = offersService;
	}
	
	@RequestMapping("/createoffer")
	public String createOffer() {
		return "createoffer";
	}
	
	@RequestMapping(value= "/docreate", method=RequestMethod.POST)
	public String doCreate(Model model, @Valid Offers offer, BindingResult result) {
		if(result.hasErrors()){
			System.out.println("Form does not validate");
			List<ObjectError> errors = result.getAllErrors();
			for(ObjectError error : errors) {
				System.out.println(error);
			}
		} else {
			System.out.println("Form validated");
		}
		
		return "offercreated";
	}
	
	@RequestMapping(value="/getjson", method=RequestMethod.GET, headers="Accept=application/json")
	@ResponseBody
	public Map<String, Object> json() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("Quoi","CaWaka");
		return map;
	}
}
