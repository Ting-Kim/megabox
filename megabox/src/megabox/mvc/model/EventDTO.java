package megabox.mvc.model;

import java.sql.Date;

public class EventDTO {
	private int no;
	
	private int seq_event ;
	private int seq_etype;
	private String title;
	private Date start_date;
	private Date end_date;
	private String content;
	private Date notice_date;
	private int rownum;
	private String img_addr;
	private String content1;
	private String content2;
	private String content3;
	private String content4;
	private Date sysdate;
	
	private String start_date_ajax;
	private String end_date_ajax;
	private String notice_date_ajax;
	
	

	public String getStart_date_ajax() {
		return start_date_ajax;
	}
	public void setStart_date_ajax(String start_date_ajax) {
		this.start_date_ajax = start_date_ajax;
	}
	public String getEnd_date_ajax() {
		return end_date_ajax;
	}
	public void setEnd_date_ajax(String end_date_ajax) {
		this.end_date_ajax = end_date_ajax;
	}
	public String getNotice_date_ajax() {
		return notice_date_ajax;
	}
	public void setNotice_date_ajax(String notice_date_ajax) {
		this.notice_date_ajax = notice_date_ajax;
	}
	public String getContent1() {
		return content1;
	}
	public void setContent1(String content1) {
		this.content1 = content1;
	}
	
	public Date getSysdate() {
		return sysdate;
	}
	public void setSysdate(Date sysdate) {
		this.sysdate = sysdate;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getContent4() {
		return content4;
	}
	public void setContent4(String content4) {
		this.content4 = content4;
	}
	private String video;
	
	public String getContent2() {
		return content2;
	}
	public void setContent2(String content2) {
		this.content2 = content2;
	}
	public String getContent3() {
		return content3;
	}
	public void setContent3(String content3) {
		this.content3 = content3;
	}
	public String getVideo() {
		return video;
	}
	public void setVideo(String video) {
		this.video = video;
	}
	public String getImg_addr() {
		return img_addr;
	}
	public void setImg_addr(String img_addr) {
		this.img_addr = img_addr;
	}
	
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public int getSeq_event() {
		return seq_event;
	}
	public void setSeq_event(int seq_event) {
		this.seq_event = seq_event;
	}
	public int getSeq_etype() {
		return seq_etype;
	}
	public void setSeq_etype(int seq_etype) {
		this.seq_etype = seq_etype;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getNotice_date() {
		return notice_date;
	}
	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}
	
	
}
