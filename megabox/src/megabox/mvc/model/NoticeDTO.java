package megabox.mvc.model;


public class NoticeDTO {


	private int seq_notice;//공지사항 코드
	private int seq_npart;//공지구분코드
	private String title;
	private String content;
	private String regidate;
	private String npart;//공지사항명
	private int rownum;
	private int seq_branch; //지점명코드
	private String branch; //지점명
	private String  loc; //지역명
	private int seq_location; //지역코드




	
	
	
	
	
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public int getSeq_location() {
		return seq_location;
	}
	public void setSeq_location(int seq_location) {
		this.seq_location = seq_location;
	}
	
	
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public int getSeq_notice() {
		return seq_notice;
	}
	public void setSeq_notice(int seq_notice) {
		this.seq_notice = seq_notice;
	}
	public int getSeq_npart() {
		return seq_npart;
	}
	public void setSeq_npart(int seq_npart) {
		this.seq_npart = seq_npart;
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
	public String getRegidate() {
		return regidate;
	}
	public void setRegidate(String regidate) {
		this.regidate = regidate;
	}
	public String getNpart() {
		return npart;
	}
	public void setNpart(String npart) {
		this.npart = npart;
	}
	public int getSeq_branch() {
		return seq_branch;
	}
	public void setSeq_branch(int seq_branch) {
		this.seq_branch = seq_branch;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	
	
	
	


}
