package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.QuestionDAO;
import model.QuestionDTO;
import model.SurveyDTO;

public class InsertQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[InsertQuestion]");

		request.setCharacterEncoding("UTF-8");

		// 데이터 받아오기
		String id = request.getParameter("id");
		String answer = request.getParameter("answer");

		QuestionDTO dto = new QuestionDTO(id, answer); 

		int row = new QuestionDAO().insertQuestion(dto);

		if (row == 1) {
			System.out.println("드림펜찾기 제출 성공");
		} else {
			System.out.println("드림펜찾기 제출 실패");
		}
		RequestDispatcher rd = request.getRequestDispatcher("./Mypage.jsp");
		rd.forward(request, response);

	}

}
