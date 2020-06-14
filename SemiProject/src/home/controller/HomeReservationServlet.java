package home.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import home.model.service.HomeService;
import home.model.vo.Reservation;
import member.model.vo.Member;

/**
 * Servlet implementation class HomeReservationServlet
 */
@WebServlet("/reservation.ho")
public class HomeReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeReservationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member loginUser = (Member)session.getAttribute("loginUser");
		HomeService hService = new HomeService();
		
		int userNo = loginUser.getUserNo();
		String hNo = request.getParameter("hNo");
		int hNo2 = Integer.valueOf(hNo);
		
		int checkResult = hService.reservationCheck(new Reservation(userNo, hNo2));
		int result = 0;
			
		if(checkResult == 0) {
			result = hService.reservationHome(new Reservation(userNo, hNo2));
			if(result > 0) {
				response.sendRedirect("detail.ho?hNo="+hNo);
			} else {
				System.out.println("예약 실패");
			}
		} else {
			System.out.println("예약 한건 존재");
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
