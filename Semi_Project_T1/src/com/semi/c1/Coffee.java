package com.semi.c1;

public class Coffee {

	private int c_no;
	private String c_title;
	private int c_price;
	private String c_img;
	private String c_explain;
	private String c_origin;
	
public Coffee() {
	// TODO Auto-generated constructor stub
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

public int getC_price() {
	return c_price;
}

public void setC_price(int i) {
	this.c_price = i;
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

public String getC_origin() {
	return c_origin;
}

public void setC_origin(String c_origin) {
	this.c_origin = c_origin;
}

public Coffee(int c_no, String c_title, int c_price, String c_img, String c_explain, String c_origin) {
	super();
	this.c_no = c_no;
	this.c_title = c_title;
	this.c_price = c_price;
	this.c_img = c_img;
	this.c_explain = c_explain;
	this.c_origin = c_origin;
}

}