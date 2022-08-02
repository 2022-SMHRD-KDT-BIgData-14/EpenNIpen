package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		System.out.println("[Logout]");
		
		// 로그아웃 = 로그인한 유저의 정보를 유지X
		HttpSession session = request.getSession();

		// -> 로그인정보가 들어있는 session을 삭제
		//  * removeAttribute : 해당 이름의 session만 삭제
		session.removeAttribute("info");
		//  * invalidate : 모든 session 삭제
//		session.invalidate();
		
		RequestDispatcher rd = request.getRequestDispatcher("./MainPage.jsp");
		rd.forward(request, response);
	
	
	}

}
