package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import db.SqlSessionManager;

public class MemberDAO {

	private SqlSessionFactory sqlsessionFactory = SqlSessionManager.getSqlSession();

// 회원가입
	public int join(MemberDTO dto) {
		SqlSession session = sqlsessionFactory.openSession(true);
		int row = session.insert("join", dto);
		session.close();

		return row;
	}

// 로그인
	public MemberDTO login(MemberDTO dto) {
		SqlSession session = sqlsessionFactory.openSession(true);
		MemberDTO info = session.selectOne("login", dto);
		session.close();

		return info;
	}

// 회원정보 수정
	public int update(MemberDTO dto) {
		SqlSession session = sqlsessionFactory.openSession(true);
		int row = session.update("update", dto);
		session.close();

		return row;
	}

// 회원정보 조회
	public ArrayList<MemberDTO> showMember() {
		SqlSession session = sqlsessionFactory.openSession(true);
		ArrayList<MemberDTO> mem_list = (ArrayList)session.selectList("showMember");
		session.close();

		return mem_list;
	}

//	회원 탈퇴
	public int deleteMember(String id) {
		SqlSession session = sqlsessionFactory.openSession(true);
		int row = session.delete("deleteMember", id);
		session.close();

		return row;
		
	}
	
//	회원 탈퇴
	public int SelfDeleteMember(String id) {
		SqlSession session = sqlsessionFactory.openSession(true);
		int row = session.delete("SelfDeleteMember", id);
		session.close();
		
		return row;
	}
}
