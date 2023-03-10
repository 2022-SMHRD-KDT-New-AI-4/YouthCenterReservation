package com.youthdew.model;

import java.util.ArrayList;
import java.util.List;

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
	
	public ReviewVO checkReview(int reserv_seq) {
		SqlSession session = SqlSessionFactory.openSession(true);
		ReviewVO rvo = session.selectOne("checkReview", reserv_seq);
		session.close();
		return rvo;
	}
	
	public ArrayList<ReviewVO> viewReview(String center_id) {
		SqlSession session = SqlSessionFactory.openSession(true);
		List<ReviewVO> rvo = session.selectList("viewReview", center_id);
		session.close();
		return (ArrayList<ReviewVO>)rvo;
	}
}
