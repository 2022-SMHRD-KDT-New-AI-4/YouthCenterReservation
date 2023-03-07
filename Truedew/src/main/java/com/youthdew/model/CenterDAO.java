package com.youthdew.model;


import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.youthdew.db.SqlSessionManager;

public class CenterDAO {

	private SqlSessionFactory sqlSessionFactory= SqlSessionManager.getSqlSession();
	

	//센터 sns 조회하기
	public ArrayList<CenterVO> selectSNS(String Center_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<CenterVO> list= session.selectList("selectSNS", Center_id);
		session.close();
		return (ArrayList<CenterVO>)list;
		
		
	}
	}
	