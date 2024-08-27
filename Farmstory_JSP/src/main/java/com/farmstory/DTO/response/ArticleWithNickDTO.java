package com.farmstory.DTO.response;

public class ArticleWithNickDTO {
	 private int no;
	    private String userUid; // 작성자의 UID
	    private String title;
	    private String content;
	    private String regdate; // 작성일시
	    private int views; // 조회수
	    private String group;
	    private String cate;
	    private String nick;
		public int getNo() {
			return no;
		}
		public void setNo(int no) {
			this.no = no;
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
		public String getGroup() {
			return group;
		}
		public void setGroup(String group) {
			this.group = group;
		}
		public String getCate() {
			return cate;
		}
		public void setCate(String cate) {
			this.cate = cate;
		}
		public String getNick() {
			return nick;
		}
		public void setNick(String nick) {
			this.nick = nick;
		}
		@Override
		public String toString() {
			return "ArticleWithNickDTO [no=" + no + ", userUid=" + userUid + ", title=" + title + ", content=" + content
					+ ", regdate=" + regdate + ", views=" + views + ", group=" + group + ", cate=" + cate + ", nick="
					+ nick + "]";
		}
	    
	     
}
