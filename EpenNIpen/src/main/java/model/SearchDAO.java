package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


public class SearchDAO {
	private SqlSessionFactory sqlSessionFactory = db.SqlSessionManager.getSqlSession();
	
	public ArrayList<TableDTO> detailSearch(SearchDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<TableDTO> search_list = (ArrayList)session.selectList("detailSearch", dto);
		session.close();
		
		return search_list;
		
	}

}

