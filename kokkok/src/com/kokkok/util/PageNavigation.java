package com.kokkok.util;

public class PageNavigation {

	private String root;
	private boolean nowFirst;
	private boolean nowEnd;
	private int newArticleCount;
	private int totalArticleCount;
	private int totalPageCount;
	private int pageNo;
	private String navigator;

	public String getRoot() {
		return root;
	}

	public void setRoot(String root) {
		this.root = root;
	}

	public boolean isNowFirst() {
		return nowFirst;
	}

	public void setNowFirst(boolean nowFirst) {
		this.nowFirst = nowFirst;
	}

	public boolean isNowEnd() {
		return nowEnd;
	}

	public void setNowEnd(boolean nowEnd) {
		this.nowEnd = nowEnd;
	}

	public int getNewArticleCount() {
		return newArticleCount;
	}

	public void setNewArticleCount(int newArticleCount) {
		this.newArticleCount = newArticleCount;
	}

	public int getTotalArticleCount() {
		return totalArticleCount;
	}

	public void setTotalArticleCount(int totalArticleCount) {
		this.totalArticleCount = totalArticleCount;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public String getNavigator() {
		return navigator;
	}

	public void makeNavigator() {
		StringBuffer tmpNavigator = new StringBuffer();

		int naviSize = BoardConstance.NAVIGATION_SIZE;
		int preLastPage = (pageNo - 1) / naviSize * naviSize;
			
		if (this.isNowFirst()) {           
            tmpNavigator.append("<li class='newlist'><span>&lt;&lt;</span></li>");
            tmpNavigator.append("<li><span>&lt;</span></li>");            
		
		} else {
			tmpNavigator.append("<li class='newlist'><a href=''>&lt;&lt;</a></li>");
            tmpNavigator.append("<li class='pglist move-pg='" + preLastPage + "''><span>&lt;</span></li>");
		}
		int startPage = preLastPage + 1;
		int endPage = preLastPage + naviSize;
		if(endPage > totalPageCount)
			endPage = totalPageCount;
		
		for (int i = startPage; i <= endPage; i++) {
			if (pageNo == i) {				
				tmpNavigator.append("<li class='active'><span>"+ i +"</span></li>");	
			} else {
				tmpNavigator.append("<li class='pglist' move-pg='" + i + "'><span>" + i + "</span></li>");
			}
		}
		if (this.isNowEnd()) {			
			 tmpNavigator.append("<li><span>&gt;</span></li>");	
			 tmpNavigator.append("<li class='pglist' move-pg='" + totalPageCount + "'><span>&gt;&gt;</span></li>");			
		} else {
			tmpNavigator.append("<li class='pglist' move-pg='" + (preLastPage + naviSize + 1) + "'><span>&gt;</span></li>");
			tmpNavigator.append("<li class='pglist' move-pg='" + totalPageCount + "'><span>&gt;&gt;</span></li>");
		}	

		this.navigator = tmpNavigator.toString();
	}
}



























