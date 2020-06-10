package job.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import job.model.vo.Job;
import static common.JDBCTemplate.*;

public class JobDao {

	public int registJob(Connection conn, Job j) {
		PreparedStatement pstmt=null;
		int result=0;
		
		String query="INSERT INTO JOBSEARCH VALUES(SEQ_JNO,?,?,?,?,?,?,?,?,?,?,?,?,?,JOBREPORT,SYSDATE,?,?)";
		
		try {
			pstmt=conn.prepareStatement(query);
			pstmt.setString(1, j.getJobCategory());
			pstmt.setString(2, j.getPeriod());
			pstmt.setString(3, j.getLogoImg());
			pstmt.setInt(4, j.getRecruitment());
			pstmt.setString(5, j.getGender());
			pstmt.setString(6, j.getAge());
			pstmt.setString(7, j.getAddress());
			pstmt.setString(8, j.getPay());
			pstmt.setString(9, j.getDueDate());
			pstmt.setDate(10, j.getWorktime());
			pstmt.setString(11, j.getWorkday());
			pstmt.setString(12, j.getTitle());
			pstmt.setString(13, j.getContent());
			pstmt.setString(14, j.getCountryNo());
			pstmt.setInt(15, j.getUserNo());
			
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}
