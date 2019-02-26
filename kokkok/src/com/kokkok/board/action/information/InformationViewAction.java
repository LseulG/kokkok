package com.kokkok.board.action.information;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kokkok.action.Action;

public class InformationViewAction implements Action {
	
	private static Action informationViewAction;
	
	static {
		informationViewAction = new InformationViewAction();
	}
	
	private InformationViewAction() {}

	public static Action getInformationViewAction() {
		return informationViewAction;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		return "/information/view.jsp";
	}

}
