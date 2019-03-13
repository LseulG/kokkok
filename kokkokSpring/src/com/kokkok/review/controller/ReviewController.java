package com.kokkok.review.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.dto.ReviewDto;
import com.kokkok.main.service.MainService;
import com.kokkok.review.service.ReviewService;


@Controller
@SessionAttributes(value="userInfo")
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	@Autowired
	private MainService mainService;
	
	@RequestMapping(value="/review/list.kok", method=RequestMethod.GET)
	public String reviewList () {
		return "review/list";
	}
	
	@RequestMapping(value="/review/setList.kok",method=RequestMethod.POST ,headers= {"Content-type=application/json"})	
	public @ResponseBody Map<String,Object> reviewList(@RequestBody Map<String,Object> map) {		
		List<ReviewDto> reviewDtoList = reviewService.reviewList(map);
		map.put("reviewList", reviewDtoList);
		return map; 
	}


	@RequestMapping(value="/review/write.kok",method=RequestMethod.POST)
	public ModelAndView reviewWrite(@RequestParam Map<String, Object> map, HttpSession session) {
		
		//MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		//map.put("userid", memberDto.getUserid());
		map.put("userid", "sangjaeoh");
		
		int seq = mainService.getNextSeq();			
		map.put("seq",seq);
		
		int cnt = reviewService.reviewWrite(map);
		String path = "review/list";
		
		ModelAndView mav = new ModelAndView();	
		if(cnt != 0) {
			ReviewDto reviewDto = reviewService.reviewView(seq+"");			
			mav.addObject("article",reviewDto);			
			path = "review/view";
		}		
		mav.setViewName(path);
		return mav;
	}
	
	
	@RequestMapping(value="/review/view.kok",method=RequestMethod.GET)
	public ModelAndView reviewView(@RequestParam String seq) {
		
		ReviewDto reviewDto = reviewService.reviewView(seq);		
		ModelAndView mav = new ModelAndView();			
		mav.addObject("article",reviewDto);
		mav.setViewName("review/view");
		return mav;
	}
	
	@RequestMapping(value="/review/update.kok",method=RequestMethod.POST)
	public ModelAndView reviewUpdate(@RequestParam Map<String, Object> map) {
		
		int cnt = reviewService.reviewUpdate(map);	
		String seq = (String)map.get("seq");		
		String path = "review/list";
		ModelAndView mav = new ModelAndView();	
		if(cnt != 0) {	
			ReviewDto reviewDto = reviewService.reviewView(seq);			
			mav.addObject("article",reviewDto);			
			path = "review/view";
		}
		mav.setViewName(path);
		return mav;
	}
	
	@RequestMapping(value="/review/delete.kok",method=RequestMethod.POST)
	public ModelAndView reviewDelete(@RequestParam Map<String, Object> map) {
		
		int cnt = reviewService.reviewDelete(map);
		ModelAndView mav = new ModelAndView();	
		
		String path = "";
		if(cnt != 0) {//삭제완료
			path = "review/list"; 
			List<ReviewDto> reviewDtoList = reviewService.reviewList(map);			
			mav.addObject("reviewList",reviewDtoList);
		}else {//삭제실패
			String seq = (String)map.get("seq");
			ReviewDto reviewDto = reviewService.reviewView(seq);			
			mav.addObject("article",reviewDto);
			path = "review/list"; 
		}		
		mav.setViewName(path);
		return mav;
	}
	
	
	
	
}
