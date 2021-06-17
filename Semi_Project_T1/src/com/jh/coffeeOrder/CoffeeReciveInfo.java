package com.jh.coffeeOrder;

public class CoffeeReciveInfo {


	private int r_no;
	private String r_name;
	private String r_postcode;
	private String r_roadaddress;
	private String r_jibunaddress;
	private String r_extraaddress;
	private int r_phone1;
	private int r_phone2;
	private int r_phone3;
	private String r_message;
	
	public CoffeeReciveInfo() {
		// TODO Auto-generated constructor stub
	}

	public CoffeeReciveInfo(int r_no, String r_name, String r_postcode, String r_roadaddress, String r_jibunaddress,
			String r_extraaddress, int r_phone1, int r_phone2, int r_phone3, String r_message) {
		super();
		this.r_no = r_no;
		this.r_name = r_name;
		this.r_postcode = r_postcode;
		this.r_roadaddress = r_roadaddress;
		this.r_jibunaddress = r_jibunaddress;
		this.r_extraaddress = r_extraaddress;
		this.r_phone1 = r_phone1;
		this.r_phone2 = r_phone2;
		this.r_phone3 = r_phone3;
		this.r_message = r_message;
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
	}

	public String getR_name() {
		return r_name;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	public String getR_postcode() {
		return r_postcode;
	}

	public void setR_postcode(String r_postcode) {
		this.r_postcode = r_postcode;
	}

	public String getR_roadaddress() {
		return r_roadaddress;
	}

	public void setR_roadaddress(String r_roadaddress) {
		this.r_roadaddress = r_roadaddress;
	}

	public String getR_jibunaddress() {
		return r_jibunaddress;
	}

	public void setR_jibunaddress(String r_jibunaddress) {
		this.r_jibunaddress = r_jibunaddress;
	}

	public String getR_extraaddress() {
		return r_extraaddress;
	}

	public void setR_extraaddress(String r_extraaddress) {
		this.r_extraaddress = r_extraaddress;
	}

	public int getR_phone1() {
		return r_phone1;
	}

	public void setR_phone1(int r_phone1) {
		this.r_phone1 = r_phone1;
	}

	public int getR_phone2() {
		return r_phone2;
	}

	public void setR_phone2(int r_phone2) {
		this.r_phone2 = r_phone2;
	}

	public int getR_phone3() {
		return r_phone3;
	}

	public void setR_phone3(int r_phone3) {
		this.r_phone3 = r_phone3;
	}

	public String getR_message() {
		return r_message;
	}

	public void setR_message(String r_message) {
		this.r_message = r_message;
	}
	
	
}
