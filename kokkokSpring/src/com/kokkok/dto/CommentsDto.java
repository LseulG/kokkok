package com.kokkok.dto;

import java.util.Date;

public class CommentsDto {

	    // 댓글번호 
	    private int cseq;

	    // 글번호 
	    private int seq;

	    // 작성자아이디 
	    private String id;

	    // 댓글내용 
	    private String ccontent;

	    // 댓글작성일 
	    private Date clogtime;
	    
	    
	    public CommentsDto() {}

	    public CommentsDto(int cseq, int seq, String id, String ccontent, Date clogtime) {
			super();
			this.cseq = cseq;
			this.seq = seq;
			this.id = id;
			this.ccontent = ccontent;
			this.clogtime = clogtime;
		}

		public int getCseq() {
	        return cseq;
	    }

	    public void setCseq(int cseq) {
	        this.cseq = cseq;
	    }

	    public int getSeq() {
	        return seq;
	    }

	    public void setSeq(int seq) {
	        this.seq = seq;
	    }

	    public String getId() {
	        return id;
	    }

	    public void setId(String id) {
	        this.id = id;
	    }

	    public String getCcontent() {
	        return ccontent;
	    }

	    public void setCcontent(String ccontent) {
	        this.ccontent = ccontent;
	    }

	    public Date getClogtime() {
	        return clogtime;
	    }

	    public void setClogtime(Date clogtime) {
	        this.clogtime = clogtime;
	    }

		@Override
		public String toString() {
			return "CommentsDto [cseq=" + cseq + ", seq=" + seq + ", id=" + id + ", ccontent=" + ccontent
					+ ", clogtime=" + clogtime + "]";
		}
	    
	    

	}