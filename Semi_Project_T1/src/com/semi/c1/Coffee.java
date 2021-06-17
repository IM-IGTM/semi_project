package com.semi.c1;

public class Coffee {

	private int c_no;
	private String c_title;
	private String c_price;
	private String c_img;
	private String c_explain;
	
	public Coffee() {
	}

	public int getC_no() {
		return c_no;
	}

	public void setC_no(int c_no) {
		this.c_no = c_no;
	}

	public String getC_title() {
		return c_title;
	}

	public void setC_title(String c_title) {
		this.c_title = c_title;
	}

	public String getC_price() {
		return c_price;
	}

	public void setC_price(String c_price) {
		this.c_price = c_price;
	}

	public String getC_img() {
		return c_img;
	}

	public void setC_img(String c_img) {
		this.c_img = c_img;
	}

	public String getC_explain() {
		return c_explain;
	}

	public void setC_explain(String c_explain) {
		this.c_explain = c_explain;
	}

	public Coffee(int c_no, String c_title, String c_price, String c_img, String c_explain) {
		super();
		this.c_no = c_no;
		this.c_title = c_title;
		this.c_price = c_price;
		this.c_img = c_img;
		this.c_explain = c_explain;
	}

}
