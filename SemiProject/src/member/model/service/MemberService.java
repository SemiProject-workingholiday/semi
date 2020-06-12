package member.model.service;

import member.model.dao.MemberDao;
import member.model.vo.Member;
import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

public class MemberService {

	public Member loginMember(Member member) {
		Connection conn = getConnetion();
		
		Member loginUser = new MemberDao().loginMember(conn, member);
		
		close(conn);
		return loginUser;
	}

	public String findUserId(String userName, String email) {
		Connection conn = getConnetion();
		
		String userId = new MemberDao().findUserId(conn,userName,email);
			
		close(conn);
		return userId;
	}

	public String findUserPw(String userId, String email) {
		Connection conn = getConnetion();
		String userPw = new MemberDao().findUserPw(conn,userId,email);
		
		close(conn);
		return userPw;
	}

	public int IdCheck(String userId) {
		Connection conn = getConnetion();
		
		int result = new MemberDao().IdCheck(conn, userId);
		return result;
	}

	public int InsertMember(Member member) {
		Connection conn = getConnetion();
		int result= new MemberDao().InsertMember(conn, member);
		
		if(result > 0) {
			commit(conn);
		}
		else {
			rollback(conn);
		}
		
		return result;
	}

	public ArrayList<Member> SelectAllMember(int limit, int currentPage) {
		Connection conn = getConnetion();
	
		ArrayList<Member> list =  new MemberDao().SelectAllMember(conn,limit, currentPage);
		
		close(conn);
		return list;
	}

	public int SelectListCount() {
		Connection conn = getConnetion();
		int listCount = new MemberDao().SelectListCount(conn);		
		
		close(conn);
		
		return listCount;
	}


}
