package com.kokkok.dto;

public class SheduleBoardDto {
	    // 여행일정게시판번호 
	    private int sseq;

	    // 글번호 
	    private int seq;

	    // 여행일자 
	    private int tripday;

	    // 여행일자별스텝 
	    private int step;

	    
	    public SheduleBoardDto() {}
	    
	    public SheduleBoardDto(int sseq, int seq, int tripday, int step) {
			super();
			this.sseq = sseq;
			this.seq = seq;
			this.tripday = tripday;
			this.step = step;
		}

		public int getSseq() {
	        return sseq;
	    }

	    public void setSseq(int sseq) {
	        this.sseq = sseq;
	    }

	    public int getSeq() {
	        return seq;
	    }

	    public void setSeq(int seq) {
	        this.seq = seq;
	    }

	    public int getTripday() {
	        return tripday;
	    }

	    public void setTripday(int tripday) {
	        this.tripday = tripday;
	    }

	    public int getStep() {
	        return step;
	    }

	    public void setStep(int step) {
	        this.step = step;
	    }

		@Override
		public String toString() {
			return "SheduleBoardDto [sseq=" + sseq + ", seq=" + seq + ", tripday=" + tripday + ", step=" + step + "]";
		}

	    
	    
	}