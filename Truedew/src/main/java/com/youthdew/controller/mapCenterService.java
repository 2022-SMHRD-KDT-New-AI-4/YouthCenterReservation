package com.youthdew.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.youthdew.model.CenterVO;
import com.youthdew.model.SpaceListDAO;
;


@WebServlet("/mapCenterService")
public class mapCenterService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
	
		SpaceListDAO dao= new SpaceListDAO();
		List<CenterVO> list = dao.SearchMap();
		System.out.println(list);
		
		RequestDispatcher rd = request.getRequestDispatcher("map.jsp");
		request.setAttribute("list", list);
		rd.forward(request, response);
		
	
	
	}

}
