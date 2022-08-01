package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.SearchDAO;
import model.SearchDTO;
import model.TableDTO;

public class Search extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. post방식 디코딩
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		// 2. 데이터 받아오기
		String search = request.getParameter("search");
		
		System.out.println("검색단어:  " +  search);
		
		// 3. SearchDTO로 묶기
		SearchDTO dto = new SearchDTO(search);
		
		// 3. detailSearch 메소드 호출
		ArrayList<TableDTO> search_list = new SearchDAO().detailSearch(dto);

		// 4. 확인
		if(search_list != null) {
			System.out.println("검색 성공");		
			request.setAttribute("search_list", search_list);
		}else {
			System.out.println("검색 실패");
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("./ShowSearch.jsp");
		rd.forward(request, response);
		
		
		
	}

}
