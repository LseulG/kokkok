package com.kokkok.schedule.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kokkok.dto.ScheduleReviewDto;
import com.kokkok.dto.ScheduleReviewDtoList;
import com.kokkok.dto.ScheduleViewDto;
import com.kokkok.main.service.MainService;
import com.kokkok.schedule.service.ScheduleService;

@Controller
public class ScheduleController {

	@Autowired
	private ScheduleService scheduleService;
	@Autowired
	private MainService mainService;

	@RequestMapping(value = "/schedule/list.kok", method = RequestMethod.GET)
	public String scheduleList() {
		return "schedule/list";
	}

	@RequestMapping(value = "/schedule/write.kok", method = RequestMethod.GET)
	public String scheduleWrite() {
		return "schedule/write";
	}

	@RequestMapping(value = "/schedule/write.kok", method = RequestMethod.POST)
	public String scheduleWrite(@RequestParam Map<String, Object> map, HttpSession session, RedirectAttributes redirect,
			ScheduleReviewDtoList list) {
		// MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		// map.put("userid", memberDto.getUserid());
		map.put("userid", "sseul");
		// schedule insert
		// +) file upload
		int scheduleCnt = scheduleService.scheduleWrite(map);
		int reviewCnt = 0;
 
		// review insert
		for (int i = 0; i < list.getList().size(); i++) {
			System.out.println(i);
			Map<String, Object> reviewMap = new HashMap<>();

			reviewMap.put("userid", "sseul"); // id setting!!!!!!!!!!!!!!!!!!!!!!!

			reviewMap.put("bcode", list.getList().get(i).getBcode());
			reviewMap.put("subject", list.getList().get(i).getSubject());
			reviewMap.put("content", list.getList().get(i).getContent());
			reviewMap.put("location", list.getList().get(i).getLocation());
			reviewMap.put("lat", list.getList().get(i).getLat());
			reviewMap.put("lng", list.getList().get(i).getLng());
			reviewMap.put("address", list.getList().get(i).getAddress());
			reviewMap.put("simpleaddr", list.getList().get(i).getSimpleaddr());
			reviewMap.put("tripday", list.getList().get(i).getTripday());
			reviewMap.put("step", list.getList().get(i).getStep());

			reviewCnt = scheduleService.scheduleReviewWrite(reviewMap);
		}

		String path="";
		//ModelAndView mav = new ModelAndView();
		if (scheduleCnt != 0 && reviewCnt != 0) {
			// 글번호 가져가기 코딩해야함
			String sseq = scheduleService.selectSseq();
			ScheduleViewDto scheduleViewDto = scheduleService.scheduleView(sseq);
			List<ScheduleReviewDto> scheduleReviewDtoList = scheduleService.scheduleReviewView(sseq);

			if (scheduleViewDto != null) {
				scheduleViewDto.setContent(scheduleViewDto.getContent().replaceAll("\n", "<br>"));
				scheduleViewDto.setStartdate(scheduleViewDto.getStartdate().substring(0, 11).replaceAll("-", "/"));
				scheduleViewDto.setEnddate(scheduleViewDto.getEnddate().substring(0, 11).replaceAll("-", "/"));
				scheduleViewDto.setLogtime(scheduleViewDto.getLogtime().substring(0, 11).replaceAll("-", "/"));
				scheduleViewDto.setUpdatetime(scheduleViewDto.getUpdatetime().substring(0, 11).replaceAll("-", "/"));
			}
			System.out.println("과연!");
			//mav.addObject("scheduleArticle", scheduleViewDto);
			//mav.addObject("reviewArticle", scheduleReviewDtoList);

			//mav.setViewName("schedule/view");// 성공
			
			redirect.addAttribute("sseq",sseq);
			//redirect.addAttribute("seq",scheduleViewDto.getSeq());
		} else {
			System.out.println("일정 쓰기 실패");
			//mav.setViewName("schedule/list");// 실패
			path = "redirect:/schedule/list.kok";
		}
		//return mav;
		return path;
		/* 리뷰 등록하다 실패시 스케줄 등록 rollback 해야함 */
	}

	@RequestMapping(value = "/schedule/view.kok", method = RequestMethod.GET)
	public ModelAndView scheduleView(@RequestParam String sseq, String seq) {
		mainService.updateHit(seq);

		ScheduleViewDto scheduleViewDto = scheduleService.scheduleView(sseq);
		List<ScheduleReviewDto> scheduleReviewDtoList = scheduleService.scheduleReviewView(sseq);

		if (scheduleViewDto != null) {
			scheduleViewDto.setContent(scheduleViewDto.getContent().replaceAll("\n", "<br>"));
			scheduleViewDto.setStartdate(scheduleViewDto.getStartdate().substring(0, 11).replaceAll("-", "/"));
			scheduleViewDto.setEnddate(scheduleViewDto.getEnddate().substring(0, 11).replaceAll("-", "/"));
			scheduleViewDto.setLogtime(scheduleViewDto.getLogtime().substring(0, 11).replaceAll("-", "/"));
			scheduleViewDto.setUpdatetime(scheduleViewDto.getUpdatetime().substring(0, 11).replaceAll("-", "/"));
		}

		ModelAndView mav = new ModelAndView();
		mav.addObject("scheduleArticle", scheduleViewDto);
		mav.addObject("reviewArticle", scheduleReviewDtoList);
		mav.setViewName("schedule/view");
		return mav;
	}

