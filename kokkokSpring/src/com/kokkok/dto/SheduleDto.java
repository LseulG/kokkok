package com.kokkok.dto;

public class SheduleDto {
	
	    // 여행일정게시판번호 
	    private int sseq;

	    // 시작날짜 
	    private String startString;

	    // 끝날짜 
	    private String endString;

	    // 원래사진 
	    private String originpicture;

	    // 저장폴더 
	    private String savefolder;

	    // 저장사진 
	    private String savepicture;

	    // 여행인원 
	    private String persons;

	    // 여행테마 
	    private String thema;

	    public SheduleDto() {}
	    
	    public SheduleDto(int sseq, String startString, String endString, String originpicture, String savefolder,
				String savepicture, String persons, String thema) {
			super();
			this.sseq = sseq;
			this.startString = startString;
			this.endString = endString;
			this.originpicture = originpicture;
			this.savefolder = savefolder;
			this.savepicture = savepicture;
			this.persons = persons;
			this.thema = thema;
		}

		public int getSseq() {
	        return sseq;
	    }

	    public void setSseq(int sseq) {
	        this.sseq = sseq;
	    }

	    public String getStartString() {
	        return startString;
	    }

	    public void setStartString(String startString) {
	        this.startString = startString;
	    }

	    public String getEndString() {
	        return endString;
	    }

	    public void setEndString(String endString) {
	        this.endString = endString;
	    }

	    public String getOriginpicture() {
	        return originpicture;
	    }

	    public void setOriginpicture(String originpicture) {
	        this.originpicture = originpicture;
	    }

	    public String getSavefolder() {
	        return savefolder;
	    }

	    public void setSavefolder(String savefolder) {
	        this.savefolder = savefolder;
	    }

	    public String getSavepicture() {
	        return savepicture;
	    }

	    public void setSavepicture(String savepicture) {
	        this.savepicture = savepicture;
	    }

	    public String getPersons() {
	        return persons;
	    }

	    public void setPersons(String persons) {
	        this.persons = persons;
	    }

	    public String getThema() {
	        return thema;
	    }

	    public void setThema(String thema) {
	        this.thema = thema;
	    }

		@Override
		public String toString() {
			return "SheduleDto [sseq=" + sseq + ", startString=" + startString + ", endString=" + endString
					+ ", originpicture=" + originpicture + ", savefolder=" + savefolder + ", savepicture=" + savepicture
					+ ", persons=" + persons + ", thema=" + thema + "]";
		}
	    
	    

	   
	}