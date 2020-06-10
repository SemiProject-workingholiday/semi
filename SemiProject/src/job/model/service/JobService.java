package job.model.service;

import java.sql.Connection;

import job.model.dao.JobDao;
import job.model.vo.Job;
import static common.JDBCTemplate.*;

public class JobService {

	public int insertBoard(Job j) {
		Connection conn=getConnection();
		
		int result=new JobDao().registJob(conn,j);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}

}
