package com.kokkok.main.service;

import org.springframework.web.servlet.ModelAndView;

public interface MainService {

	
	
//	public void registerWish(ModelAndView mav);
	public int registerWish(ModelAndView mav);
	public int checkWish(ModelAndView mav);
	public int countWish(ModelAndView mav);
	public int getNextSeq();
	
}
