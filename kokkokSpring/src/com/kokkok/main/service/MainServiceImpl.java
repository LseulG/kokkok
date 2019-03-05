package com.kokkok.main.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.main.dao.MainDao;

@Component
public class MainServiceImpl implements MainService{
	
	@Autowired
	private MainDao maindao;

}
