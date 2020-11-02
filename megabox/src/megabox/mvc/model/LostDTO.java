package megabox.mvc.model;

public class LostDTO {
	
	
	
	private int seq_lost	;
	private  int seq_branch;	
	private int seq_member;	
	private String title	;
	private  String pwd	;
	private String isapplied	;
	private String regidate	;
	private String content	;
	private String tel;
	private String email;
	private String branch;
	private int rownum;
	
	
	
	
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public int getSeq_lost() {
		return seq_lost;
	}
	public void setSeq_lost(int seq_lost) {
		this.seq_lost = seq_lost;
	}
	public int getSeq_branch() {
		return seq_branch;
	}
	public void setSeq_branch(int seq_branch) {
		this.seq_branch = seq_branch;
	}
	public int getSeq_member() {
		return seq_member;
	}
	public void setSeq_member(int seq_member) {
		this.seq_member = seq_member;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getIsapplied() {
		return isapplied;
	}
	public void setIsapplied(String isapplied) {
		this.isapplied = isapplied;
	}
	public String getRegidate() {
		return regidate;
	}
	public void setRegidate(String regidate) {
		this.regidate = regidate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	

}
