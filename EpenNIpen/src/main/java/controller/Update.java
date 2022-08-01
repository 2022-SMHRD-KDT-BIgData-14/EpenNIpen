package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;

public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[Update]");
		
		// 1. 디코딩
		request.setCharacterEncoding("UTF-8");
		
		// 2. 데이터받아오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		
		// 3. DTO로 묶기
		MemberDTO dto = new MemberDTO(id, pw, name, tel);
		
		// 4. update메소드 호출
		int row = new MemberDAO().update(dto);
		
		// 5. 실행결과 확인 및 페이지 이동
		if(row == 1) {
			System.out.println("회원정보 수정 성공");
			
			// session에 있는 info정보도 업데이트
			HttpSession session = request.getSession();
			session.setAttribute("info", dto);
		}else {
			System.out.println("회원정보 수정 실패");
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("./MainPage.jsp");
		rd.forward(request, response);
	
	
	}

}
