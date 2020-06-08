package member.model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
									   rs.getString("PHONE"),
									   rs.getString("EMAIL"),
									   rs.getInt("grade"),
									   rs.getString("SANCTION"),
									   rs.getString("STATUS"),
									   rs.getString("GENDER"));
				
				
			}
			
			System.out.println(loginUser);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return loginUser;
	}

}
