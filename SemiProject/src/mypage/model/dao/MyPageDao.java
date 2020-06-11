package mypage.model.dao;
import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import mypage.model.vo.Member;

public class MyPageDao {
	Member m = new Member();
	public int deleteMember(Connection conn, String userId) {

		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "UPDATE MEMBER SET STATUS = 'N' WHERE USERID=?";
			
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
		
		
		
		
	}

	public int updateName(Connection conn, String userName, String userId) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "UPDATE MEMBER SET USERNAME=? WHERE USERID =?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, m.getUserName());
			pstmt.setString(2, m.getUserId());
			
			result = pstmt.executeUpdate();
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		
		return result;
		
		
		
	}

	public int updatePwd(Connection conn, String userPwd, String userId) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "UPDATE MEMBER SET USERPW=? WHERE USER_ID =?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, m.getUserPwd());
			pstmt.setString(2, m.getUserId());
			
			result = pstmt.executeUpdate();
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		
		return result;
		
	}

	

	public int updateEmail(Connection conn, String email, String userId) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "UPDATE MEMBER SET EMAIL=? WHERE USER_ID =?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, m.getEmail());
			pstmt.setString(2, m.getUserId());
			
			result = pstmt.executeUpdate();
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		
		return result;
	}

	public int pwdCheck(Connection conn, String userPwd, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int result = 0;
		
		String query = "SELECT COUNT(*) FROM MEMBER WHERE USERPW = ? AND USERID = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userPwd);
			pstmt.setString(2, userId);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt(1);
			
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		
		
		return result;
		

	}

	public int gradeCheck(Connection conn, String userId, String grade) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int result = 0;
		
		String query = "SELECT GRADE = ? FROM MEMBER WHERE USERID = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, grade);
			pstmt.setString(2, userId);
			rs=pstmt.executeQuery();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		
		
		return result;
		
	}

}
