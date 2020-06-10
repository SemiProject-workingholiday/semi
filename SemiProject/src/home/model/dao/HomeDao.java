package home.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import home.model.vo.Home;

public class HomeDao {

	public int getListCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query = "SELECT COUNT(*) FROM HOME";
		
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
	
	public int getListCount2(Connection conn, String country, String home, String period) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query = "SELECT COUNT(*) FROM HOME WHERE PERIOD = ? AND COUNTRYNO = ? AND TYPE = ?;";
		
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, period);
			pstmt.setInt(2, Integer.valueOf(country));
			pstmt.setString(3, home);
			
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
		
		ArrayList list = new ArrayList();	// ArrayList는 꼭 객체 만들어주기 (null x)
		
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
		
		String query = "SELECT RNUM , HOUSENO, TYPE, PERIOD, FEE, TITLE, CONTENT, REPORT, ADDRESS, WRITEDATE, COUNTRYNO, USERNO FROM (SELECT ROWNUM RNUM, H.* FROM HOME H ORDER BY HOUSENO DESC) WHERE RNUM BETWEEN ? AND ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Home h = new Home(rs.getInt("houseno"),
									rs.getString("type"),
									rs.getString("period"),
									rs.getInt("fee"),
									rs.getString("title"),
									rs.getString("content"),
									rs.getInt("report"),
									rs.getString("address"),
									rs.getDate("writeDate"),
									rs.getInt("countryNo"),
									rs.getInt("userNo"));
			
				
				list.add(h);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return list;
	}

	public ArrayList selectList2(Connection conn, int currentPage, int limit, String country, String home,
			String period) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList list = new ArrayList();	// ArrayList는 꼭 객체 만들어주기 (null x)
		
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
		
		String query = "SELECT RNUM , HOUSENO, TYPE, PERIOD, FEE, TITLE, CONTENT, REPORT, ADDRESS, WRITEDATE, COUNTRYNO, USERNO FROM (SELECT ROWNUM RNUM, H.* FROM HOME H WHERE PERIOD = ? AND COUNTRYNO = ? AND TYPE = ? ORDER BY HOUSENO DESC) WHERE RNUM BETWEEN ? AND ?";
		
		try {
			pstmt = conn.prepareStatement(query);
		
			pstmt.setString(1, period);
			pstmt.setInt(2, Integer.valueOf(country));
			pstmt.setString(3, home);
			pstmt.setInt(4, startRow);
			pstmt.setInt(5, endRow);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Home h = new Home(rs.getInt("houseno"),
									rs.getString("type"),
									rs.getString("period"),
									rs.getInt("fee"),
									rs.getString("title"),
									rs.getString("content"),
									rs.getInt("report"),
									rs.getString("address"),
									rs.getDate("writeDate"),
									rs.getInt("countryNo"),
									rs.getInt("userNo"));
			
				
				list.add(h);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return list;
	}

	public Home selectHome(Connection conn, int hNo2) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Home home = null;
		
		String query = "SELECT * FROM HDETAIL WHERE HOUSENO = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, hNo2);
			
			rs = pstmt.executeQuery();

			if(rs.next()) {
				home = new Home(rs.getInt("houseno"),
								rs.getString("type"),
								rs.getString("period"),
								rs.getInt("fee"),
								rs.getString("title"),
								rs.getString("content"),
								rs.getString("address"),
								rs.getDate("writeDate"),
								rs.getString("country"),
								rs.getString("userName"),
								rs.getString("essentialitem"),
								rs.getString("wifi"),
								rs.getString("television"),
								rs.getString("heater"),
								rs.getString("airconditional"),
								rs.getString("livingroom"),
								rs.getString("diningroom"),
								rs.getString("bathroom"),
								rs.getString("pet"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		
		return home;
	}

	



}
