package com.youthdew.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class ReviewDAO {

	private SqlSessionFactory SqlSessionFactory = com.youthdew.db.SqlSessionManager.getSqlSession();
	
	public int insertReview(ReviewVO vo) {
		
		SqlSession session = SqlSessionFactory.openSession(true);
		int cnt = session.insert("insertReview", vo);
	    session.close();
	    return cnt;
	}
}
