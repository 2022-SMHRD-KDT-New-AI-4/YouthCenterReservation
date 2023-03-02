package com.youthdew.model;

public class SpaceListVO {
	String center_id;
	String center_name;
	String local_do;
	String shared_space_name;
	int persons;
	String space_info;
	String shared_space_pic;
	int shared_space_seq;
	
	//기본 생성자
	public SpaceListVO() {
		
	}
	//지역이랑 센터명만 받는 vo
	public SpaceListVO(String center_name, String local_do) {
		this.center_name = center_name;
		this.local_do = local_do;

	}
	
	//생성자
	public SpaceListVO(String center_id, String center_name, String local_do, String shared_space_name, int persons,
			String space_info, String shared_space_pic, int shared_space_seq) {
		super();
		this.center_id = center_id;
		this.center_name = center_name;
		this.local_do = local_do;
		this.shared_space_name = shared_space_name;
		this.persons = persons;
		this.space_info = space_info;
		this.shared_space_pic = shared_space_pic;
		this.shared_space_seq= shared_space_seq;
	}
	
	//getter/setter

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

	public String getShared_space_name() {
		return shared_space_name;
	}

	public void setShared_space_name(String shared_space_name) {
		this.shared_space_name = shared_space_name;
	}

	public int getPersons() {
		return persons;
	}

	public void setPersons(int persons) {
		this.persons = persons;
	}

	public String getSpace_info() {
		return space_info;
	}

	public void setSpace_info(String space_info) {
		this.space_info = space_info;
	}

	public String getShared_space_pic() {
		return shared_space_pic;
	}

	public void setShared_space_pic(String shared_space_pic) {
		this.shared_space_pic = shared_space_pic;
	}
	
	public int getShared_space_seq() {
		return shared_space_seq;
	}

	public void setShared_space_seq(int shared_space_seq) {
		this.shared_space_seq = shared_space_seq;
	}
	

}
