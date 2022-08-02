package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class FilterDAO {
	
	private SqlSessionFactory sqlSessionFactory = db.SqlSessionManager.getSqlSession();
	
	public ArrayList<TableDTO> showFilter(FilterDTO dto){
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<TableDTO> filter_list = (ArrayList)session.selectList("showFilter", dto);
		session.close();
		
		return filter_list;
	}
	
	public ArrayList<FilterDTO> showReviewTop5() {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<FilterDTO> top_list = (ArrayList)session.selectList("showReviewTop5");
		session.close();

		return top_list;
	}
	
	
}
