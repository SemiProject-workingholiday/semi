package job.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

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
//		 -------------------------------------------------------------
		//게시글원글등록처리용컨트롤러
		//request.setCharacterEncoding("utf-8");
		//업로드할파일의용량제한:10Mbyte로제한한다면
		int maxSize=1024*1024*10;
		RequestDispatcher view=null;
		//enctype="multipart/form-data"로전송되었는지확인
		if (!ServletFileUpload.isMultipartContent(request)) {
			view=request.getRequestDispatcher("views/board/boardError.jsp");
			request.setAttribute("message","formenctype속성사용안됨!");
			view.forward(request,response);
		}
		//해당컨테이너의구동중인웹애플리케이션의루트경로알아냄
		String root=request.getSession().getServletContext().getRealPath("/");
		//업로드되는파일이저장될폴더명과경로연결처리
		String savePath=root+"job_uploadFiles/";
		//web/board_upload로지정함
		
		// request를MultipartRequest객체로변환함
		MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8",new JobFileRenamePolicy());
		Job j=new Job();
		
		HttpSession session=request.getSession();
		 
		Member loginUser=(Member)session.getAttribute("loginUser"); 
		String writer=loginUser.getUserId();
		
		j.setTitle(multiRequest.getParameter("title"));									// 제목
		j.setCountry(multiRequest.getParameter("nation"));							// 나라
		j.setJobCategory(multiRequest.getParameter("jobCategory"));						// 직종
		j.setPeriod(multiRequest.getParameter("period"));								// 기간
		j.setWorkday(multiRequest.getParameter("workday"));								// 요일선택
		j.setAddress(multiRequest.getParameter("address"));								// 주소
		j.setRecruitment(Integer.valueOf(multiRequest.getParameter("recruitment")));	// 모집인원
		j.setGender(multiRequest.getParameter("gender"));								// 성별
		j.setPay(multiRequest.getParameter("pay"));										// 시급
		j.setAge(multiRequest.getParameter("age"));										// 연령
		j.setDueDate(multiRequest.getParameter("dueDate")); 							// 마감일
//		j.setWorktime(multiRequest.getParameter("worktime"));	 						// 근무시간
		j.setContent(multiRequest.getParameter("content"));		 						// 상세내용
		j.setUserId(multiRequest.getParameter("writer"));								// 작성자
		
		
		j.setLogoImg(multiRequest.getFilesystemName("logoImg"));						// 이미지파일첨부(원본파일명)
		j.setChangeName(multiRequest.getParameter("changeName"));						// 바꾼파일명
		j.setFilePath(multiRequest.getParameter("filePath"));							// 파일주소
		
//		String originFileName=multiRequest.getFilesystemName("upfile");
		
//		if (originFileName!=null) {
		//업로도된파일명을"년월일시분초.확장자"로변경함
//		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
//		String renameFileName=sdf.format(new java.sql.Date(System.currentTimeMillis()))+"."
			
//		+originFileName.substring(originFileName.lastIndexOf(".")+1);
		//파일명바꾸기하려면File객체의renameTo()사용함
//		File originFile=new File(savePath+"\\"+originFileName);
//		File renameFile=new File(savePath+"\\"+renameFileName);
		//파일이름바꾸기실행>>실패할경우직접바꾸기함
		//새파일만들고원래파일내용읽어서복사기록하고
		//원파일삭제함
//		if (!originFile.renameTo(renameFile)) {
//			int read=-1;
//			byte[]buf=new byte[1024];
//			//한번에읽을배열크기지정
//			FileInputStream fin=new FileInputStream(originFile);
//			FileOutputStream fout=new FileOutputStream(renameFile);
//			while((read=fin.read(buf,0,buf.length)) !=-1) {
//				fout.write(buf,0,read);
//			}
//			fin.close();
//			fout.close();
//			originFile.delete(); //원본파일삭제함
//		}
//		j.setBoardOriginalFileName(originFileName);
//		j.setBoardRenameFileName(renameFileName);
//		
//		j.setLogoImg(originFileName);
//		j.setChangeName(renameFileName);
//		}
		
		// 저장할 파일의 이름을 지닐 리스트
//		ArrayList<String> saveFiles=new ArrayList<>();
		// 원본 파일의 이름을 지닐 리스트
//		ArrayList<String> originFiles=new ArrayList();
		
//		Enumeration<String> files=multiRequest.getFileNames();
//		while(files.hasMoreElements()) {
			
			// Enumeration은 전송 순서 역순으로 파일을 가져온다.
//			String name=files.nextElement();
			
			if(multiRequest.getFilesystemName("logoImg") !=null) {
				// getFilesystemName() - 다른 이름으로 변환된 파일명(rename된 파일명)을 가져옴
				String saveFile=multiRequest.getFilesystemName("logoImg");
				
				// getOriginalFileName() - 실제 사용자가 업로드 했던 파일명
				String originFile=multiRequest.getOriginalFileName("logoImg");
			}
//		}

//		ArrayList<Job> fileList=new ArrayList<Job>();
//		Attachment at=new Attachment();
//		at.setFilePath(savePath);
//		at.setOriginName(originFiles.get(i));
//		at.setChangeName(saveFiles.get(i));
		
//		fileList.add(at);

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
