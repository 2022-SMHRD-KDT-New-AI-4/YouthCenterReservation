package com.youthdew.model;

public class ReviewVO {
	
	private int review_seq;
	private String user_id;
	private int shared_space_seq;
	private String review_content;
	private int review_ratings;
	private String review_date;
	private int reserv_seq;
	private String center_name;
	private String shared_space_name;
	private String center_id;


	
	@Override
	public String toString() {
		return "ReviewVO [review_seq=" + review_seq + ", user_id=" + user_id + ", shared_space_seq=" + shared_space_seq
				+ ", review_content=" + review_content + ", review_ratings=" + review_ratings + ", review_date="
				+ review_date + ", reserv_seq=" + reserv_seq + ", center_name=" + center_name + ", shared_space_name="
				+ shared_space_name + ", center_id=" + center_id + "]";
	}

	public ReviewVO() {
		
	}

	public ReviewVO(int reserv_seq) {
		this.reserv_seq = reserv_seq;
	}

	
	public ReviewVO(String user_id, int shared_space_seq, String review_content, int review_ratings, int reserv_seq) {
		this.user_id = user_id;
		this.shared_space_seq = shared_space_seq;
		this.review_content = review_content;
		this.review_ratings = review_ratings;
		this.reserv_seq = reserv_seq;
	}

	public ReviewVO(String user_id, int shared_space_seq, String review_content, int review_ratings, String review_date,
			String center_name, String shared_space_name, String center_id) {
		this.user_id = user_id;
		this.shared_space_seq = shared_space_seq;
		this.review_content = review_content;
		this.review_ratings = review_ratings;
		this.review_date = review_date;
		this.center_name = center_name;
		this.shared_space_name = shared_space_name;
		this.center_id = center_id;
	}
	

	public ReviewVO(int review_seq, String user_id, int shared_space_seq, String review_content, int review_ratings,
			String review_date, int reserv_seq, String center_name, String shared_space_name, String center_id) {
		this.review_seq = review_seq;
		this.user_id = user_id;
		this.shared_space_seq = shared_space_seq;
		this.review_content = review_content;
		this.review_ratings = review_ratings;
		this.review_date = review_date;
		this.reserv_seq = reserv_seq;
		this.center_name = center_name;
		this.shared_space_name = shared_space_name;
		this.center_id = center_id;
	}

	public int getReview_seq() {
		return review_seq;
	}

	public void setReview_seq(int review_seq) {
		this.review_seq = review_seq;
	}

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

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public int getReview_ratings() {
		return review_ratings;
	}

	public void setReview_ratings(int review_ratings) {
		this.review_ratings = review_ratings;
	}

	public String getReview_date() {
		return review_date;
	}

	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}

	public int getReserv_seq() {
		return reserv_seq;
	}

	public void setReserv_seq(int reserv_seq) {
		this.reserv_seq = reserv_seq;
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

	public String getCenter_id() {
		return center_id;
	}

	public void setCenter_id(String center_id) {
		this.center_id = center_id;
	}
	

	
}
	