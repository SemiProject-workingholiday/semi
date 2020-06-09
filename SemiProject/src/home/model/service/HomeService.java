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

	public ArrayList<Home> selectList(int currentPage, int limit) {
		Connection conn = getConnection();
		
		ArrayList list = new HomeDao().selectList(conn, currentPage, limit);
		
		close(conn);
		
		return list;
	}

}
