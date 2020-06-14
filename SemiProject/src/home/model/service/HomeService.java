package home.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnetion;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import home.model.dao.HomeDao;
import home.model.vo.Home;
import home.model.vo.Img;
import home.model.vo.Reservation;
import home.model.vo.Review;

public class HomeService {

	public int getListCount() {
		Connection conn = getConnetion();
		
		int listCount = new HomeDao().getListCount(conn);
		
		close(conn);
		
		return listCount;

	}
	
	public int getListCount2(String country, String home, String period) {
		Connection conn = getConnetion();
		
		int listCount = new HomeDao().getListCount2(conn, country, home, period);
		
		close(conn);
		
		return listCount;
	}

	public ArrayList<Home> selectList(int currentPage, int limit) {
		Connection conn = getConnetion();
		
		ArrayList list = new HomeDao().selectList(conn, currentPage, limit);
		
		close(conn);
		
		return list;
		
	}
	
	public ArrayList<Img> selectImgList(int currentPage, int limit) {
		Connection conn = getConnetion();
		
		ArrayList list = null;
		
		HomeDao hDao = new HomeDao();
		
		list = hDao.selectFList(conn, currentPage, limit);
		
		close(conn);
		
		return list;
	}

	public ArrayList<Home> selectList2(int currentPage, int limit, String country, String home, String period) {
		Connection conn = getConnetion();
		
		ArrayList list = new HomeDao().selectList2(conn, currentPage, limit, country, home, period);
		
		close(conn);
		
		return list;
	}
	
	public ArrayList<Img> selectImgList2(int currentPage, int limit, String country, String home, String period) {
		Connection conn = getConnetion();
		
		ArrayList list = null;
		
		HomeDao hDao = new HomeDao();
		
		list = hDao.selectFList2(conn, currentPage, limit, country, home, period);
		
		close(conn);
		
		return list;
	}

	public Home selectHome(int hNo2) {
		Connection conn = getConnetion();
		Home home = new HomeDao().selectHome(conn, hNo2);
		
		close(conn);
		
		return home;
	}

	public int insertHome(Home h, ArrayList<Img> fileList) {
		Connection conn = getConnetion();
		
		HomeDao hDao = new HomeDao();
		
		int result = hDao.insertHome(conn, h);
		int result2 = hDao.insertHomeImg(conn, fileList);
		int result3 = hDao.insertHomeEtc(conn,h);
		
		if(result > 0 && result2 > 0 && result3 > 0) {
			commit(conn);
		} else {
			rollback(conn);
			result = 0;
		}
				
		close(conn);
		
		return result;
	}

	public ArrayList<Img> selectImgList(int hNo2) {
		Connection conn = getConnetion();
		
		ArrayList list = null;
		
		HomeDao hDao = new HomeDao();
		
		list = hDao.selectImgList(conn, hNo2);
		
		close(conn);
		
		return list;
	}

	public ArrayList<Review> insertReply(Review r) {
		Connection conn = getConnetion();
		
		HomeDao hDao = new HomeDao();
		
		int result = hDao.insertReply(conn, r);
		
		ArrayList<Review> rlist = new ArrayList<>();
		if(result > 0) {
			commit(conn);
			rlist = hDao.selectReplyList(conn, r.getHouseNo());
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return rlist;
	}

	public ArrayList<Review> selectReplyList(int hNo2) {
		Connection conn = getConnetion();
		
		ArrayList<Review> rlist = new HomeDao().selectReplyList(conn, hNo2);
		
		close(conn);
		
		return rlist;
	}

	public int reservationHome(Reservation reservation) {
		Connection conn = getConnetion();
		
		HomeDao hDao = new HomeDao();
		
		int result = hDao.reservationHome(conn, reservation);

		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
				
		close(conn);
		
		return result;
	}

	public int reservationCheck(Reservation reservation) {
		Connection conn = getConnetion();
		
		int result = new HomeDao().reservationCheck(conn, reservation);
		
		close(conn);
		
		return result;
	}

	public int updateHome(Home h, ArrayList<Img> fileList) {
		Connection conn = getConnetion();
		
		HomeDao hDao = new HomeDao();
		
		int result = hDao.updateHome(conn, h);
		int result2 = hDao.updateHomeImg(conn, fileList);
		int result3 = hDao.updateHomeEtc(conn,h);
		
		System.out.println("result : " + result + "result2 : " + result2 + "result3 : " +result3);
		
		if(result > 0 && result2 > 0 && result3 > 0) {
			commit(conn);
		} else {
			rollback(conn);
			result = 0;
		}
				
		close(conn);
		
		return result;
	}

	public int deleteHome(int hNo) {
		Connection conn = getConnetion();
		
		int result = new HomeDao().deleteMember(conn, hNo);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}


	

	



}
