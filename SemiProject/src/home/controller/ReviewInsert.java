package home.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import home.model.service.HomeService;
import home.model.vo.Home;
import home.model.vo.Img;
import home.model.vo.Review;

/**
 * Servlet implementation class ReviewInsert
 */
@WebServlet("/insertReview.ho")
public class ReviewInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maxSize = 1024 * 1024 * 10;
		
		String root = request.getSession().getServletContext().getRealPath("/");
		String savePath = root + "home_uploadFiles/";
		
		MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		
		String writer = request.getParameter("writer");
		int hNo = Integer.valueOf(request.getParameter("hNo"));
		String content = request.getParameter("content");
		String img = request.getParameter("");
		
		ArrayList<String> saveFiles = new ArrayList<>();
		ArrayList<String> originFiles = new ArrayList<>();
		
		Enumeration<String> files = multiRequest.getFileNames();

		while(files.hasMoreElements()) {
			String name = files.nextElement();
			
			if(multiRequest.getFilesystemName(name) != null) {
				saveFiles.add(multiRequest.getFilesystemName(name));
				originFiles.add(multiRequest.getOriginalFileName(name));
			}
		}
		
		
//		ArrayList<Review> rlist = new HomeService().insertReply(r);
		
		response.setContentType("application/json;");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
//		gson.toJson(rlist,response.getWriter());
		
		

		
		System.out.println(saveFiles.size());
		
		ArrayList<Img> fileList = new ArrayList<Img>();
		
		for(int i = originFiles.size()-1; i>=0; i--) {
			Img at = new Img();
			at.setImg(originFiles.get(i));
			
			if(i == originFiles.size()-1) {
				at.setFileLevel(0);
			} else {
				at.setFileLevel(1);
			}
			
			fileList.add(at);
		}
		
//		System.out.println(fileList);
//		
//		Review r = new Review(content,hNo,writer);
//		
//		int result = new HomeService().insertHome(h,fileList);
		
//		if(result > 0) {
//			response.sendRedirect("list.ho?currentPage=1");
//		} else {
//			System.out.println("게시글 등록 실패");
//		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
