package member.model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import static common.JDBCTemplate.*;

import member.model.vo.Member;

public class MemberDao {

	public Member loginMember(Connection conn, Member member) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Member loginUser=null;
		
		String query="SELECT * FROM MEMBER WHERE USERID = ? AND USERPW=? AND STATUS = 'N'";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getUserPw());
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				loginUser = new Member(rs.getInt("userno"),
									   rs.getString("userid"),
									   rs.getString("userpw"),
									   rs.getString("USERNAME"),
									   rs.getDate("USERBIRTH"),
									   rs.getString("EMAIL"),
									   rs.getInt("grade"),
									   rs.getString("SANCTION"),
									   rs.getString("STATUS"),
									   rs.getString("GENDER"));
				
				
			}
			
//			System.out.println(loginUser);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return loginUser;
	}

	public String findUserId(Connection conn, String userName, String email) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String userId="";
		String query="SELECT USERID FROM MEMBER WHERE USERNAME=? AND EMAIL=? AND STATUS='N'";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userName);
			pstmt.setString(2, email);
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
				userId=rs.getString("userid");
			}
//			System.out.println(userId);
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		
		return userId;
	}

	public String findUserPw(Connection conn, String userId, String email) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String userPw="";
		String query="SELECT USERPW FROM MEMBER WHERE USERiD=? AND EMAIL=? AND STATUS='N'";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, email);
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
				userPw=rs.getString("userpw");
			}
//			System.out.println(userId);
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		
		return userPw;
	}

	public int IdCheck(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		String query = "SELECT USERID FROM MEMBER WHERE USERID = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				result=1;
			}
			System.out.println(result);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		
		
		return result;
	}

	public int InsertMember(Connection conn, Member member) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query="INSERT INTO MEMBER VALUES(MEM_NO.NEXTVAL,?,?,?,?,?,?,DEFAULT,DEFAULT,?)";
//		'eunjin2','c1234','권으','970520','flwkdf@skdf.com',2,DEFAULT,DEFAULT,'F'
		try {
			pstmt= conn.prepareStatement(query);
			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getUserPw());
			pstmt.setString(3, member.getUserName());
			pstmt.setDate(4, member.getUserBirth());
			pstmt.setString(5, member.getEmail());
			pstmt.setInt(6, member.getGrade());
			pstmt.setString(7, member.getGender());
			
			result=pstmt.executeUpdate();
//			System.out.println(result);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		return result;
	}

	public ArrayList<Member> SelectAllMember(Connection conn, int limit, int currentPage) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Member member = null;
		ArrayList<Member> list = new ArrayList<>();
		int startRow = 1+(currentPage-1)*limit;
		int endRow = currentPage*limit;
		
		
		
		  String query ="SELECT * FROM (SELECT ROWNUM RNUM, M.* FROM MEMBER M WHERE GRADE = 2 ORDER BY USERNO DESC) WHERE RNUM BETWEEN ? AND ?";
		
		try {
			pstmt = conn.prepareStatement(query);
		
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				member = new Member(
										   rs.getInt(1),
										   rs.getInt("userno"),
										   rs.getString("userid"),
										   rs.getString("userpw"),
										   rs.getString("USERNAME"),
										   rs.getDate("USERBIRTH"),
										   rs.getString("EMAIL"),
										   rs.getInt("grade"),
										   rs.getString("SANCTION"),
										   rs.getString("STATUS"),
										   rs.getString("GENDER"));
				list.add(member);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		
		return list;
	}

	public int SelectListCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int listCount = 0;
		String query="SELECT COUNT(*) FROM MEMBER WHERE GRADE=2";
		
		try {
			pstmt=conn.prepareStatement(query);
			
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				listCount = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		
		return listCount;
	}


	
	
	
	
	
	
	
	
	
	
	
	
}
