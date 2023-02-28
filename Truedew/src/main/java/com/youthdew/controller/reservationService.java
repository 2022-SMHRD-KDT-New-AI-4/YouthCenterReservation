package com.youthdew.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/reservationService")
public class reservationService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String[] time = request.getParameterValues("checkbox_solid_border");
		String space_name= request.getParameter("reserv_date");
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id");
		
		for(int i =0;i<time.length;i++) {
			System.out.println(time[i]);
		}
		System.out.println(space_name);
		System.out.println(user_id);
		
	}

}
