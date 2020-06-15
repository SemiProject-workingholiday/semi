package home.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import home.model.vo.Home;
import home.model.vo.HomeReservator;

public class HomeDao {

	public ArrayList deletehome(Connection conn, int reservationNo2) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList homelist = new ArrayList();
		
		
		String query = "DELETE FROM (SELECT * FROM HOMERESERVATION HR JOIN HOME H ON (HR.HOUSENO = H.HOUSENO) AND (H.USERNO = HR.USERNO)" + 
						"WHERE RESERVATIONNO = ? )";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,reservationNo2);
		
			
			rs = pstmt.executeQuery();
			Home h = null;
			
				 h = new Home(rs.getInt("userNo"),
											rs.getInt("houseNo"),
											rs.getString("type"),
											rs.getString("period"),
											rs.getString("title"),
											rs.getString("fee"),	
											rs.getString("address"),
											rs.getString("essentialItem"),
											rs.getString("wifi"),
											rs.getString("television"),
											rs.getString("heater"),
											rs.getString("airConditional"),
											rs.getString("livingroom"),
											rs.getString("bathroom"),
											rs.getString("pet"),
											rs.getString("userName"),
											rs.getString("email"),
											rs.getInt("reservationNo"));
				 homelist.add(h);
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return homelist;
	
	
	}

	public Home selectHome(Connection conn, int houseNo2, int userNo2) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		String query = "SELECT * FROM HOME H JOIN HOMERESERVATION HR ON HR.USERNO = H.USERNO AND HR.HOUSENO = H.HOUSENO"
				+ "WHERE HR.HOUSENO =? AND HR.USERNO = ? ; ";
		
		Home home =null;
		
		try {
			pstmt =conn.prepareStatement(query);
			pstmt.setInt(1, houseNo2);
			pstmt.setInt(2, userNo2);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				 home = new Home(rs.getInt("userNo"),
							rs.getInt("houseNo"),
							rs.getString("type"),
							rs.getString("period"),
							rs.getString("title"),
							rs.getString("fee"),	
							rs.getString("address"),
							rs.getString("essentialItem"),
							rs.getString("wifi"),
							rs.getString("television"),
							rs.getString("heater"),
							rs.getString("airConditional"),
							rs.getString("livingroom"),
							rs.getString("bathroom"),
							rs.getString("pet"),
							rs.getString("userName"),
							rs.getString("email"),
							rs.getInt("reservationNo"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
	
			return home;
	}

	public int getListCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query = "SELECT COUNT(*) FROM HRESERVATIONLIST ";
		
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
		
		
		String query = "SELECT * FROM (SELECT H.* FROM HRESERVATIONLIST H) WHERE RNUM BETWEEN ? AND ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,startRow);
			pstmt.setInt(2, endRow);
			
			rs = pstmt.executeQuery();
			HomeReservator home = null;
			while(rs.next()){
				 home = new HomeReservator(
						    rs.getInt("reservationNo"),
						 	rs.getString("title"),
							rs.getString("type"),
							rs.getString("period"),
							rs.getString("userName"),
							rs.getString("email"));

				list.add(home);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return list;
		
	}

}
