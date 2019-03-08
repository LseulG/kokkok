package com.kokkok.dto;

//게시판 
public class BoardDto {

	// 글번호
	private int seq;

	// 게시판번호
	private int bcode;

	// 작성자아이디
	private String id;

	// 제목
	private String subject;

	// 내용
	private String content;

	// 작성일자
	private String logtime;

	// 수정일자
	private String updatetime;

	// 추천수
	private int recommcount;

	// 찜갯수
	private int wishcount;

	// 조회수
	private int hit;

	public BoardDto() {
	}

	public BoardDto(int seq, int bcode, String id, String subject, String content, String logtime, String updatetime,
			int recommcount, int wishcount, int hit) {
		super();
		this.seq = seq;
		this.bcode = bcode;
		this.id = id;
		this.subject = subject;
		this.content = content;
		this.logtime = logtime;
		this.updatetime = updatetime;
		this.recommcount = recommcount;
		this.wishcount = wishcount;
		this.hit = hit;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public int getBcode() {
		return bcode;
	}

	public void setBcode(int bcode) {
		this.bcode = bcode;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getLogtime() {
		return logtime;
	}

	public void setLogtime(String logtime) {
		this.logtime = logtime;
	}

	public String getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(String updatetime) {
		this.updatetime = updatetime;
	}

	public int getRecommcount() {
		return recommcount;
	}

	public void setRecommcount(int recommcount) {
		this.recommcount = recommcount;
	}

	public int getWishcount() {
		return wishcount;
	}

	public void setWishcount(int wishcount) {
		this.wishcount = wishcount;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	@Override
	public String toString() {
		return "BoardDto [seq=" + seq + ", bcode=" + bcode + ", id=" + id + ", subject=" + subject + ", content="
				+ content + ", logtime=" + logtime + ", updatetime=" + updatetime + ", recommcount=" + recommcount
				+ ", wishcount=" + wishcount + ", hit=" + hit + "]";
	}

	
	
}
