package com.whcvc.domain;

import java.io.Serializable;

public class PageForm implements Serializable {
	private int startNews;
	private int showNum;
	public int getStartNews() {
		return startNews;
	}
	public void setStartNews(int startNews) {
		this.startNews = startNews;
	}
	public int getShowNum() {
		return showNum;
	}
	public void setShowNum(int showNum) {
		this.showNum = showNum;
	}
}
