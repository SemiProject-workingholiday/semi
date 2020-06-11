package job.model.dao;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import job.model.vo.JobSearch;

public class JobSearchDao {

	public int getListCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query = "SELECT COUNT(*) FROM HLIST ";
		
		int result = 0;
		try {
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return result;
	
	}

	public ArrayList selectList(Connection conn, int currentPage, int limit) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList list = new ArrayList();
		
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
		
		System.out.println("startRow : " + startRow + ", endRow : " + endRow);
		
		String query = "SELECT * FROM (SELECT ROWNUM RNUM1, H.* FROM HLIST H) WHERE RNUM1 BETWEEN ? AND ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,startRow);
			pstmt.setInt(2, endRow);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				JobSearch j = new JobSearch(rs.getInt("jobNo"),
											rs.getString("job"),
											rs.getString("period"),
											rs.getString("logoImg"),
											rs.getInt("recruitment"),
											rs.getString("gender"),	
											rs.getString("age"),
											rs.getString("address"),
											rs.getString("pay"),
											rs.getDate("dueDate"),
											rs.getDate("workTime"),
											rs.getString("workDay"),
											rs.getString("title"),
											rs.getString("content"),
											rs.getInt("jobReport"),
											rs.getDate("writeDate"),
											rs.getString("countryNo"),
											rs.getInt("userNo"));
					
				list.add(j);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return list;
		
		
		
	}

	public JobSearch selectJobSearch(Connection conn, int jobNo2, int userNo2) {
			PreparedStatement pstmt = null;
			ResultSet rs = null;
		
			String query = "SELECT * FROM JOBSEARCH J JOIN HLIST H ON (J.JOBNO = H.JOBNO) JOIN MEMBER M ON (M.USERNO=J.USERNO) "
							+ "WHERE USERNO = ? AND JOBNO=?";
			
			JobSearch jsearch =null;
			
			try {
				pstmt =conn.prepareStatement(query);
				pstmt.setInt(1, userNo2);
				pstmt.setInt(2, jobNo2);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()){
					 jsearch = new JobSearch(rs.getInt("jobNo"),
												rs.getString("job"),
												rs.getString("period"),
												rs.getString("logoImg"),
												rs.getInt("recruitment"),
												rs.getString("gender"),	
												rs.getString("age"),
												rs.getString("address"),
												rs.getString("pay"),
												rs.getDate("dueDate"),
												rs.getDate("workTime"),
												rs.getString("workDay"),
												rs.getString("title"),
												rs.getString("content"),
												rs.getInt("jobReport"),
												rs.getDate("writeDate"),
												rs.getString("countryNo"),
												rs.getInt("userNo"));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(pstmt);
				close(rs);
			}
		
				return jsearch;
	}

}
