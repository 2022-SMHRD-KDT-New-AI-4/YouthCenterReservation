package com.youthdew.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.youthdew.model.MemberVO;

import com.youthdew.db.SqlSessionManager;

public class MemberDAO {

	
	private SqlSessionFactory SqlSessionFactory = com.youthdew.db.SqlSessionManager.getSqlSession();

	public int join(MemberVO vo) {
		
		 SqlSession session = SqlSessionFactory.openSession(true);
	      int cnt = session.insert("join", vo); // sql문 실행성공시 1을 반환 / join은 맵퍼와 연결
	      session.close();
	      
	      return cnt;
	}

	public MemberVO login(MemberVO vo) {
		SqlSession session = SqlSessionFactory.openSession(true);
	      // 하나의 값만 확인하고 반환
	      // -> DB 값을 확인했을 때 같은 값이 여러개이면 오류발생!!!
	      MemberVO lvo = session.selectOne("login", vo);
		session.close(); // sql 호출 마무리 되면 세션도 마무리
						// 자원이 계속해서 사용되기 때문에 꼭 close를 해줘야함
		return lvo;
	}
}