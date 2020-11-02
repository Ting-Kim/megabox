package megabox.mvc.model;

public class MemberInfoDTO {
	private String m_id;		//아이디
	private String pwd;			//비밀번호
	private String name;		//이름
	private int type; 			//회원타입 뭔지
	private String grade;		//회원등급(한글)
	private String tel;			//전화번호
	private String email;		//이메일
	private String birth;		//생년월일
	private int mem_grade;		//멤버등급(seq)
	private int point;			//포인트
	private int coupon;			//쿠폰갯수
	private int adTicket;		//관람권갯수
	private int bookingList;	//예약내역갯수
	private int buyList;		//구매내역갯수
	private int m_seq;
	
	public int getM_seq() {
		return m_seq;
	}
	public void setM_seq(int m_seq) {
		this.m_seq = m_seq;
	}
	public int getCoupon() {
		return coupon;
	}
	public void setCoupon(int coupon) {
		this.coupon = coupon;
	}
	public int getAdTicket() {
		return adTicket;
	}
	public void setAdTicket(int adTicket) {
		this.adTicket = adTicket;
	}
	public int getBookingList() {
		return bookingList;
	}
	public void setBookingList(int bookingList) {
		this.bookingList = bookingList;
	}
	public int getBuyList() {
		return buyList;
	}
	public void setBuyList(int buyList) {
		this.buyList = buyList;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getMem_grade() {
		return mem_grade;
	}
	public void setMem_grade(int mem_grade) {
		this.mem_grade = mem_grade;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
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
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public MemberInfoDTO() {}
	
}
