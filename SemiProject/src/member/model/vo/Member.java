package member.model.vo;

import java.sql.Date;

public class Member {

	private int tableNo;
	private int userNo;
	private String userId;
	private String userPwd;
	private String userName;
	private Date userBirth;
	private String email;
	private int grade;
	private String sanction;
	private String status;
	private String gender;
	
	
	public Member() {
		super();
	}


	public Member(String userId, String userPwd) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
	}

	
	
	public Member(String userId, String userPwd, String email) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.email = email;
	}


	public Member(String userId, String userName,String userPwd, String email) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.email = email;
	}


	public Member(String userId, String userPwd, String userName, Date userBirth, String email, int grade,
			String gender) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userBirth = userBirth;
		this.email = email;
		this.grade = grade;
		this.gender = gender;
	}

	public Member(int userNo, String userId, String userPwd, String userName, Date userBirth,String email,
			int grade, String sanction, String status, String gender) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userBirth = userBirth;
		this.email = email;
		this.grade = grade;
		this.sanction = sanction;
		this.status = status;
		this.gender = gender;
	}

	public Member(int tableNo, int userNo, String userId, String userPwd, String userName, Date userBirth, String email,
			int grade, String sanction, String status, String gender) {
		this.tableNo = tableNo;
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userBirth = userBirth;
		this.email = email;
		this.grade = grade;
		this.sanction = sanction;
		this.status = status;
		this.gender = gender;
	}
	
	
	public int getTableNo() {
		return tableNo;
	}


	public void setTableNo(int tableNo) {
		this.tableNo = tableNo;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getUserPwd() {
		return userPwd;
	}


	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public Date getUserBirth() {
		return userBirth;
	}


	public void setUserBirth(Date userBirth) {
		this.userBirth = userBirth;
	}

	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public int getGrade() {
		return grade;
	}


	public void setGrade(int grade) {
		this.grade = grade;
	}


	public String getSanction() {
		return sanction;
	}


	public void setSanction(String sanction) {
		this.sanction = sanction;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	@Override
	public String toString() {
		return "Member [tableNo=" + tableNo + ", userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd
				+ ", userName=" + userName + ", userBirth=" + userBirth + ", email=" + email + ", grade=" + grade
				+ ", sanction=" + sanction + ", status=" + status + ", gender=" + gender + "]";
	}




	





}