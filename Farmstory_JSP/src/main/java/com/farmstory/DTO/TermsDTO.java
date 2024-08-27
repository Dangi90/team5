package com.farmstory.DTO;

public class TermsDTO {
	
	private int term_id;
	private String term_content1;
	private String term_content2;
	
	public int getTerm_id() {
		return term_id;
	}
	public void setTerm_id(int term_id) {
		this.term_id = term_id;
	}
	public String getTerm_content1() {
		return term_content1;
	}
	public void setTerm_content1(String term_content1) {
		this.term_content1 = term_content1;
	}
	public String getTerm_content2() {
		return term_content2;
	}
	public void setTerm_content2(String term_content2) {
		this.term_content2 = term_content2;
	}
	@Override
	public String toString() {
		return "TermsDto [term_id=" + term_id + ", term_content1=" + term_content1 + ", term_content2=" + term_content2
				+ "]";
	}

	
}