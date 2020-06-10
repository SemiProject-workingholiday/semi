package mypage.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;

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


		public int updateName(Member member) {
			Connection conn = getConnection();
			
			int result = new MyPageDao().updateName(conn,member);
			
			if(result>0) {
				commit(conn);
			}else {
				rollback(conn);
			}
			close(conn);
			
			return result;
		}


		public int updatePwd(Member member) {
			Connection conn = getConnection();
			
			int result = new MyPageDao().updatePwd(conn,member);
			
			if(result>0) {
				commit(conn);
			}else {
				rollback(conn);
			}
			close(conn);
			
			return result;
		}


		public int updatePhone(Member member) {
			Connection conn = getConnection();
			
			int result = new MyPageDao().updatePhone(conn,member);
			
			if(result>0) {
				commit(conn);
			}else {
				rollback(conn);
			}
			close(conn);
			
			return result;
		}


		public int updateEmail(Member member) {
			Connection conn = getConnection();
			
			int result = new MyPageDao().updateEmail(conn,member);
			
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
		

	
}
