package megabox.mvc.model;

public class TheaterListDTO {
	private int seq_branch;
	private int seq_loc;
	private String branch;
	public int getSeq_branch() {
		return seq_branch;
	}
	public void setSeq_branch(int seq_branch) {
		this.seq_branch = seq_branch;
	}
	public int getSeq_loc() {
		return seq_loc;
	}
	public void setSeq_loc(int seq_loc) {
		this.seq_loc = seq_loc;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	
	public TheaterListDTO() {
	}
}
