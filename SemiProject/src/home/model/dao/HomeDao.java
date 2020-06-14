package home.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import home.model.vo.Home;
import home.model.vo.Img;
import home.model.vo.Reservation;
import home.model.vo.Review;
import oracle.security.o3logon.b;

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
		
		String query = "SELECT COUNT(*) FROM HOME WHERE PERIOD = ? AND COUNTRYNO = ? AND TYPE = ?";
		
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
	
	public ArrayList selectFList(Connection conn, int currentPage, int limit) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Img at = null;
		ArrayList list = new ArrayList();
		
		// 대표 이미지  SELECT 쿼리
		String query = "SELECT * FROM HOMEPHOTO WHERE FILE_LEVEL = 0";
		
		try {
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				at = new Img(rs.getInt("imgno"),
							rs.getInt("houseno"),
							rs.getString("img"),
							rs.getInt("file_level")
							);
				list.add(at);
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
	
	public ArrayList selectFList2(Connection conn, int currentPage, int limit, String country, String home,
			String period) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Img at = null;
		ArrayList list = new ArrayList();
		
		int startRow = (currentPage-1) * limit + 1;
		int endRow = currentPage * limit;
		
		// 대표 이미지  SELECT 쿼리
		String query = "SELECT IMGNO, IMG, FILE_LEVEL, P.HOUSENO\r\n" + 
				"FROM (SELECT ROWNUM RNUM, H.* FROM HOME H WHERE PERIOD = ? AND COUNTRYNO = ? AND TYPE = ? ORDER BY HOUSENO DESC) H\r\n" + 
				"JOIN HOMEPHOTO P ON(H.HOUSENO = P.HOUSENO)\r\n" + 
				"WHERE FILE_LEVEL = 0 AND RNUM BETWEEN ? AND ?";
		
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, period);
			pstmt.setInt(2, Integer.valueOf(country));
			pstmt.setString(3, home);
			pstmt.setInt(4, startRow);
			pstmt.setInt(5, endRow);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				at = new Img(rs.getInt("imgno"),
							rs.getInt("houseno"),
							rs.getString("img"),
							rs.getInt("file_level")
							);
				list.add(at);
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
								rs.getString("pet"),
								rs.getInt("userno"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		
		return home;
	}
	
	public ArrayList selectImgList(Connection conn, int hNo2) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Img at = null;
		ArrayList list = new ArrayList();
		
		String query = "SELECT IMGNO, HOUSENO, IMG, FILE_LEVEL FROM HOMEPHOTO WHERE HOUSENO = ?";
		
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, hNo2);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				at = new Img(rs.getInt("imgno"),
							rs.getInt("houseno"),
							rs.getString("img"),
							rs.getInt("file_level")
							);
				list.add(at);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return list;
	}

	public int insertHomeImg(Connection conn, ArrayList<Img> fileList) {
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = "INSERT INTO HOMEPHOTO VALUES(SEQ_HOMEIMG.NEXTVAL,SEQ_HOME.CURRVAL,?,?)";
		
		try {
			for(int i = 0; i < fileList.size(); i++) {
				Img at = fileList.get(i);
			
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, at.getImg());
				pstmt.setInt(2, at.getFileLevel());
				
				result += pstmt.executeUpdate();
				
			} 
		}catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int insertHome(Connection conn, Home h) {
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = "INSERT INTO HOME VALUES (SEQ_HOME.NEXTVAL,?,?,?,?,?,DEFAULT,?,DEFAULT,?,?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, h.getType());
			pstmt.setString(2, h.getPeriod());
			pstmt.setInt(3, h.getFee());
			pstmt.setString(4, h.getTitle());
			pstmt.setString(5, h.getContent());
			pstmt.setString(6, h.getAddress());
			pstmt.setInt(7, h.getCountryNo());
			pstmt.setInt(8, h.getWriterNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int insertHomeEtc(Connection conn, Home h) {
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = "INSERT INTO HOMEETC VALUES (SEQ_HOME.CURRVAL,?,?,?,?,?,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, h.getEssentialitem());
			pstmt.setString(2, h.getWifi());
			pstmt.setString(3, h.getTelevision());
			pstmt.setString(4, h.getHeater());
			pstmt.setString(5, h.getAirconditional());
			pstmt.setString(6, h.getLivingroom());
			pstmt.setString(7, h.getDiningroom());
			pstmt.setString(8, h.getBathroom());
			pstmt.setString(9, h.getPet());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int insertReply(Connection conn, Review r) {
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = "INSERT INTO HOMEREVIEW VALUES(SEQ_RID.NEXTVAL,?,?,SYSDATE,DEFAULT,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, r.getImg());
			pstmt.setString(2, r.getContent());
			pstmt.setInt(3, r.getHouseNo());
			pstmt.setInt(4, r.getScore());
			pstmt.setInt(5, r.getUserNo());
			
			result = pstmt.executeUpdate();
			
			System.out.println("댓글 잘 들어갔는지 Dao에서 확인 : " + result);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<Review> selectReplyList(Connection conn, int houseNo) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<Review> rlist = new ArrayList<Review>();
		
		String query = "SELECT * FROM RLIST WHERE HOUSENO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, houseNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {

				rlist.add(new Review(rs.getInt("reviewno"),
									rs.getString("img"),
									rs.getString("content"),
									rs.getDate("writedate"),
									rs.getInt("report"),
									rs.getInt("houseno"),
									rs.getInt("score"),
									rs.getInt("userno"),
									rs.getString("username")));
			}
//			System.out.println(rlist);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return rlist;
	}

	public int reservationHome(Connection conn, Reservation reservation) {
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = "INSERT INTO HOMERESERVATION VALUES (SEQ_HOMERESERVATION.NEXTVAL,?,?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, reservation.getHouseNo());
			pstmt.setInt(2, reservation.getUserNo());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int reservationCheck(Connection conn, Reservation reservation) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query = "SELECT COUNT(*) FROM HOMERESERVATION WHERE HOUSENO = ? AND USERNO = ?";
		
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, reservation.getHouseNo());
			pstmt.setInt(2, reservation.getUserNo());
			
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

	public int updateHome(Connection conn, Home h) {
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = "UPDATE HOME SET TYPE = ?, PERIOD = ?, FEE = ?, TITLE = ?, CONTENT = ?, REPORT = ?, ADDRESS = ?, WRITEDATE = SYSDATE, COUNTRYNO = ? WHERE HOUSENO = ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, h.getType());
			pstmt.setString(2, h.getPeriod());
			pstmt.setInt(3, h.getFee());
			pstmt.setString(4, h.getTitle());
			pstmt.setString(5, h.getContent());
			pstmt.setInt(6, h.getReport());
			pstmt.setString(7, h.getAddress());
			pstmt.setInt(8, h.getCountryNo());
			pstmt.setInt(9, h.gethNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int updateHomeImg(Connection conn, ArrayList<Img> fileList) {
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = "UPDATE HOMEPHOTO SET IMG = ?, FILE_LEVEL = ? WHERE HOUSENO = ? AND IMGNO = ?";
		
		try {
			for(int i = 0; i < fileList.size(); i++) {
				Img at = fileList.get(i);
			
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, at.getImg());
				pstmt.setInt(2, at.getFileLevel());
				pstmt.setInt(3, at.getHouseNo());
				pstmt.setInt(4, at.getImgNo());
				
				result += pstmt.executeUpdate();
				
			} 
		}catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int updateHomeEtc(Connection conn, Home h) {
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		String query = "UPDATE HOMEETC SET ESSENTIALITEM = ?, WIFI = ?, TELEVISION = ?, HEATER = ?, AIRCONDITIONAL = ?, LIVINGROOM = ?, DININGROOM = ?, BATHROOM = ?, PET = ? WHERE HOUSENO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, h.getEssentialitem());
			pstmt.setString(2, h.getWifi());
			pstmt.setString(3, h.getTelevision());
			pstmt.setString(4, h.getHeater());
			pstmt.setString(5, h.getAirconditional());
			pstmt.setString(6, h.getLivingroom());
			pstmt.setString(7, h.getDiningroom());
			pstmt.setString(8, h.getBathroom());
			pstmt.setString(9, h.getPet());
			pstmt.setInt(10, h.gethNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteMember(Connection conn, int hNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "DELETE FROM HOME WHERE HOUSENO = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setInt(1, hNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	

	


}