	@RequestMapping(value = "/schedule/modify.kok", method = RequestMethod.GET)
	public ModelAndView scheduleModify(@RequestParam String sseq, String seq) {
		System.out.println("수정할 일정 sseq: " + sseq + ", seq:" + seq);

		ScheduleViewDto scheduleViewDto = scheduleService.scheduleView(sseq);
		List<ScheduleReviewDto> scheduleReviewDtoList = scheduleService.scheduleReviewView(sseq);

		if (scheduleViewDto != null) {
			scheduleViewDto.setContent(scheduleViewDto.getContent().replaceAll("\n", "<br>"));
			scheduleViewDto.setStartdate(scheduleViewDto.getStartdate().substring(0, 11).replaceAll("-", "/"));
			scheduleViewDto.setEnddate(scheduleViewDto.getEnddate().substring(0, 11).replaceAll("-", "/"));
			scheduleViewDto.setLogtime(scheduleViewDto.getLogtime().substring(0, 11).replaceAll("-", "/"));
			scheduleViewDto.setUpdatetime(scheduleViewDto.getUpdatetime().substring(0, 11).replaceAll("-", "/"));
		}

		ModelAndView mav = new ModelAndView();
		mav.addObject("scheduleArticle", scheduleViewDto);
		mav.addObject("reviewArticle", scheduleReviewDtoList);
		mav.setViewName("schedule/modify");
		return mav;
	}

	@RequestMapping(value = "/schedule/modifyUpdate.kok", method = RequestMethod.GET)
	public ModelAndView scheduleModifyUpdate(@RequestParam Map<String, Object> map, HttpSession session,
			ScheduleReviewDtoList list) {
		map.put("userid", "sseul");
		
		// 일정 수정 
		// +) file upload
		int scheduleCnt = scheduleService.scheduleUpdate(map);
		
		// 삭제된 리뷰들 삭제 (추천,찜,댓글 - location,스케줄보드 - 보드)
		String seq = "";
		int deleteCnt = scheduleService.scheduleReviewDelete(seq);
		
		// 수정,추가 된리뷰들 (if select from board seq=#{seq} = 1 : update / 없으면 : insert) 
		int reviewCnt = 0;
		for (int i = 0; i < list.getList().size(); i++) {
			Map<String, Object> reviewMap = new HashMap<>();
			
			reviewMap.put("userid", "sseul"); // id setting!!!!!!!!!!!!!!!!!!!!!!!
			
			reviewMap.put("bcode", list.getList().get(i).getBcode());
			reviewMap.put("subject", list.getList().get(i).getSubject());
			reviewMap.put("content", list.getList().get(i).getContent());
			reviewMap.put("location", list.getList().get(i).getLocation());
			reviewMap.put("lat", list.getList().get(i).getLat());
			reviewMap.put("lng", list.getList().get(i).getLng());
			reviewMap.put("address", list.getList().get(i).getAddress());
			reviewMap.put("simpleaddr", list.getList().get(i).getSimpleaddr());
			reviewMap.put("tripday", list.getList().get(i).getTripday());
			reviewMap.put("step", list.getList().get(i).getStep());
			
			reviewCnt = scheduleService.scheduleReviewUpdate(reviewMap);
		}
		
		// view로 이동
		ModelAndView mav = new ModelAndView();
		if (scheduleCnt != 0 && reviewCnt != 0 && deleteCnt != 0) {
			// 글번호 가져가기 코딩해야함
			String sseq = scheduleService.selectSseq();
			ScheduleViewDto scheduleViewDto = scheduleService.scheduleView(sseq);
			List<ScheduleReviewDto> scheduleReviewDtoList = scheduleService.scheduleReviewView(sseq);

			if (scheduleViewDto != null) {
				scheduleViewDto.setContent(scheduleViewDto.getContent().replaceAll("\n", "<br>"));
				scheduleViewDto.setStartdate(scheduleViewDto.getStartdate().substring(0, 11).replaceAll("-", "/"));
				scheduleViewDto.setEnddate(scheduleViewDto.getEnddate().substring(0, 11).replaceAll("-", "/"));
				scheduleViewDto.setLogtime(scheduleViewDto.getLogtime().substring(0, 11).replaceAll("-", "/"));
				scheduleViewDto.setUpdatetime(scheduleViewDto.getUpdatetime().substring(0, 11).replaceAll("-", "/"));
			}

			mav.addObject("scheduleArticle", scheduleViewDto);
			mav.addObject("reviewArticle", scheduleReviewDtoList);

			mav.setViewName("schedule/view");// 성공
		} else {
			System.out.println("일정 수정 실패");
			mav.setViewName("schedule/list");// 실패
		}
		return mav;
		/* 리뷰 등록하다 실패시 스케줄 등록 rollback 해야함 */
	}

	@RequestMapping(value = "/schedule/delete.kok", method = RequestMethod.GET)
	public ModelAndView scheduleDelete(@RequestParam String sseq, String seq) {

		scheduleService.scheduleReviewDelete(sseq);
		scheduleService.scheduleDelete(seq);

		System.out.println("삭제한 일정 sseq: " + sseq + ", seq:" + seq);
		ModelAndView mav = new ModelAndView("redirect:/schedule/list.kok");
		return mav;
	}
}
