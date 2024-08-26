package com.farmstory.DTO;

public class UserDTO {
	
	private String uid;
	private String pass;
	private String name;
	private String nick;
	private String email;
	private String hp;
	private String grade;
	private String addr;
	private String regip;
	private String regdate;
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getRegip() {
		return regip;
	}
	public void setRegip(String regip) {
		this.regip = regip;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "MemberDTO [uid=" + uid + ", pass=" + pass + ", name=" + name + ", nick=" + nick + ", email=" + email
				+ ", hp=" + hp + ", grade=" + grade + ", addr=" + addr + ", regip=" + regip + ", regdate=" + regdate
				+ "]";
	}
	
	
}
