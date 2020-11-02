package megabox.mvc.model;

public class LostReplyDTO {
	private int  lost_reply_seq;
	private int seq_lost;
	private String PWD;
	private String content;
	
	
	
	public int getLost_reply_seq() {
		return lost_reply_seq;
	}
	public void setLost_reply_seq(int lost_reply_seq) {
		this.lost_reply_seq = lost_reply_seq;
	}
	public int getSeq_lost() {
		return seq_lost;
	}
	public void setSeq_lost(int seq_lost) {
		this.seq_lost = seq_lost;
	}
	public String getPWD() {
		return PWD;
	}
	public void setPWD(String pWD) {
		PWD = pWD;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	
	
	
	
}
