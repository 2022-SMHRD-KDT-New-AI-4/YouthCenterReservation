package com.youthdew.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.youthdew.model.reservationInfoDAO;
import com.youthdew.model.reservationInfoVO;

/**
 * Servlet implementation class reservationSchedule
 */
@WebServlet("/reservationSchedule")
public class reservationSchedule extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int shared_space_seq =Integer.parseInt(request.getParameter("shared_space_seq"));
		String reserv_date = request.getParameter("reserv_date");
		
		reservationInfoVO vo = new reservationInfoVO(shared_space_seq, reserv_date);
		reservationInfoDAO dao = new reservationInfoDAO();
		 ArrayList<reservationInfoVO> list = dao.selectReserved_time(vo);
		 
		
	
		 Gson gson = new Gson();
		 String result = gson.toJson(list);
		 System.out.println("test : " + result);
		
		response.setCharacterEncoding("UTF-8");
		response.getWriter().print(result);
		
	}

}
