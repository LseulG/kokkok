package com.kokkok.dto;

import java.util.Date;

public class MemberDto {

	    // 아이디 
	    private String id;

	    // 이름 
	    private String name;

	    // 이메일 
	    private String email;

	    // 비밀번호 
	    private String pass;

	    // 회원가입일 
	    private Date joindate;

	    // 등급코드 
	    private Integer admincode;

	    public MemberDto() {}
	    
	    public MemberDto(String id, String name, String email, String pass, Date joindate, Integer admincode) {
			super();
			this.id = id;
			this.name = name;
			this.email = email;
			this.pass = pass;
			this.joindate = joindate;
			this.admincode = admincode;
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

	    public String getEmail() {
	        return email;
	    }

	    public void setEmail(String email) {
	        this.email = email;
	    }

	    public String getPass() {
	        return pass;
	    }

	    public void setPass(String pass) {
	        this.pass = pass;
	    }

	    public Date getJoin() {
	        return joindate;
	    }

	    public void setJoindate(Date joindate) {
	        this.joindate = joindate;
	    }

	    public Integer getAdmincode() {
	        return admincode;
	    }

	    public void setAdmincode(Integer admincode) {
	        this.admincode = admincode;
	    }

		@Override
		public String toString() {
			return "MemberDto [id=" + id + ", name=" + name + ", email=" + email + ", pass=" + pass + ", joindate="
					+ joindate + ", admincode=" + admincode + "]";
		}
	    
	    

	}