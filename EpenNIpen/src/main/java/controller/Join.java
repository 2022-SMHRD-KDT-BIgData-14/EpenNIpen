package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberDTO;
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[Join]");
		
		// 1. post방식 디코딩
		request.setCharacterEncoding("UTF-8");
		
		// 2. 데이터 받아오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		
		System.out.println("id : " + id);
		System.out.println("pw : " + pw);
		System.out.println("name : " + name);
		System.out.println("tel : " + tel);
		
		// 3. DTO로 묶기
		MemberDTO dto = new MemberDTO(id, pw, name, tel);
		
		// 4. join메소드 호출
		int row = new MemberDAO().join(dto);
		
		// 5. 실행결과 확인하기
		String moveURL=null;
		if(row == 1) {
			System.out.println("회원가입 성공");
			moveURL="./MainPage.jsp";
		}else {
			System.out.println("회원가입 실패");
			// Main.jsp
			moveURL="./MainPage.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(moveURL);
		rd.forward(request, response);
	
	
	}

}
