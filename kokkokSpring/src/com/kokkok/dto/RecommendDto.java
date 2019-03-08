package com.kokkok.dto;

public class RecommendDto {

	    // 추천번호 
	    private int rseq;

	    // 글번호 
	    private int seq;

	    // 아이디 
	    private String id;

	    
	    public RecommendDto() {}
	    
	    public RecommendDto(int rseq, int seq, String id) {
			super();
			this.rseq = rseq;
			this.seq = seq;
			this.id = id;
		}

		public int getRseq() {
	        return rseq;
	    }

	    public void setRseq(int rseq) {
	        this.rseq = rseq;
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

		@Override
		public String toString() {
			return "RecommendDto [rseq=" + rseq + ", seq=" + seq + ", id=" + id + "]";
		}

	    
	    

	}