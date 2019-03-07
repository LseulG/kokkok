package com.kokkok.main.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;



import com.kokkok.main.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;

}
