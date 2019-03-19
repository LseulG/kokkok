package com.kokkok.tips.controller;

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

import com.kokkok.dto.TipsDto;
import com.kokkok.main.service.MainService;

import com.kokkok.tips.service.TipsService;


@Controller
@SessionAttributes(value="userInfo")
public class TipsController {
	
	@Autowired
	private TipsService tipsService;
	@Autowired
	private MainService mainService;
	
	@RequestMapping(value="/tips/list.kok", method=RequestMethod.GET)
	public String tipsList() {
		return "tips/list";
	}
	
	@RequestMapping(value="/tips/setList.kok",method=RequestMethod.POST ,headers= {"Content-type=application/json"})	
	public @ResponseBody Map<String,Object> tipsList(@RequestBody Map<String,Object> map) {	

		List<TipsDto> tipsDtoList = tipsService.tipsList(map);
		map.put("tipsList", tipsDtoList);
		
		int getTipsListTotalCount = tipsService.getTipsListTotalCount(map);
		map.put("totCount", getTipsListTotalCount);
//				System.out.println(getTipsListTotalCount);
		return map; 
		
	}

	@RequestMapping(value="/tips/write.kok", method=RequestMethod.GET)
	public String tipsWrite () {
		return "tips/write";
	}
	
	@RequestMapping(value="/tips/write.kok",method=RequestMethod.POST)
	public ModelAndView tipsWrite(@RequestParam Map<String, Object> map, HttpSession session) {
		
		//MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		//map.put("userid", memberDto.getUserid());
		map.put("userid", "lee");
		
		int seq = mainService.getNextSeq();			
		map.put("seq",seq);
		
		int cnt = tipsService.tipsWrite(map);
		String path = "tips/list";		
		ModelAndView mav = new ModelAndView();	
		if(cnt != 0) {
			
			TipsDto tipsDto = tipsService.tipsView(seq+"");	
			mav.addObject("article",tipsDto);			
			path = "tips/view";
		}		
		mav.setViewName(path);
		return mav;
	}
	
	
	@RequestMapping(value="/tips/view.kok",method=RequestMethod.GET)
	public ModelAndView tipsView(@RequestParam String seq) {
		mainService.updateHit(seq);
		
		/*System.out.println("tipsView : " + seq);*/
		TipsDto tipsDto = tipsService.tipsView(seq);
		/*System.out.println("글번호찍히나" + tipsDto.getSeq());*/
		ModelAndView mav = new ModelAndView();			
		mav.addObject("article",tipsDto);
		mav.setViewName("tips/view");
		return mav;
	}
	
	@RequestMapping(value="/tips/modify.kok", method=RequestMethod.GET)
	public ModelAndView tipsModify(@RequestParam String seq) {
		/* System.out.println("tipsModify : " + seq); */
		TipsDto tipsDto = tipsService.tipsView(seq);
		/* System.out.println("글번호찍히나" + tipsDto.getSeq()); */
		ModelAndView mav = new ModelAndView();			
		mav.addObject("article",tipsDto);
		mav.setViewName("tips/modify");
		return mav;
	}
	
	@RequestMapping(value="/tips/update.kok",method=RequestMethod.POST)
	public ModelAndView tipsUpdate(@RequestParam Map<String, Object> map) {
		/* System.out.println("tipsUpdate : " + seq); */
		int cnt = tipsService.tipsUpdate(map);	
		String seq = (String)map.get("seq");		
		String path = "tips/list";
		ModelAndView mav = new ModelAndView();	
		if(cnt != 0) {	
			TipsDto tipsDto = tipsService.tipsView(seq);			
			mav.addObject("article",tipsDto);			
			path = "tips/view";
		}
		mav.setViewName(path);
		return mav;
	}
	
	@RequestMapping(value="/tips/delete.kok",method=RequestMethod.GET)
	public ModelAndView tipsDelete(@RequestParam Map<String, Object> map) {
		
		int cnt = tipsService.tipsDelete(map);
		ModelAndView mav = new ModelAndView();	
		
		String path = "";
		if(cnt != 0) {//삭제완료
			path = "tips/list"; 
			List<TipsDto> tipsDtoList = tipsService.tipsList(map);			
			mav.addObject("tipsList",tipsDtoList);
		}else {//삭제실패
			String seq = (String)map.get("seq");
			TipsDto tipsDto = tipsService.tipsView(seq);			
			mav.addObject("article",tipsDto);
			path = "tips/list"; 
		}		
		mav.setViewName(path);
		return mav;
	}
	
	
	
}
