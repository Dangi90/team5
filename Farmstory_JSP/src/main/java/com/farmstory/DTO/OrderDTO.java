package com.farmstory.DTO;

public class OrderDTO {
	private int no;
	private int product_no;
	private String product_name;
	private int product_price;
	private int count;
	private int product_delivery_fee;
	private int total_price;
	private String user_id;
	private String hp;

	private String receiver;
	private String receive_addr;
	
	
	
	//추가 데이터
	private String user_name;
	private String thumb_img;
	private String type;
	
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getThumb_img() {
		return thumb_img;
	}
	public void setThumb_img(String thumb_img) {
		this.thumb_img = thumb_img;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public void setNo(String no) {
		this.no = Integer.parseInt(no);
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public void setProduct_no(String product_no) {
		this.product_no = Integer.parseInt(product_no);
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public void setCount(String count) {
		this.count = Integer.parseInt(count);
	}
	public int getProduct_delivery_fee() {
		return product_delivery_fee;
	}
	public void setProduct_delivery_fee(int product_delivery_fee) {
		this.product_delivery_fee = product_delivery_fee;
	}
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	public void setTotal_price(String total_price) {
		this.total_price = Integer.parseInt(total_price);
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getReceive_addr() {
		return receive_addr;
	}
	public void setReceive_addr(String receive_addr) {
		this.receive_addr = receive_addr;
	}
	@Override
	public String toString() {
		return "OrderDTO [no=" + no + ", product_no=" + product_no + ", product_name=" + product_name
				+ ", product_price=" + product_price + ", count=" + count + ", product_delivery_fee="
				+ product_delivery_fee + ", total_price=" + total_price + ", user_id=" + user_id + ", hp=" + hp
				+ ", receiver=" + receiver + ", receive_addr=" + receive_addr + ", user_name=" + user_name
				+ ", thumb_img=" + thumb_img + ", type=" + type + "]";
	}
	
	

}
