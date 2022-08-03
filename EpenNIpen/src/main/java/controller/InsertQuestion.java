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
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[InsertQuestion]");

		request.setCharacterEncoding("UTF-8");

		// 데이터 받아오기
		String id = request.getParameter("id");

		// 사용자의 답변 받아오기
		String answer_1 = request.getParameter("answer_1");
		String answer_2 = request.getParameter("answer_2");
		String answer_3 = request.getParameter("answer_3");

		// 답변의 문자열을 answer로 합치기
		String answer = answer_1+answer_2+answer_3;
		System.out.println(answer);
		QuestionDTO dto = new QuestionDTO(id, answer); 

		int row = new QuestionDAO().insertQuestion(dto);

		if (row == 1) {
			System.out.println("드림펜찾기 제출 성공");
		} else {
			System.out.println("드림펜찾기 제출 실패");
		}
		
		String product = null;
		
		// answer의 값에 따라 제품명 매칭
		if(answer.equals("bpi")) {
			product = "BIC 빅 라운드스틱 볼펜 1.0mm 1타(12자루)";
		}else if(answer.equals("bpe")) {
			product = "SAKURA 사쿠라 겔리롤 시리즈 (gelly roll) 데코펜 (XPGB)";
		}else if(answer.equals("bui")) {
			product = "미쯔비시 uni STYLE FIT 유니 스타일핏 139 슬림 싱글컬러 젤잉크펜 0.38 (UMN-139-38)";
		}else if(answer.equals("bue")) {
			product = "미쯔비시 uni STYLE FIT 유니 스타일핏 3구홀더 208 메탈시리즈 (UE3H-208)";
		}else if(answer.equals("bsi")) {
			product = "미쯔비시 제트스트림 2&1 멀티펜 (흑,적+샤프) 0.5mm (MSXE3-500-05)";
		}else if(answer.equals("bse")) {
			product = "사쿠라 겔리롤 화이트 - 3가지 굵기 (XPGB)";
		}else if(answer.equals("bhi")) {
			product = "제브라 사라사 3색볼펜(흑,청,적) 0.5 (J3J2)";
		}else if(answer.equals("bhe")) {
			product = "제브라 클립온멀티 시리즈 4+1 (0.7mm 흑,청,적,녹+0.5mm 샤프) (B4SA1)";

		
		}else if(answer.equals("hpi")) {
			product = "고쿠요 비틀팁 Beetle Tip 3way 형광펜 (PM-L301)";
		}else if(answer.equals("hpe")) {
			product = "샤피 포켓 형광펜 1타(12개입)";
		}else if(answer.equals("hui")) {
			product = "스타빌로 스윙쿨 형광펜(10가지 컬러)";
		}else if(answer.equals("hue")) {
			product = "스테들러 텍스트서퍼 고체형광펜 1타(10개입) (264)";
		}else if(answer.equals("hsi")) {
			product = "스테들러 텍스트서퍼 클래식 파스텔 형광펜 (364)";
		}else if(answer.equals("hse")) {
			product = "제브라 OPTEXCARE 옵텍스케어 형광펜 (WKCR1)";
		}else if(answer.equals("hhi")) {
			product = "제브라 마일드라이너 트윈형광펜 (시원한색) 5색세트 (WKT7-5C-NC)";
		}else if(answer.equals("hhe")) {
			product = "제브라 마일드라이너 트윈형광펜 5색세트 N (WKT7-N-5C)";

		
		}else if(answer.equals("fpi")) {
			product = "파이롯트 패티1(쁘띠1) 미니 만년필(SPN-20F)";
		}else if(answer.equals("fpe")) {
			product = "파버카스텔 WRITink 라이팅크 프린트 만년필 (EF촉)";
		}else if(answer.equals("fui")) {
			product = "라미 2022 스페셜 에디션 만년필 사파리 코지";
		}else if(answer.equals("fue")) {
			product = "파카 조터 오리지널 만년필";
		}else if(answer.equals("fsi")) {
			product = "LAMY 라미 013GR safari 사파리 그린 만년필";
		}else if(answer.equals("fse")) {
			product = "PARKER 파카 벡터 스텐스틸(스테인레스 스틸) 만년필";
		}else if(answer.equals("fhi")) {
			product = "플래티넘 프레피만년필 EF(02)";
		}else if(answer.equals("fhe")) {
			product = "파카 어번 코어 뮤티드 매트 블랙 GT 만년필";

		
		}else if(answer.equals("spi")) {
			product = "PENTEL 펜텔 (메카니카) 고급 제도샤프 0.5mm (PG5)";
		}else if(answer.equals("spe")) {
			product = "미쯔비시 샤카샤카 알파겔샤프 (M5-617 GG)";
		}else if(answer.equals("sui")) {
			product = "미쯔비시 유니 쿠루토가 어드밴스 (M5-559)";
		}else if(answer.equals("sue")) {
			product = "제브라 에어피트 LT 샤프 시리즈 0.5mm";
		}else if(answer.equals("ssi")) {
			product = "톰보 모노그래프 샤프 0.5mm (DPA-132)";
		}else if(answer.equals("sse")) {
			product = "파버카스텔 TK 4600 클러치 펜슬 홀더 2mm";
		}else if(answer.equals("shi")) {
			product = "펜텔 아인 샤프 (A125)";
		}else if(answer.equals("she")) {
			product = "펜텔 그래프1000 리미티드9 트로피컬 썸머 그라데이션";
		}
		
		// 위에서 답변을 조합한 제품명을 result.jsp로 보내기 위해 setAttribute로 담기 
		request.setAttribute("product", product);
		
		// result.jsp로 발송
		RequestDispatcher rd = request.getRequestDispatcher("./result.jsp");
		rd.forward(request, response);
	}

	
}
