package com.youthdew.model;


import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.youthdew.db.SqlSessionManager;

public class SpaceListDAO {

	private SqlSessionFactory sqlSessionFactory= SqlSessionManager.getSqlSession();
	
	// 공간 리스트
	public List<SpaceListVO> selectspace(SpaceListVO vo){
		SqlSession session = sqlSessionFactory.openSession(true);
		List<SpaceListVO> list = session.selectList("selectspace", vo);
		session.close();
		return (ArrayList<SpaceListVO>)list;
	}
	
	// 센터 리스트
	public ArrayList<CenterVO> Searchcenter(CenterVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<CenterVO> list = session.selectList("Searchcenter", vo);
		session.close();
		return (ArrayList<CenterVO>) list;
	}
	
}
