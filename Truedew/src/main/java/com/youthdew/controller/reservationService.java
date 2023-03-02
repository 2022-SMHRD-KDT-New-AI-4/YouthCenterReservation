package com.youthdew.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.youthdew.model.MemberVO;
import com.youthdew.model.reservationInfoDAO;
import com.youthdew.model.reservationInfoVO;


@WebServlet("/reservationService")
public class reservationService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("UTF-8");
		
		String[] time = request.getParameterValues("checkbox_solid_border");
		String reserv_date= request.getParameter("reserv_date");
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO)session.getAttribute("loginM");
		String user_id=vo.getUser_id();
		int shared_space_seq = Integer.parseInt(request.getParameter("shared_space_seq"));
		
		StringBuilder usetime = new StringBuilder();
		for(int i=0;i<time.length;i++) {
			usetime.append(time[i]);
			if(i!=time.length-1) {
				usetime.append('|');
			}
		}
		
		
		String use_time = usetime.toString();
		
		reservationInfoVO vo2 = new reservationInfoVO(user_id, shared_space_seq, reserv_date, use_time);
		reservationInfoDAO dao = new reservationInfoDAO();
		int cnt = dao.insertreservation(vo2);
		
		if(cnt>0) {
			System.out.println("예약성공");
			response.sendRedirect("myReservation.jsp");
			
			
		}else {
			System.out.println("예약실패....");
			
		}
		
		
		
	}

}