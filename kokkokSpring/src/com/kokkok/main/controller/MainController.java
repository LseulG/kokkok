package com.kokkok.main.controller;

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
import org.springframework.web.servlet.ModelAndView;

import com.kokkok.dto.CommentsDto;
import com.kokkok.dto.ReviewDto;
import com.kokkok.main.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	
	//찜 하기
	@RequestMapping(value="/registerWish.kok",method=RequestMethod.POST, headers= {"Content-type=application/json"})
	public @ResponseBody Map<String,Object> registerWish(@RequestBody Map<String, Object> map) {		
		int check = mainService.registerWish(map);
		int count = mainService.countWish(map);		
		map.put("wishCheck", check);
		map.put("wishCount", count);
		return map;
	}	
	
	@RequestMapping(value="/checkWish.kok",method=RequestMethod.POST, headers= {"Content-type=application/json"})	
	public @ResponseBody Map<String,Object> checkWish(@RequestBody Map<String, Object> map) {		
		int check = mainService.checkWish(map);		
		int count = mainService.countWish(map);		
		map.put("wishCheck", check);			
		map.put("wishCount", count);
		return map;
	}
	
	
	//추천	
	@RequestMapping(value="/registerRecommend.kok",method=RequestMethod.POST, headers= {"Content-type=application/json"})
	public @ResponseBody Map<String,Object> registerRecommend(@RequestBody Map<String, Object> map) {		
		int check = mainService.registerRecommend(map);
		int count = mainService.countRecommend(map);		
		map.put("recommendCheck", check);
		map.put("recommendCount", count);
		return map;
	}	
	
	@RequestMapping(value="/checkRecommend.kok",method=RequestMethod.POST, headers= {"Content-type=application/json"})
	public @ResponseBody Map<String,Object> checkRecommend(@RequestBody Map<String, Object> map) {		
		int check = mainService.checkRecommend(map);		
		int count = mainService.countRecommend(map);		
		map.put("recommendCheck", check);			
		map.put("recommendCount", count);
		return map;
	}	
	
	
	
	
	//댓글
	@RequestMapping(value="/commentsWrite.kok",method=RequestMethod.POST, headers= {"Content-type=application/json"})	
	public @ResponseBody Map<String,Object> commentsWrite(@RequestBody CommentsDto commentsDto, HttpSession session) {		
		
		//MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
//		if(memberDto != null) {
//			commentsDto.setUserid(memberDto.getUserid());
//			int cnt = mainService.writeComments(commentsDto);
//		}
		
		
		commentsDto.setUserid("sangjae");
		int cnt = mainService.writeComments(commentsDto);
		String seq = Integer.toString(commentsDto.getSeq());
		List<CommentsDto> commentsList = mainService.commentsList(seq);
		Map<String,Object> map = new HashMap<>();
		map.put("commentsList", commentsList);	
		return map;
	}
	
	@RequestMapping(value="/commentsList.kok", method=RequestMethod.POST, headers= {"Content-type=application/json"})
	public @ResponseBody Map<String,Object> commentsList(@RequestBody CommentsDto commentsDto) {
		String seq = Integer.toString(commentsDto.getSeq()); 
		List<CommentsDto> commentsList = mainService.commentsList(seq);		
		Map<String,Object> map = new HashMap<>();
		map.put("commentsList", commentsList);
		return map;
	}
	
	@RequestMapping(value="/commentsDelete.kok", method=RequestMethod.POST, headers= {"Content-type=application/json"})
	public @ResponseBody Map<String,Object> commentsDelete(@RequestBody Map<String, Object> map) {
		
		String cseq = (String)map.get("cseq"); 
		String seq = (String)map.get("seq"); 		
		int cnt = mainService.commentsDelete(cseq);		
		List<CommentsDto> commentsList = mainService.commentsList(seq);		
		map.put("commentsList", commentsList);
		return map;
	}
	
	@RequestMapping(value="/commentsUpdate.kok", method=RequestMethod.POST, headers= {"Content-type=application/json"})
	public @ResponseBody Map<String,Object> commentsUpdate(@RequestBody Map<String, Object> map) {	
		
		String seq = (String)map.get("seq");
		int cnt = mainService.commentsUpdate(map);
		
		List<CommentsDto> commentsList = mainService.commentsList(seq);		
		map.put("commentsList", commentsList);
		return map;
	}
	
	
}
