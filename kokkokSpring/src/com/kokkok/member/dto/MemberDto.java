package com.kokkok.member.dto;

import java.util.Date;

public class MemberDto {

	private String userid;
	private String username;
	private String userpass;
	private String useremail;
	private Date joinDate;
	private int adminCode;
	
	
	public MemberDto() {}

	

	public MemberDto(String userid, String username, String userpass, String useremail, Date joinDate, int adminCode) {
		this.userid = userid;
		this.username = username;
		this.userpass = userpass;
		this.useremail = useremail;
		this.joinDate = joinDate;
		this.adminCode = adminCode;
	}



	public String getUserid() {
		return userid;
	}


	public void setUserid(String userid) {
		this.userid = userid;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getUserpass() {
		return userpass;
	}


	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}


	public String getUseremail() {
		return useremail;
	}


	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}


	public Date getJoinDate() {
		return joinDate;
	}


	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}


	public int getAdminCode() {
		return adminCode;
	}


	public void setAdminCode(int adminCode) {
		this.adminCode = adminCode;
	}


	@Override
	public String toString() {
		return "MemberDto [userid=" + userid + ", username=" + username + ", userpass=" + userpass + ", useremail="
				+ useremail + ", joinDate=" + joinDate + ", adminCode=" + adminCode + "]";
	}
	
	



}
