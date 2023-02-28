package com.youthdew.model;

public class MarkVO {
	private String center_id;
	private String center_name;
	private String local_do;
	private String local_gu;
	private String center_runtime;
	private String center_tel;
	private String center_pic;
	
	private int bm_seq;
	private String user_id;
	private String bm_date;
	
	
	
	public MarkVO(String center_id, String center_name, String local_do, String local_gu, String center_runtime,
			String center_tel, String center_pic, int bm_seq, String user_id, String bm_date) {
		super();
		this.center_id = center_id;
		this.center_name = center_name;
		this.local_do = local_do;
		this.local_gu = local_gu;
		this.center_runtime = center_runtime;
		this.center_tel = center_tel;
		this.center_pic = center_pic;
		this.bm_seq = bm_seq;
		this.user_id = user_id;
		this.bm_date = bm_date;
	}


	public MarkVO() {
		super();
	}

	public MarkVO(String user_id) {
		super();
		this.user_id = user_id;
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


	public String getLocal_do() {
		return local_do;
	}


	public void setLocal_do(String local_do) {
		this.local_do = local_do;
	}


	public String getLocal_gu() {
		return local_gu;
	}


	public void setLocal_gu(String local_gu) {
		this.local_gu = local_gu;
	}


	public String getCenter_runtime() {
		return center_runtime;
	}


	public void setCenter_runtime(String center_runtime) {
		this.center_runtime = center_runtime;
	}


	public String getCenter_tel() {
		return center_tel;
	}


	public void setCenter_tel(String center_tel) {
		this.center_tel = center_tel;
	}


	public String getCenter_pic() {
		return center_pic;
	}


	public void setCenter_pic(String center_pic) {
		this.center_pic = center_pic;
	}


	public int getBm_seq() {
		return bm_seq;
	}


	public void setBm_seq(int bm_seq) {
		this.bm_seq = bm_seq;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getBm_date() {
		return bm_date;
	}


	public void setBm_date(String bm_date) {
		this.bm_date = bm_date;
	}
	

	
	

}
