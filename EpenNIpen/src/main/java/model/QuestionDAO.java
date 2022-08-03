package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import db.SqlSessionManager;

public class QuestionDAO {

	private SqlSessionFactory sqlsessionFactory = SqlSessionManager.getSqlSession();

	// 드림펜찾기 제출
	public int insertQuestion(QuestionDTO dto) {
		SqlSession session = sqlsessionFactory.openSession(true);
		int row = session.insert("insertQuestion", dto);
		session.close();

		return row;
	}

	// 로그인한 계정의 드림펜찾기 result창 노출
	public QuestionDTO QuestionResult(String id) {
		SqlSession session = sqlsessionFactory.openSession(true);
		QuestionDTO question_result = session.selectOne("QuestionResult", id);
		session.close();

		return question_result;
	}

	// 로그인한 계정의 드림펜찾기 내역 조회
	public ArrayList<QuestionDTO> MyQuestion(String id) {
		SqlSession session = sqlsessionFactory.openSession(true);
		ArrayList<QuestionDTO> question_list = (ArrayList) session.selectList("MyQuestion", id);
		session.close();
		
		return question_list;
	}

}
