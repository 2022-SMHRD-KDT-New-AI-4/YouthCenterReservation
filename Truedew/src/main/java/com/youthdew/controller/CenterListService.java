package com.youthdew.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.youthdew.model.CenterVO;
import com.youthdew.model.SpaceListDAO;
;


@WebServlet("/CenterListService")
public class CenterListService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		String local_do = request.getParameter("local_do");

		CenterVO vo = new CenterVO(local_do);
		SpaceListDAO dao= new SpaceListDAO();

		ArrayList<CenterVO> list= (ArrayList<CenterVO>)dao.Searchcenter(vo);
		

		  for (int i = 0; i < list.size();i++) {
		  System.out.println(list.get(i).getCenter_name());
		  System.out.println(list.get(i).getCenter_pic());
		  
		  }
		 
		request.setAttribute("local_do", local_do);
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("CenterList.jsp");
		rd.forward(request, response);
	
	
	}

}
