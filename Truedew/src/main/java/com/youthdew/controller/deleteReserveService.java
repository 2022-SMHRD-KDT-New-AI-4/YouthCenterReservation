package com.youthdew.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.youthdew.model.reservationInfoDAO;

@WebServlet("/deleteReserveService")
public class deleteReserveService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int reserv_seq = Integer.parseInt(request.getParameter("reserv_seq"));
		System.out.println(reserv_seq);

		reservationInfoDAO dao = new reservationInfoDAO();
		int cnt = dao.deleteReserve(reserv_seq);

		if (cnt > 0) {
			System.out.println("예약 삭제 성공");
		} else {
			System.out.println("예약 삭제 실패");
		}
		response.sendRedirect("myReservation.jsp");

	}

}
