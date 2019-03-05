package com.kokkok.review.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.review.service.ReviewService;


@Controller
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value="/review/list.kok",method=RequestMethod.GET)
	public ModelAndView reviewList(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("request",request);
		reviewService.reviewList(mav);
		return mav;
	}
}
