package megabox.mvc.model;

import java.sql.Date;

public class TheaterInfoDTO {
	// By 태호 ) 극장정보 페이지에 불러올 필드 선언 _20200715
	private int seq_branch;
	private int seq_loc;
	private String branch;
	private String title;
	private String specific;
	private String address_form;
	private String address;
	private int seq_mFacility;
	private String iconFacility;
	private String mFacility;
	private String floor;
	private String information;
	private String iconPark;
	private String pPart;
	private String pInfo;
	private int seq_pinfo;
	private int seq_tpart; 
	private String iconTraffic;
	private String root;
	private String traffic;
	private int seq_nPart;
	private String nTitle;
	private String nContent;
	private String nRegidate;
	
	
	// By 태호 ) 필드 Getter, Setter 선언 _20200715
	public int getSeq_pinfo() {
		return seq_pinfo;
	}
	public String getnRegidate() {
		return nRegidate;
	}
	public void setnRegidate(String nRegidate) {
		this.nRegidate = nRegidate;
	}
	public int getSeq_nPart() {
		return seq_nPart;
	}
	public void setSeq_nPart(int seq_nPart) {
		this.seq_nPart = seq_nPart;
	}
	public String getnTitle() {
		return nTitle;
	}
	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}
	public String getnContent() {
		return nContent;
	}
	public void setnContent(String nContent) {
		this.nContent = nContent;
	}
	public String getTraffic() {
		return traffic;
	}
	public void setTraffic(String traffic) {
		this.traffic = traffic;
	}
	public int getSeq_tpart() {
		return seq_tpart;
	}
	public void setSeq_tpart(int seq_tpart) {
		this.seq_tpart = seq_tpart;
	}
	public String getIconTraffic() {
		return iconTraffic;
	}
	public void setIconTraffic(String iconTraffic) {
		this.iconTraffic = iconTraffic;
	}
	public String getRoot() {
		return root;
	}
	public void setRoot(String root) {
		this.root = root;
	}
	public void setSeq_pinfo(int seq_pinfo) {
		this.seq_pinfo = seq_pinfo;
	}
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSpecific() {
		return specific;
	}
	public void setSpecific(String specific) {
		this.specific = specific;
	}
	public String getAddress_form() {
		return address_form;
	}
	public void setAddress_form(String address_form) {
		this.address_form = address_form;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getSeq_mFacility() {
		return seq_mFacility;
	}
	public void setSeq_mFacility(int seq_mFacility) {
		this.seq_mFacility = seq_mFacility;
	}
	public String getIconFacility() {
		return iconFacility;
	}
	public void setIconFacility(String iconFacility) {
		this.iconFacility = iconFacility;
	}
	public String getmFacility() {
		return mFacility;
	}
	public void setmFacility(String mFacility) {
		this.mFacility = mFacility;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	public String getIconPark() {
		return iconPark;
	}
	public void setIconPark(String iconPark) {
		this.iconPark = iconPark;
	}
	public String getpPart() {
		return pPart;
	}
	public void setpPart(String pPart) {
		this.pPart = pPart;
	}
	public String getpInfo() {
		return pInfo;
	}
	public void setpInfo(String pInfo) {
		this.pInfo = pInfo;
	}
	
	// By 태호 ) 생성자 선언 _20200715
	/*
	 * public TheaterInfoDTO() {
	 * 
	 * this.seq_branch = new Integer(-1); this.seq_loc = new Integer(-1);;
	 * this.branch = new String(); this.title = new String(); this.specific = new
	 * String(); this.address_form = new String(); this.address = new String();
	 * this.seq_mFacility = new Integer(-1); this.iconFacility = new String();
	 * this.mFacility = new String(); this.floor = new String(); this.information =
	 * new String(); this.iconPark = new String(); this.pPart = new String();
	 * this.pInfo = new String(); }
	 */
	 
}
