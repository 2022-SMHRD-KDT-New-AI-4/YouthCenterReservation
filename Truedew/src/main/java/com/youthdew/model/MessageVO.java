package com.youthdew.model;

public class MessageVO {
	
	private int msg_seq;
	private String user_id;
	private String msg_usetime;
	private String msg_content;
	private String msg_date;
	private String msg_check;
	
	
	
	public MessageVO(int msg_seq, String user_id, String msg_usetime, String msg_content, String msg_date,
			String msg_check) {
		super();
		this.msg_seq = msg_seq;
		this.user_id = user_id;
		this.msg_usetime = msg_usetime;
		this.msg_content = msg_content;
		this.msg_date = msg_date;
		this.msg_check = msg_check;
	}


	
	
	public MessageVO() {
		super();
	}



	public MessageVO(String user_id) {
		super();
		this.user_id = user_id;
	}
	
	
	public MessageVO(int msg_seq) {
		super();
		this.msg_seq = msg_seq;
	}


	public MessageVO(String user_id, String msg_usetime, String msg_content) {
		super();
		this.user_id = user_id;
		this.msg_usetime = msg_usetime;
		this.msg_content = msg_content;
	}

	public int getMsg_seq() {
		return msg_seq;
	}



	public void setMsg_seq(int msg_seq) {
		this.msg_seq = msg_seq;
	}



	public String getUser_id() {
		return user_id;
	}



	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}



	public String getMsg_usetime() {
		return msg_usetime;
	}



	public void setMsg_usetime(String msg_usetime) {
		this.msg_usetime = msg_usetime;
	}



	public String getMsg_content() {
		return msg_content;
	}



	public void setMsg_content(String msg_content) {
		this.msg_content = msg_content;
	}



	public String getMsg_date() {
		return msg_date;
	}



	public void setMsg_date(String msg_date) {
		this.msg_date = msg_date;
	}



	public String getMsg_check() {
		return msg_check;
	}



	public void setMsg_check(String msg_check) {
		this.msg_check = msg_check;
	}
	
	
	

}
