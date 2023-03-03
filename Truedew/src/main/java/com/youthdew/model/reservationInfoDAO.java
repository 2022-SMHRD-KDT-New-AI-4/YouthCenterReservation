package com.youthdew.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.youthdew.db.SqlSessionManager;

public class reservationInfoDAO {
	
	
	private SqlSessionFactory sqlSessionFactory= SqlSessionManager.getSqlSession();
	
	
	//선택한 센터 공유공간 예약 페이지에 불러오기
	public SpaceListVO selectshared_space(int shared_space_seq) {
		SqlSession session = sqlSessionFactory.openSession(true);
		SpaceListVO vo= session.selectOne("selectshared_space",shared_space_seq);
		session.close();
		return vo;
	}
	
	//예약한 데이터 넣기
	public int insertreservation(reservationInfoVO vo) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("insertreservation", vo);
		session.close();
		return cnt;
		
	}
	//내 예약 정보 불러오기
	public ArrayList<reservationInfoVO> reservationSelect(String user_id){
		SqlSession session = sqlSessionFactory.openSession(true);
		List<reservationInfoVO> list = session.selectList("reservationSelect", user_id);
		session.close();
		return (ArrayList<reservationInfoVO>)list;
	
	}
	
	
	// 예약정보 삭제
	public int deleteReserve(int reserv_seq) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.delete("deleteReserve",reserv_seq);
		session.close();
		return cnt;
	}

		
		//예약된 시간 확인
		public ArrayList<reservationInfoVO> selectReserved_time(reservationInfoVO vo) {
			SqlSession session = sqlSessionFactory.openSession(true);
			List<reservationInfoVO> timelist = session.selectList("selectReserved_time",vo);
			session.close();
			return (ArrayList<reservationInfoVO>)timelist;
		}
		   // 선택한 공간의 운영시간 조회
		   public reservationInfoVO selectRuntime(int shared_space_seq) {
		      SqlSession session = sqlSessionFactory.openSession(true);
		      reservationInfoVO vo = session.selectOne("selectRuntime", shared_space_seq);
		      session.close();
		      return vo;
		   }

}
