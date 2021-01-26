package com.spring.cjs200810.vo;

public class MailVo {
	private String mailTo;
	private String title;
	private String content;
	
	
	public String getMailTo() {
		return mailTo;
	}
	public void setMailTo(String mailTo) {
		this.mailTo = mailTo;
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
	
	@Override
	public String toString() {
		return "MailVo [mailTo=" + mailTo + ", title=" + title + ", content=" + content + "]";
	}
	
	
}
