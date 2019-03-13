package com.kokkok.main.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.main.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	@RequestMapping(value="/registerWish.kok",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> registerWish(HttpServletRequest request, HttpServletResponse response) {		
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		int check = mainService.registerWish(mav);
		int count = mainService.countWish(mav);
		
		Map<String,Object> map = new HashMap<>();
		map.put("wishCheck", check);
		map.put("wishCount", count);	
		return map;
	}
	
	
	@RequestMapping(value="/checkWish.kok",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> checkWish(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		int check = mainService.checkWish(mav);
		int count = mainService.countWish(mav);
		
		Map<String,Object> map = new HashMap<>();
		map.put("wishCheck", check);			
		map.put("wishCount", count);
		return map;
	}
	
	
	
	
	
	
}
