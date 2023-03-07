package com.youthdew.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.youthdew.model.ReviewDAO;
import com.youthdew.model.ReviewVO;

@WebServlet("/ReviewService")
public class ReviewService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		
		String user_id = request.getParameter("user_id");
		int shared_space_seq = Integer.parseInt(request.getParameter("shared_space_seq"));
		String content = request.getParameter("content");
		int reviewStar = Integer.parseInt(request.getParameter("reviewStar"));
		int reserv_seq = Integer.parseInt(request.getParameter("reserv_seq"));
		
		ReviewVO vo = new ReviewVO(user_id,shared_space_seq,content,reviewStar,reserv_seq);
		
		ReviewDAO dao = new ReviewDAO();
//		System.out.println(user_id);
//		System.out.println(shared_space_seq);
//		System.out.println(content);
//		System.out.println(reviewStar);
		
		
		  int cnt = dao.insertReview(vo);
		  
		  if(cnt > 0) { System.out.println("Review 전송 성공!"); } else {
		  System.out.println("Review 전송 실패..."); }
		
		  response.sendRedirect("myReservation.jsp");
		
	}

}
