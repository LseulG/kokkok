package com.kokkok.tip.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.tip.dao.TipDao;

@Component
public class TipServiceImpl implements TipService {


	@Autowired
	private TipDao tipDao;
	
	@Override
	public void tipList(ModelAndView mav) {
		mav.setViewName("/tips/list");
	}

}
