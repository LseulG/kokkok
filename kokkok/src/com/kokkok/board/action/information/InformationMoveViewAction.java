package com.kokkok.board.action.information;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kokkok.action.Action;

public class InformationMoveViewAction implements Action {
	
	private static Action informationMoveViewAction;
	
	static {
		informationMoveViewAction = new InformationMoveViewAction();
	}

	private InformationMoveViewAction() {}
	
	public static Action getInformationMoveViewAction() {
		return informationMoveViewAction;
	}
	
	// 구태여 이 함수를 호출해서 사용할 필요는 없어보이지만 공부차원에서 해보자
	@Override	
	public String execute(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		String path = "/information/view.jsp";
		String contentTypeId = request.getParameter("contentTypeId");
		String contentId = request.getParameter("contentId");
		
		path += "?contentTypeId=" + contentTypeId + "&contentId=" + contentId;
		
		return path;
	}

}
