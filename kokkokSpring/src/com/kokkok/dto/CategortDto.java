package com.kokkok.dto;

//카테고리 
public class CategortDto {

 // 카테고리번호 
 private int ccode;

 // 카테고리이름 
 private String cname;

 
 public CategortDto() {}
 
 public CategortDto(int ccode, String cname) {
	this.ccode = ccode;
	this.cname = cname;
}

public int getCcode() {
     return ccode;
 }

 public void setCcode(int ccode) {
     this.ccode = ccode;
 }

 public String getCname() {
     return cname;
 }

 public void setCname(String cname) {
     this.cname = cname;
 }

@Override
public String toString() {
	return "CategortDto [ccode=" + ccode + ", cname=" + cname + "]";
}

 
 
}