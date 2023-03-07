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
import com.youthdew.model.FacSearchVO;
import com.youthdew.model.SpaceListDAO;

@WebServlet("/FacService")
public class FacService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String[] fac_code = request.getParameterValues("fac_code");
		String local_do = request.getParameter("local_do");
		int cnt = fac_code.length;
		
		String [] fac = new String[4];
		
		SpaceListDAO dao= new SpaceListDAO();
		CenterVO vo = new CenterVO(local_do, fac_code[0]);
		
		
		System.out.println(local_do);
		System.err.println(cnt);
		

		
		for(int i=0;i<fac.length;i++) {
			if(i<fac_code.length) {
				
				fac[i]=fac_code[i];
			}else {
				fac[i]="hi";
			}
			
		}
		FacSearchVO vo2 = new FacSearchVO(fac[0], fac[1], fac[2], fac[3], cnt,local_do);
		

		
		ArrayList<CenterVO> list= (ArrayList<CenterVO>)dao.Selectfac2(vo2);
		
//		for(int i=0;i<list.size();i++) {
//			System.out.println(list.get(i).getCenter_name());
//		}
//		
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("CenterList.jsp");
		rd.forward(request, response);
		
		
	
	
	}

}
