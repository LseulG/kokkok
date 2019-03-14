package com.kokkok.schedule.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kokkok.schedule.service.ScheduleListService;

@Controller
public class ScheduleListController {
	
	@Autowired
	private ScheduleListService scheduleListService;
	
	// ajax 이용함. 해당 페이지와 정렬순서를 받아서 서비스로직에서 처리한 후 JSON을 리턴
	@RequestMapping(value="/schedule/getlist.kok", produces = "application/text; charset=utf8", method=RequestMethod.GET)
//	public @ResponseBody String scheduleListJson() {
	public @ResponseBody String scheduleListJson(@RequestParam(value="pg") int pg, 
												 @RequestParam(value= "order") int order, 
												 @RequestParam(value= "listNumOfRows") int listNumOfRows, 
												 @RequestParam(value= "listType") int listType, 
												 @RequestParam(value= "thema") String thema,
												 @RequestParam(value= "minTerm") int minTerm, 
												 @RequestParam(value= "maxTerm") int maxTerm, 
												 @RequestParam(value= "searchWord") String searchWord) {
//		System.out.println("scheduleListJson()");		
		String schedulelist = scheduleListService.getScheduleListJson(pg, order, listNumOfRows, listType, thema, minTerm, maxTerm, searchWord);
//		System.out.println("controller: " + schedulelist);
		return schedulelist;
	}

}
