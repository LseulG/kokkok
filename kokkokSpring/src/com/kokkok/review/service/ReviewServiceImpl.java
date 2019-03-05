package com.kokkok.review.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.review.dao.ReviewDao;


@Component
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewDao reviewDao;

	@Override
	public void reviewList(ModelAndView mav) {
		mav.setViewName("/review/list");	
		
	}

}
