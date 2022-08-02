package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.FilterDAO;
import model.FilterDTO;
import model.TableDTO;
public class Filter extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String ageArr = request.getParameter("ageArr");
		
		Gson gson = new Gson();
		
		FilterDTO test = gson.fromJson(ageArr, FilterDTO.class);
		
		// 제품분류
		String pencil = test.getPencil();
		String sharp = test.getSharp();
		String pen = test.getPen();
		String highlighter = test.getHighlighter();
		String fountainPen = test.getFountainPen();
		
		// 용도
		String write = test.getWrite();
		String drawing = test.getDrawing();
		String art = test.getArt();
		
		// 진하기
		String B2 = test.getB2();
		String B4 = test.getB4();
		String B6 = test.getB6();
		String H = test.getH();
		String HB = test.getHB();
		
		// 형태
		String cover = test.getCover();
		String knock = test.getKnock();
		String twist = test.getTwist();
		
		// 잉크종류
		String oil = test.getOil();
		String water = test.getWater();
		String gel = test.getGel();
		
		// 두께별
		String mm05 = test.getMm05();
		String mm07 = test.getMm07();
		String mm10 = test.getMm10();
		String mm105 = test.getMm105();
		
		// 펜촉굵기
		String EF = test.getEF();
		String F = test.getF();
		String M = test.getM();
		String B = test.getB();
		
		// 잉크충전방식
		String cartridge = test.getCartridge();
		String c_c = test.getCc();
		String plunger = test.getPlunger();
		
		// 그립감
		String rubber = test.getRubber();
		String metal = test.getMetal();
		String plastic = test.getPlastic();
		String timber = test.getTimber();
		String aluminum = test.getAluminum();
		
		
		System.out.println(test.getOil());
		
		System.out.println("ageArr:  " + ageArr);
		System.out.println("연필:  " + pencil);
		System.out.println("샤프:  " + sharp);
		System.out.println("볼펜:  " + pen);
		System.out.println("형광펜:  " + highlighter);
		System.out.println("만년필:  " + fountainPen);
		System.out.println("필기용:  " + write);
		System.out.println("제도용:  " + drawing);
		System.out.println("미술용:  " + art);
		System.out.println("2B:  " + B2);
		System.out.println("4B:  " + B4);
		System.out.println("6B:  " + B6);
		System.out.println("H:  " + H);
		System.out.println("HB:  " + HB);
		System.out.println("뚜껑:  " + cover);
		System.out.println("노크:  " + knock);
		System.out.println("트위스트:  " + twist);
		System.out.println("유성:  " + oil);
		System.out.println("수성:  " + water);
		System.out.println("중성:  " + gel);
		System.out.println("0.5:  " + mm05);
		System.out.println("0.7:  " + mm07);
		System.out.println("1.0:  " + mm10);
		System.out.println("1.05:  " + mm105);
		System.out.println("EF:  " + EF);
		System.out.println("F:  " + F);
		System.out.println("M:  " + M);
		System.out.println("B:  " + B);
		System.out.println("카트리지:  " + cartridge);
		System.out.println("C&C:  " + c_c);
		System.out.println("플런저:  " + plunger);
		System.out.println("고무:  " + rubber);
		System.out.println("금속:  " + metal);
		System.out.println("플라스틱:  " + plastic);
		System.out.println("목재:  " + timber);
		System.out.println("알루미늄:  " + aluminum);

		
		// 3. FilterDTO로 묶기
		FilterDTO dto = new FilterDTO(pencil, sharp, pen, highlighter, fountainPen, write, drawing, art, B2, B4, B6, H, HB, cover, knock, twist, oil, water, gel, mm05, mm07, mm10, mm105, EF, F, M, B, cartridge, c_c, plunger, rubber, metal, plastic, timber, aluminum);
	
		// 4. showFilter 메소드 호출
		ArrayList<TableDTO> filter_list = new FilterDAO().showFilter(dto);

		String json = gson.toJson(filter_list);
		System.out.println(json);
		
		System.out.println("size: " + filter_list.size());
		
		PrintWriter out = response.getWriter();
		System.out.println("여기서부턴 " + json);
		out.print(json);
		
//		// 5. null 확인
//		if(filter_list != null) {
//			System.out.println("보여주기 성공");
//			request.setAttribute("filter_list", filter_list);
//		}else {
//			System.out.println("보여주기 실패");
//		}
		
//		RequestDispatcher rd = request.getRequestDispatcher("./Filter.jsp");
//		rd.forward(request, response);
//		
		
	
	}
	

}
