package com.kokkok.board.action.information;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kokkok.action.Action;

public class InformationListAction implements Action {
	
	private static Action informationListAction;
	
	static {
		informationListAction = new InformationListAction();
	}
	
	private InformationListAction() {}

	public static Action getInformationListAction() {
		return informationListAction;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		return "/information/list.jsp";
	}

}
