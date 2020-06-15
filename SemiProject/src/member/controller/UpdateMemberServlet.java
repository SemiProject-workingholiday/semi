package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class UpdateMemberServlet
 */
@WebServlet("/update.me")
public class UpdateMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");
		String userPwd = request.getParameter("userPwd");
		String userId = request.getParameter("userId");
		
	
		int resultName = new MemberService().updateName(userName,userId);
		int resultPwd = new MemberService().updatePwd(userPwd,userId);
		int resultEmail = new MemberService().updateEmail(email,userId);
		
		RequestDispatcher view = null;
		 if(resultName > 0 || resultPwd > 0 ||  resultEmail > 0) {
			 view = request.getRequestDispatcher("views/mypage/PIU/personalIU.jsp");
		 }
		 
		 view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}