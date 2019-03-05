package com.kokkok.tip.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.tip.service.TipService;


@Controller
public class TipController {
	@Autowired
	private TipService tipService;
	
	@RequestMapping(value="/tips/list.kok",method=RequestMethod.GET)
	public ModelAndView scheduleList(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		tipService.tipList(mav);
		
		return mav;
	}
}
