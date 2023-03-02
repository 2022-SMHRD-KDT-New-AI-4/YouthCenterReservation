package com.youthdew.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.youthdew.model.MarkVO;
import com.youthdew.model.MemberDAO;


@WebServlet("/insertMarkService")
public class insertMarkService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String center_id = request.getParameter("center_id");
		String user_id = request.getParameter("user_id");
		String local_do = request.getParameter("local_do");
		
//		System.out.println(center_id);
//		System.out.println(user_id);
		
		MemberDAO dao = new MemberDAO();
		MarkVO vo = new MarkVO(center_id, user_id);
		
		MarkVO mvo = dao.overlapMark(vo);
		
		if (mvo==null) {
			int cnt = dao.insertMark(vo);
//			if(cnt>0) {
//				System.out.println("즐겨찾기 성공");
//			} else {
//				System.out.println("즐겨찾기 실패");
//			}
			
		} else {
			int cnt = dao.deleteMark(vo);
//			if(cnt>0) {
//				System.out.println("즐겨찾기 삭제");
//			} else {
//				System.out.println("즐겨찾기 삭제 실패");
//			}
		}
		
		String encValue = URLEncoder.encode(local_do, "UTF-8");
		response.sendRedirect("CenterListService?local_do="+encValue);
		
//		System.out.println(local_do);
	
	}

}
