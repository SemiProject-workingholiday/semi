package member.model.service;

import member.model.dao.MemberDao;
import member.model.vo.Member;
import static common.JDBCTemplate.*;

import java.sql.Connection;

public class MemberService {

	public Member loginMember(Member member) {
		Connection conn = getConnetion();
		
		Member loginUser = new MemberDao().loginMember(conn, member);
		
		close(conn);
		return loginUser;
	}

}
