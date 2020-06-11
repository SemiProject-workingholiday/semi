package mypage.model.service;

import java.sql.Connection;
import static common.JDBCTemplate.*;
import mypage.model.dao.MyPageDao;
import mypage.model.vo.Member;

public class MyPageService {

	
		
		
		public int deleteMember(String userId) {
			Connection conn = getConnection();
			
			int result = new MyPageDao().deleteMember(conn,userId);
			
			
			if(result>0) {
				commit(conn);
			}else {
				rollback(conn);
			}
			
			
			close(conn);
			return result;
			
			
			
			
		}


		public int updateName(String userName, String userId) {
			Connection conn = getConnection();
			
			int result = new MyPageDao().updateName(conn,userName, userId);
			
			if(result>0) {
				commit(conn);
			}else {
				rollback(conn);
			}
			close(conn);
			
			return result;
		}


		public int updatePwd(String userPwd, String userId) {
			Connection conn = getConnection();
			
			int result = new MyPageDao().updatePwd(conn,userPwd,userId);
			
			if(result>0) {
				commit(conn);
			}else {
				rollback(conn);
			}
			close(conn);
			
			return result;
		}


		
		public int updateEmail(String email, String userId) {
			Connection conn = getConnection();
			
			int result = new MyPageDao().updateEmail(conn,email,userId);
			
			if(result>0) {
				commit(conn);
			}else {
				rollback(conn);
			}
			close(conn);
			
			return result;
		}


		public int pwdCheck(String userPwd, String userId) {
			Connection conn = getConnection();
			
			int result = new MyPageDao().pwdCheck(conn,userPwd,userId);
			
			close(conn);
			
			
			return result;
		}


		public int gradeCheck(String userId, String grade) {
			Connection conn = getConnection();
			
			int result = new MyPageDao().gradeCheck(conn,userId,grade);
			
			close(conn);
			
			
			return result;
			
		
		}
		

	
}
