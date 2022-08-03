package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class FilterDAO {
	
	private SqlSessionFactory sqlSessionFactory = db.SqlSessionManager.getSqlSession();
	
	// 필터 보여주기
	public ArrayList<TableDTO> showFilter(FilterDTO dto){
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<TableDTO> filter_list = (ArrayList)session.selectList("showFilter", dto);
		session.close();
		
		return filter_list;
	}
	
	// TOP5 보여주기
	public ArrayList<FilterDTO> showReviewTop5() {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<FilterDTO> top_list = (ArrayList)session.selectList("showReviewTop5");
		session.close();

		return top_list;
	}
	
	// 상품 pk 숫자 보여주기
	public TableDTO showFilDetail(int num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		TableDTO detail_fil_num = session.selectOne("showFilDetail", num);
		session.close();
		
		return detail_fil_num;
		
	}
	
	
	
}
