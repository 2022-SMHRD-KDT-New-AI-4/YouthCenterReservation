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
	
	//센터 한개 리스트
	public CenterVO selectcenter(String center_name){
		SqlSession session = sqlSessionFactory.openSession(true);
		CenterVO cvo= session.selectOne("selectcenter", center_name);
		session.close();
		return cvo;
	}
	
	
	// 센터 부대시설 필터링
	public ArrayList<CenterVO> Selectfac(CenterVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<CenterVO> list = session.selectList("Selectfac", vo);
		session.close();
		return (ArrayList<CenterVO>) list;
	}
}
