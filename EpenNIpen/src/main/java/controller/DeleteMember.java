
package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;

public class DeleteMember extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[DeleteMember]");

		// 데이터 받아오기
		String id = request.getParameter("id");

		// deleteMember 메소드 호출
		int row = new MemberDAO().deleteMember(id);

		if (row == 1) {
			System.out.println("회원정보 삭제 성공");
		} else {
			System.out.println("회원정보 삭제 실패");
		}

		RequestDispatcher rd = request.getRequestDispatcher("./ShowMember.jsp");
		rd.forward(request, response);

	}

}