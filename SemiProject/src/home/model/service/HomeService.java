package home.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import home.model.dao.HomeDao;
import home.model.vo.Home;

public class HomeService {

	public int getListCount() {
		Connection conn = getConnection();
		
		int listCount = new HomeDao().getListCount(conn);
		
		close(conn);
		
		return listCount;

	}
	
	public int getListCount2(String country, String home, String period) {
		Connection conn = getConnection();
		
		int listCount = new HomeDao().getListCount2(conn, country, home, period);
		
		close(conn);
		
		return listCount;
	}

	public ArrayList<Home> selectList(int currentPage, int limit) {
		Connection conn = getConnection();
		
		ArrayList list = new HomeDao().selectList(conn, currentPage, limit);
		
		close(conn);
		
		return list;
		
	}

	public ArrayList<Home> selectList2(int currentPage, int limit, String country, String home, String period) {
		Connection conn = getConnection();
		
		ArrayList list = new HomeDao().selectList2(conn, currentPage, limit, country, home, period);
		
		close(conn);
		
		return list;
	}

	public Home selectHome(int hNo2) {
		Connection conn = getConnection();
		Home home = new HomeDao().selectHome(conn, hNo2);
		
		close(conn);
		
		return home;
	}

	



}
