package com.youthdew.model;

public class CenterVO {
	private String center_id;
	private String center_name;
	private String local_do;
	private String local_gu;
	private String center_runtime;
	private String center_tel;
	private String lat;
	private String lng;
	private String center_pic;
	
	private int center_fac_seqc;
	private String fac_code;
	private int fac_cnt;
	
	
	public CenterVO() {
		super();
	}

	public CenterVO(String local_do) {
		super();
		this.local_do = local_do;
	}
	
	public CenterVO(String local_do, String fac_code) {
		super();
		this.local_do = local_do;
		this.fac_code = fac_code;
	}

	public CenterVO(String center_id, String center_name, String local_do, String local_gu, String center_runtime,
			String center_tel, String lat, String lng, String center_pic) {
		super();
		this.center_id = center_id;
		this.center_name = center_name;
		this.local_do = local_do;
		this.local_gu = local_gu;
		this.center_runtime = center_runtime;
		this.center_tel = center_tel;
		this.lat = lat;
		this.lng = lng;
		this.center_pic = center_pic;
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

	public String getLat() {
		return lat;
	}

	public void setLat(String lat) {
		this.lat = lat;
	}

	public String getLng() {
		return lng;
	}

	public void setLng(String lng) {
		this.lng = lng;
	}

	public String getCenter_pic() {
		return center_pic;
	}

	public void setCenter_pic(String center_pic) {
		this.center_pic = center_pic;
	}

	public CenterVO(String center_name, String local_gu, String center_runtime, String center_tel, String center_pic) {
		
		this.center_name = center_name;
		this.local_gu = local_gu;
		this.center_runtime = center_runtime;
		this.center_tel = center_tel;
		this.center_pic = center_pic;
	}

	@Override
	public String toString() {
		return "CenterVO [center_id=" + center_id + ", center_name=" + center_name + ", local_do=" + local_do
				+ ", local_gu=" + local_gu + ", center_runtime=" + center_runtime + ", center_tel=" + center_tel
				+ ", lat=" + lat + ", lng=" + lng + ", center_pic=" + center_pic + "]";
	}
	
	
	
	
	

}
