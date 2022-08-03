package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class SearchDAO {
	private SqlSessionFactory sqlSessionFactory = db.SqlSessionManager.getSqlSession();

	
// 검색 상세정보 보여주기	
	public ArrayList<TableDTO> detailSearch(SearchDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<TableDTO> search_list = (ArrayList) session.selectList("detailSearch", dto);
		session.close();

		return search_list;

	}

// 상품 pk 보여주기
	public TableDTO showDetail(int num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		TableDTO detail_num = session.selectOne("showDetail", num);
		session.close();

		return detail_num;

	}

}
