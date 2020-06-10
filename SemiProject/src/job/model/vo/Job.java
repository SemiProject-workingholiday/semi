package job.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Job implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2817120053313317814L;
	private int jobNo;					// 구직글번호
	private String jobCategory;			// 직종
	private String period;				// 기간
	private String logoImg;				// 로고사진
	private int recruitment;			// 모집인원
	private String gender;				// 성별
	private String age;					// 연령
	private String address;				// 주소
	private String pay;					// 급여
	private String dueDate;				// 마감일
	private Date worktime;				// 근무시간
	private String workday;				// 근무요일
	private String title;				// 제목
	private String content;				// 상세내용
	private int jobReport;				// 신고
	private Date wirteDate;				// 작성날짜
	private String countryNo;			// 나라번호
	private int userNo;					// 작성자(회원번호)
	
	public Job() {
		super();
	}

	public Job(int jobNo, String jobCategory, String period, String logoImg, int recruitment, String gender, String age,
			String address, String pay, String dueDate, Date worktime, String workday, String title, String content,
			int jobReport, Date wirteDate, String countryNo, int userNo) {
		super();
		this.jobNo = jobNo;
		this.jobCategory = jobCategory;
		this.period = period;
		this.logoImg = logoImg;
		this.recruitment = recruitment;
		this.gender = gender;
		this.age = age;
		this.address = address;
		this.pay = pay;
		this.dueDate = dueDate;
		this.worktime = worktime;
		this.workday = workday;
		this.title = title;
		this.content = content;
		this.jobReport = jobReport;
		this.wirteDate = wirteDate;
		this.countryNo = countryNo;
		this.userNo = userNo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public int getJobNo() {
		return jobNo;
	}

	public void setJobNo(int jobNo) {
		this.jobNo = jobNo;
	}

	public void setJobCategory(String jobCategory) {
		this.jobCategory = jobCategory;
	}

	public void setPeriod(String period) {
		this.period = period;
	}

	public void setLogoImg(String logoImg) {
		this.logoImg = logoImg;
	}

	public void setRecruitment(int recruitment) {
		this.recruitment = recruitment;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}

	public void setWorktime(Date worktime) {
		this.worktime = worktime;
	}

	public void setWorkday(String workday) {
		this.workday = workday;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public void setJobReport(int jobReport) {
		this.jobReport = jobReport;
	}

	public void setWirteDate(Date wirteDate) {
		this.wirteDate = wirteDate;
	}

	public void setCountryNo(String countryNo) {
		this.countryNo = countryNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getJobCategory() {
		return jobCategory;
	}

	public String getPeriod() {
		return period;
	}

	public String getLogoImg() {
		return logoImg;
	}

	public int getRecruitment() {
		return recruitment;
	}

	public String getGender() {
		return gender;
	}

	public String getAge() {
		return age;
	}

	public String getAddress() {
		return address;
	}

	public String getPay() {
		return pay;
	}

	public String getDueDate() {
		return dueDate;
	}

	public Date getWorktime() {
		return worktime;
	}

	public String getWorkday() {
		return workday;
	}

	public String getTitle() {
		return title;
	}

	public String getContent() {
		return content;
	}

	public int getJobReport() {
		return jobReport;
	}

	public Date getWirteDate() {
		return wirteDate;
	}

	public String getCountryNo() {
		return countryNo;
	}

	public int getUserNo() {
		return userNo;
	}

	@Override
	public String toString() {
		return "Job [jobNo=" + jobNo + ", jobCategory=" + jobCategory + ", period=" + period + ", logoImg=" + logoImg
				+ ", recruitment=" + recruitment + ", gender=" + gender + ", age=" + age + ", address=" + address
				+ ", pay=" + pay + ", dueDate=" + dueDate + ", worktime=" + worktime + ", workday=" + workday
				+ ", title=" + title + ", content=" + content + ", jobReport=" + jobReport + ", wirteDate=" + wirteDate
				+ ", countryNo=" + countryNo + ", userNo=" + userNo + "]";
	}
	
	
	

}
