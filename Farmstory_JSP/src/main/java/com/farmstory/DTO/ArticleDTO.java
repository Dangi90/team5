package com.farmstory.DTO;

public class ArticleDTO {
    private int id;
    private String userUid; // 작성자의 UID
    private String title;
    private String content;
    private String regdate; // 작성일시
    private int views; // 조회수
    private String cate;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserUid() {
		return userUid;
	}
	public void setUserUid(String userUid) {
		this.userUid = userUid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	@Override
	public String toString() {
		return "ArticleDTO [id=" + id + ", userUid=" + userUid + ", title=" + title + ", content=" + content
				+ ", regdate=" + regdate + ", views=" + views + ", cate=" + cate + "]";
	}
}
