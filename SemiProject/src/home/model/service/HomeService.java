package home.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import home.model.dao.HomeDao;
import home.model.vo.Home;
import job.model.dao.JobSearchDao;
import job.model.vo.JobSearch;

public class HomeService {

	public ArrayList<Home> deletehome(int reservationNo2) {
		Connection conn = getConnection();
		
		ArrayList homelist = new HomeDao().deletehome(conn,reservationNo2);
		
		
		close(conn);
		
		return homelist;

	}

	public Home selectHome(int houseNo2, int userNo2) {
		Connection conn = getConnection();
		
		Home home = new HomeDao().selectHome(conn, houseNo2, userNo2);
		
		close(conn);
		
		return home;
			
	}

	public int getListCount() {
		Connection conn = getConnection();
		
		int listCount = new HomeDao().getListCount(conn);
		
		
		close(conn);
		
		return listCount;
	
	
	
	
	}

	public ArrayList selectList(int currentPage, int limit) {
		Connection conn = getConnection();
		
		ArrayList list = new HomeDao().selectList(conn, currentPage, limit);
		
		close(conn);
		
		return list;
		
	
	
	
	}

}
