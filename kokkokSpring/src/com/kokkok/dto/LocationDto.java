package com.kokkok.dto;

public class LocationDto {

	    // 장소 
	    private String location;

	    // 위도 
	    private String x;

	    // 경도 
	    private String y;

	    // 주소 
	    private String address;

	    // 글번호 
	    private int seq;

	    public LocationDto() {}
	    
	    public LocationDto(String location, String x, String y, String address, int seq) {
			super();
			this.location = location;
			this.x = x;
			this.y = y;
			this.address = address;
			this.seq = seq;
		}

		public String getLocation() {
	        return location;
	    }

	    public void setLocation(String location) {
	        this.location = location;
	    }

	    public String getX() {
	        return x;
	    }

	    public void setX(String x) {
	        this.x = x;
	    }

	    public String getY() {
	        return y;
	    }

	    public void setY(String y) {
	        this.y = y;
	    }

	    public String getAddress() {
	        return address;
	    }

	    public void setAddress(String address) {
	        this.address = address;
	    }

	    public int getSeq() {
	        return seq;
	    }

	    public void setSeq(int seq) {
	        this.seq = seq;
	    }

		@Override
		public String toString() {
			return "LocationDto [location=" + location + ", x=" + x + ", y=" + y + ", address=" + address + ", seq="
					+ seq + "]";
		}

	    
	    
	}