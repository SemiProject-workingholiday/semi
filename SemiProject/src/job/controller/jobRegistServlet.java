package job.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

import common.JobFileRenamePolicy;
import job.model.service.JobService;
import job.model.vo.Job;
import member.model.vo.Member;

/**
 * Servlet implementation class jobRegistServlet
 */
@WebServlet("/jobRegist.bo")
public class jobRegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public jobRegistServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int maxSize=1024*1024*10;
		
		String root=request.getSession().getServletContext().getRealPath("/");	// == web/
		String savePath=root+"job_uploadFiles/";
		
		MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8",new JobFileRenamePolicy());
		
		String title=multiRequest.getParameter("title");
		String nation=multiRequest.getParameter("nation");
		String jobCategory=multiRequest.getParameter("jobCategory");
		String period=multiRequest.getParameter("period");
		String workday=multiRequest.getParameter("workday");
		String address=multiRequest.getParameter("address");
		String recruitment=multiRequest.getParameter("recruitment");
		String gender=multiRequest.getParameter("gender");
		String pay=multiRequest.getParameter("pay");
		String age=multiRequest.getParameter("age");
		String dueDate=multiRequest.getParameter("dueDate");
		String logoImg=multiRequest.getParameter("logoImg");
		String content=multiRequest.getParameter("content");
		
//		String[] strArr = dueDate.split("-");
//		
//		int year = Integer.valueOf(strArr[0]);
//		int month = Integer.valueOf(strArr[1]);
//		int day = Integer.valueOf(strArr[2]);
//		System.out.println(year);
		
//		Date date = new Date(120, 7 );
//		Date date = new Date(year,month,day);
		
//		java.sql.Date sDate = new java.sql.Date(date.getTime());
		
		
		HttpSession session=request.getSession();
		 
		 Member loginUser=(Member)session.getAttribute("loginUser"); 
		 int writer=loginUser.getUserNo();
		 
		 Job j=new Job();
		 j.setTitle(title);
		 j.setCountryNo(nation);
		 j.setJobCategory(jobCategory);
		 j.setPeriod(period);
		 j.setWorkday(workday);
		 j.setAddress(address);
		 j.setRecruitment(Integer.valueOf(recruitment));
		 j.setGender(gender);
		 j.setPay(pay);
		 j.setAge(age);
		 j.setDueDate(dueDate); 
		 j.setLogoImg(logoImg);
		 j.setContent(content);		 
		 j.setUserNo(writer);
		 
		 int result=new JobService().insertBoard(j);
		 
		 if(result>0) {
			 response.sendRedirect("list.bo?currentPage=1");
		 }else {
			 request.setAttribute("msg", "게시판 조회 실패");
			 request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
