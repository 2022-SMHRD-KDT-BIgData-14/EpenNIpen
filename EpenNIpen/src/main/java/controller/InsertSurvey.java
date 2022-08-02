package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.SurveyDAO;
import model.SurveyDTO;

public class InsertSurvey extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 System.out.println("[InsertSurvey]");
		  
		 request.setCharacterEncoding("UTF-8");
		 
		 // 데이터 받아오기 
		 String id = request.getParameter("id");
		 String modify_1 = request.getParameter("modify_1");

		
		 SurveyDTO dto = new SurveyDTO(id, modify_1);
		 
		 int row = new SurveyDAO().insertSurvey(dto);
		 
		 if (row == 1) { 
			 System.out.println("만족도조사 제출 성공"); 
		 } 
		 else {
			 System.out.println("만족도조사 제출 실패"); 
		 }
		 RequestDispatcher rd = request.getRequestDispatcher("./Mypage.jsp");
		 rd.forward(request, response);
		
	}

}
