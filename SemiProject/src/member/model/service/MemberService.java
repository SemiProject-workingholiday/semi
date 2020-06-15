package member.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static common.JDBCTemplate.*;
import member.model.dao.MemberDao;
import member.model.vo.Member;

public class MemberService {

	
		
		
		public int deleteMember(String userId) {
			Connection conn = getConnection();
			
			int result = new MemberDao().deleteMember(conn,userId);
			
			
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
			
			int result = new MemberDao().updateName(conn,userName, userId);
			
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
			
			int result = new MemberDao().updatePwd(conn,userPwd,userId);
			
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
			
			int result = new MemberDao().updateEmail(conn,email,userId);
			
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
			
			int result = new MemberDao().pwdCheck(conn,userPwd,userId);
			
			close(conn);
			
			
			return result;
		}


		public int gradeCheck(String userId, String grade) {
			Connection conn = getConnection();
			
			int result = new MemberDao().gradeCheck(conn,userId,grade);
			
			close(conn);
			
			
			return result;
			
		
		}
		
		public Member loginMember(Member member) {
			Connection conn = getConnection();
			
			Member loginUser = new MemberDao().loginMember(conn, member);
			
			close(conn);
			return loginUser;
		}

		public String findUserId(String userName, String email) {
			Connection conn = getConnection();
			
			String userId = new MemberDao().findUserId(conn,userName,email);
				
			close(conn);
			return userId;
		}

		public String findUserPw(String userId, String email) {
			Connection conn = getConnection();
			String userPw = new MemberDao().findUserPw(conn,userId,email);
			
			close(conn);
			return userPw;
		}

		public int IdCheck(String userId) {
			Connection conn = getConnection();
			
			int result = new MemberDao().IdCheck(conn, userId);
			return result;
		}

		public int InsertMember(Member member) {
			Connection conn = getConnection();
			int result= new MemberDao().InsertMember(conn, member);
			
			if(result > 0) {
				commit(conn);
			}
			else {
				rollback(conn);
			}
			
			return result;
		}

		public ArrayList<Member> WSelectAllMember(int limit, int currentPage) {
			Connection conn = getConnection();
		
			ArrayList<Member> list =  new MemberDao().WSelectAllMember(conn,limit, currentPage);
			
			close(conn);
			return list;
		}

		public int SelectListCount(int grade) {
			Connection conn = getConnection();
			int listCount = new MemberDao().SelectListCount(conn,grade);		
			
			close(conn);
			
			return listCount;
		}

		public int SetSanction(int userNo) {
			Connection conn = getConnection();
			int result = new MemberDao().SetSanction(conn, userNo);
			
			if(result > 0) {
				commit(conn);
			}else {
				rollback(conn);
			}
			
			close(conn);
			return result;
		}

		public ArrayList<Member> NSelectAllMember(int limit, int currentPage) {
			Connection conn = getConnection();
			
			ArrayList<Member> list =  new MemberDao().NSelectAllMember(conn,limit, currentPage);
			
			close(conn);
			return list;
		}

		public int NSetSanction(int userNo) {
			Connection conn = getConnection();
			int result = new MemberDao().NSetSanction(conn, userNo);
			
			if(result > 0) {
				commit(conn);
			}else {
				rollback(conn);
			}
			
			close(conn);
			return result;
		}
		

	
}
