package job.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import job.model.dao.JobSearchDao;
import job.model.vo.JobSearch;

import static common.JDBCTemplate.*;
public class JobSearchService {

	public int getListCount() {
		Connection conn = getConnection();
		
		int listCount = new JobSearchDao().getListCount(conn);
		
		
		close(conn);
		
		return listCount;
		
		
	}

	public ArrayList selectList(int currentPage, int limit) {
		Connection conn = getConnection();
		
		ArrayList list = new JobSearchDao().selectList(conn, currentPage, limit);
		
		close(conn);
		
		return list;
		
	
	}

	public JobSearch selectJobSearch(int jobNo2, int userNo2) {
		Connection conn = getConnection();
		
		JobSearch jsearch = new JobSearchDao().selectJobSearch(conn, jobNo2, userNo2);
		
		close(conn);
		
		return jsearch;
		
	}

}
