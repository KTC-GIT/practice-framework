package com.spring.cjs200810.vo;

import java.sql.Timestamp;

public class NotifyVo {
	private int idx;
	private String name;
	private String title;
	private String content;
	private Timestamp startDate;
	private Timestamp endDate;
	private String popupSw;
	
	public NotifyVo() {}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public Timestamp getStartDate() {
		return startDate;
	}
	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}
	public Timestamp getEndDate() {
		return endDate;
	}
	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}
	public String getPopupSw() {
		return popupSw;
	}
	public void setPopupSw(String popupSw) {
		this.popupSw = popupSw;
	}
	
	
}
