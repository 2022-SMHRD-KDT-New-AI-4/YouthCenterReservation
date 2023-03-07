package com.youthdew.model;

public class FacSearchVO {
	private String center_id;
	private String fac1;
	private String fac2;
	private String fac3;
	private String fac4;
	private int cnt;
	private String local_do;
	
	
	public FacSearchVO(String center_id, String fac1, String fac2, String fac3, String fac4, int cnt, String local_do) {
		super();
		this.center_id = center_id;
		this.fac1 = fac1;
		this.fac2 = fac2;
		this.fac3 = fac3;
		this.fac4 = fac4;
		this.cnt = cnt;
		this.local_do = local_do;
	}
	
	public FacSearchVO() {
		super();
	}

	public FacSearchVO(String fac1, String fac2, String fac3, String fac4, int cnt, String local_do) {
		super();
		this.fac1 = fac1;
		this.fac2 = fac2;
		this.fac3 = fac3;
		this.fac4 = fac4;
		this.cnt = cnt;
		this.local_do = local_do;
	}

	public String getCenter_id() {
		return center_id;
	}

	public void setCenter_id(String center_id) {
		this.center_id = center_id;
	}

	public String getFac1() {
		return fac1;
	}

	public void setFac1(String fac1) {
		this.fac1 = fac1;
	}

	public String getFac2() {
		return fac2;
	}

	public void setFac2(String fac2) {
		this.fac2 = fac2;
	}

	public String getFac3() {
		return fac3;
	}

	public void setFac3(String fac3) {
		this.fac3 = fac3;
	}

	public String getFac4() {
		return fac4;
	}

	public void setFac4(String fac4) {
		this.fac4 = fac4;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public String getLocal_do() {
		return local_do;
	}

	public void setLocal_do(String local_do) {
		this.local_do = local_do;
	}
	
	
	
	
	
	
	
	
	
	
	

}
