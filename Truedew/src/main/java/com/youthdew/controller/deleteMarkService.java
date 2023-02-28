package com.youthdew.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.youthdew.model.MarkVO;
import com.youthdew.model.MemberDAO;

@WebServlet("/deleteMarkService")
public class deleteMarkService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String center_id = request.getParameter("center_id");
		String user_id = request.getParameter("user_id");
		
		System.out.println(center_id);
		System.out.println(user_id);
		MemberDAO dao = new MemberDAO();
		MarkVO vo = new MarkVO(center_id, user_id);
		int cnt = dao.deleteMark(vo);
		
		
		if(cnt>0) {
			System.out.println("즐겨찾기 삭제 성공");
		} else {
			System.out.println("즐겨찾기 삭제 실패");
		}
		response.sendRedirect("bookmark.jsp");
		
		
	
	
	}

}
