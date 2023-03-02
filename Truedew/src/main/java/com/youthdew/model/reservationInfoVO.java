package com.youthdew.model;

public class reservationInfoVO {
	private String user_id;
	private int shared_space_seq;
	private int reserv_seq;
	private String reserv_date;
	private String use_time;
	private String center_id;
	private String center_name;
	private String shared_space_name;
	private String apply_date;
	
	
	
	//default
	public reservationInfoVO() {
		super();
	}
	
	//생성자
		public reservationInfoVO(String user_id, int shared_space_seq, int reserv_seq, String reserv_date, String use_time,
				String center_id, String center_name, String shared_space_name,String apply_date) {
			super();
			this.user_id = user_id;
			this.shared_space_seq = shared_space_seq;
			this.reserv_seq =reserv_seq;
			this.reserv_date = reserv_date;
			this.use_time = use_time;
			this.center_id = center_id;
			this.center_name = center_name;
			this.shared_space_name = shared_space_name;
			this.apply_date = apply_date;
		}
		
		//2개짜리 생성자
		public reservationInfoVO(String user_id, int shared_space_seq, String reserv_date, String use_time) {
			this.user_id = user_id;
			this.shared_space_seq = shared_space_seq;
			this.reserv_date = reserv_date;
			this.use_time=use_time;
		}

		//getter/setter
		public String getUser_id() {
			return user_id;
		}

		public void setUser_id(String user_id) {
			this.user_id = user_id;
		}

		public int getShared_space_seq() {
			return shared_space_seq;
		}

		public void setShared_space_seq(int shared_space_seq) {
			this.shared_space_seq = shared_space_seq;
		}

		public int getReserv_seq() {
			return reserv_seq;
		}

		public void setReserv_seq(int reserv_seq) {
			this.reserv_seq = reserv_seq;
		}

		public String getReserv_date() {
			return reserv_date;
		}

		public void setReserv_date(String reserv_date) {
			this.reserv_date = reserv_date;
		}

		public String getUse_time() {
			return use_time;
		}

		public void setUse_time(String use_time) {
			this.use_time = use_time;
		}

		public String getCenter_id() {
			return center_id;
		}

		public void setCenter_id(String center_id) {
			this.center_id = center_id;
		}

		public String getCenter_name() {
			return center_name;
		}

		public void setCenter_name(String center_name) {
			this.center_name = center_name;
		}

		public String getShared_space_name() {
			return shared_space_name;
		}

		public void setShared_space_name(String shared_space_name) {
			this.shared_space_name = shared_space_name;
		}

		public String getApply_date() {
			return apply_date;
		}

		public void setApply_date(String apply_date) {
			this.apply_date = apply_date;
		}
		
		
		
		
		



	
	
	
	
}
