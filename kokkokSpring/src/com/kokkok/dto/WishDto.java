package com.kokkok.dto;

//찜 
public class WishDto {

 // 찜번호 
 private int wseq;

 // 글번호 
 private int seq;

 // 아이디 
 private String id;

 public WishDto() {}
 
 public WishDto(int wseq, int seq, String id) {
	super();
	this.wseq = wseq;
	this.seq = seq;
	this.id = id;
}

public int getWseq() {
     return wseq;
 }

 public void setWseq(int wseq) {
     this.wseq = wseq;
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
	return "WishDto [wseq=" + wseq + ", seq=" + seq + ", id=" + id + "]";
}

 
 

}