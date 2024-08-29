package com.farmstory.DTO;

public class ProductDTO {
	
	private int no;
	private String name;
	private String type;
	private int price;
	private int point;
	private int discount;
	private int delivery_fee;
	private int stack;
	private String thumb_img;
	private String info_img;
	private String explain_img;
	private String datetime;
	
	
	
	// 추가
	private String regdate;
	private String etc;

	
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public void setNo(String no) {
		this.no = Integer.parseInt(no);
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getDelivery_fee() {
		return delivery_fee;
	}
	public void setDelivery_fee(int delivery_fee) {
		this.delivery_fee = delivery_fee;
	}
	public int getStack() {
		return stack;
	}
	public void setStack(int stack) {
		this.stack = stack;
	}
	public String getThumb_img() {
		return thumb_img;
	}
	public void setThumb_img(String thumb_img) {
		this.thumb_img = thumb_img;
	}
	public String getInfo_img() {
		return info_img;
	}
	public void setInfo_img(String info_img) {
		this.info_img = info_img;
	}
	public String getExplain_img() {
		return explain_img;
	}
	public void setExplain_img(String explain_img) {
		this.explain_img = explain_img;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	@Override
	public String toString() {
		return "ProductDTO [no=" + no + ", name=" + name + ", type=" + type + ", price=" + price + ", point=" + point
				+ ", discount=" + discount + ", delivery_fee=" + delivery_fee + ", stack=" + stack + ", thumb_img="
				+ thumb_img + ", info_img=" + info_img + ", explain_img=" + explain_img + ", datetime=" + datetime
				+ ", regdate=" + regdate + "]";
	}
	
}