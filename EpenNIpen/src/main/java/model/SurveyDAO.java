package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import db.SqlSessionManager;

public class SurveyDAO {

	private SqlSessionFactory sqlsessionFactory = SqlSessionManager.getSqlSession();

	// 만족도조사 작성
		public int insertSurvey(SurveyDTO dto) {
			SqlSession session = sqlsessionFactory.openSession(true);
			int row = session.insert("insertSurvey", dto);
			session.close();
			
			return row;
		}

	
		// 만족도조사 관리자 조회 
		public ArrayList<SurveyDTO> AllSurvey() {
			 SqlSession session = sqlsessionFactory.openSession(true);
			 ArrayList<SurveyDTO> survey_list = (ArrayList)session.selectList("AllSurvey");
			 session.close();
		 
		 return survey_list; 
		 }

		// 로그인한 계정의 만족도조사 조회 
		public ArrayList<SurveyDTO> MySurvey(String id) {
			SqlSession session = sqlsessionFactory.openSession(true);
			ArrayList<SurveyDTO> survey_list = (ArrayList)session.selectList("MySurvey", id);
			session.close();
			
		return survey_list; 
		}
		 
		
}
