package com.kokkok.member.model;

public class MemberDto {
	private String id;
	private String name;
	private String pass;
	private String email;
	private String joinDate;
	private int adminCode;
	
	

	public int getAdminCode() {
		return adminCode;
	}

	public void setAdminCode(int adminCode) {
		this.adminCode = adminCode;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

	@Override
	public String toString() {
		return "MemberDto [id=" + id + ", name=" + name + ", pass=" + pass + ", email=" + email + ", joinDate="
				+ joinDate + "]";
	}
	
	

}
