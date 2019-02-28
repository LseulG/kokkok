package com.kokkok.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.kokkok.member.model.MemberDto;
import com.kokkok.util.DBConnection;
import com.kokkok.util.DBClose;

public class MemberDaoImpl implements MemberDao {

	@Override
	public int idCheck(String id) {
		int cnt = 1; // 議댁옱X �궗�슜媛��뒫
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBConnection.makeConnection();
//			String sql = "select id \r\n" + 
//						"from member\r\n" + 
//						"where id=?";
		
//			sql.append("select id \r\n");
//			sql.append("from member\r\n");
//			sql.append("where id=?");

			StringBuffer sql = new StringBuffer();
			sql.append("select count(id) \r\n");
			sql.append("from member\r\n");
			sql.append("where id=?");

			pstmt = conn.prepareStatement(sql.toString());

			pstmt.setString(1, id);

			rs = pstmt.executeQuery();
			rs.next();
//			if(rs.next()) {
//				cnt = 1; 
//			}
			cnt = rs.getInt(1); 
		} catch (SQLException e) {
			cnt = 1;
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}

		return cnt;
	}

	@Override
	public int register(MemberDto memberDto) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		int cnt = 0;

		try {

			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "insert into member(id,name,pass,email,joindate,admincode) \n";
			sql += "values(?,?,?,?,sysdate,0) \n";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, memberDto.getId());
			pstmt.setString(2, memberDto.getName());
			pstmt.setString(3, memberDto.getPass());
			pstmt.setString(4, memberDto.getEmail());

	
			cnt = pstmt.executeUpdate();


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
		return cnt;
	}

	@Override
	public MemberDto getMember(String id) {
		return null;
	}

	@Override
	public int modify(MemberDto memberDto) {
		return 0;
	}

	@Override
	public int delete(String id) {
		return 0;
	}

	@Override
	public MemberDto login(Map<String, String> map) {
		MemberDto memberDto = null;
		

		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql= new StringBuffer();
			sql.append("select id, name, email,joindate,admincode \n");
			sql.append("from member \n");
			sql.append("where id = ? and pass = ?");		
			
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, map.get("id"));		
			pstmt.setString(2, map.get("pass"));		
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				memberDto = new MemberDto();
				memberDto.setId(rs.getString("id"));
				memberDto.setName(rs.getString("name"));
				memberDto.setEmail(rs.getString("email"));
				memberDto.setJoinDate(rs.getString("joindate"));
				memberDto.setAdminCode(rs.getInt("admincode"));
			}			
		}catch(Exception e) {
			memberDto = null;
			e.printStackTrace();
		}finally {
			DBClose.close(conn, pstmt, rs);
		}		
		return memberDto;
	}

	@Override
	public List<MemberDto> memberList(Map<String, String> map) {
		return null;
	}

}
