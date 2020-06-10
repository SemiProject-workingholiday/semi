package home.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Home implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2880659629435214871L;
	private int hNo;		// 집 게시글 번호
	private String type;	// 유형
	private String period;	// 기간
	private int fee;		// 요금
	private String title;	// 제목
	private String content;	// 내용
	private int report;		// 신고횟수
	private String address;	// 주소
	private Date writeDate;	// 작성날짜
	private int countryNo;	// 나라번호
	private int writerNo;	// 작성자번호
	
	public Home() {}

	public Home(int hNo, String type, String period, int fee, String title, String content, int report, String address,
			Date writeDate, int countryNo, int writerNo) {
		this.hNo = hNo;
		this.type = type;
		this.period = period;
		this.fee = fee;
		this.title = title;
		this.content = content;
		this.report = report;
		this.address = address;
		this.writeDate = writeDate;
		this.countryNo = countryNo;
		this.writerNo = writerNo;
	}

	public int gethNo() {
		return hNo;
	}

	public void sethNo(int hNo) {
		this.hNo = hNo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPeriod() {
		return period;
	}

	public void setPeriod(String period) {
		this.period = period;
	}

	public int getFee() {
		return fee;
	}

	public void setFee(int fee) {
		this.fee = fee;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getReport() {
		return report;
	}

	public void setReport(int report) {
		this.report = report;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	public int getCountryNo() {
		return countryNo;
	}

	public void setCountryNo(int countryNo) {
		this.countryNo = countryNo;
	}

	public int getWriterNo() {
		return writerNo;
	}

	public void setWriterNo(int writerNo) {
		this.writerNo = writerNo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Home [hNo=" + hNo + ", type=" + type + ", period=" + period + ", fee=" + fee + ", title=" + title
				+ ", content=" + content + ", report=" + report + ", address=" + address + ", writeDate=" + writeDate
				+ ", countryNo=" + countryNo + ", writerNo=" + writerNo + "]";
	}
	

}
