package home.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import home.model.service.HomeService;
import home.model.vo.Home;

/**
 * Servlet implementation class HomeDetailServlet
 */
@WebServlet("/detail.ho")
public class HomeDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hNo = request.getParameter("hNo");
		System.out.println(hNo);
		int hNo2 = Integer.valueOf(hNo);
		

		Home home = new HomeService().selectHome(hNo2);
		
//		System.out.println("내가 누른 게시글 정보 : " + board);
		
//		ArrayList<Reply> rlist = new BoardService().selectReplyList(bid2);
		
		// ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
		
		
		if(home != null) {
			request.setAttribute("home", home);
//			request.setAttribute("rlist", rlist);
			request.getRequestDispatcher("views/home/homeDetailView.jsp").forward(request, response);
		} else {
			System.out.println("실패");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
