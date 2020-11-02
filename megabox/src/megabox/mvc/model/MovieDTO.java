package megabox.mvc.model;

import java.util.Date;
// 영화 받아오는 객체
public class MovieDTO {
	
// 영화이름, 장르, 영화시청가능한 나이, 개봉일, 감독명,줄거리,러닝타임,출연진,영화포스터,소사이어티여부,좋아요수
	private int rank;			//순위
	private String name; 		//영화이름
	private String genre; 		//장르
	private String age;			//영화시청가능 나이
	private String agen;		//영화시청가능 나이 한글로 되있는거
	private String director;	//감독명
	private Date date;			//개봉일
	private String actors;		//출연진
	private int runningTime;	//러닝타임
	private String summary;		//줄거리
	private String img;			//포스터
	private long view;			//누적관객수
	private String type;		//큐레이션
	private long like;			//좋아요수
	private String show;		//특별관 상영체크
	private int num;			//영화 번호
	private String special;		//특별관 존재
	private String area; 
	private Date theaterDate;
	private String theater;
	
	
	
	
	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public Date getTheaterDate() {
		return theaterDate;
	}

	public void setTheaterDate(Date string) {
		this.theaterDate = string;
	}

	public String getTheater() {
		return theater;
	}

	public void setTheater(String theater) {
		this.theater = theater;
	}

	public String getAgen() {
		return agen;
	}

	public void setAgen(String ageName) {
		this.agen = ageName;
	}

	public String getSpecial() {
		return special;
	}

	public void setSpecial(String special) {
		this.special = special;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getShow() {
		return show;
	}

	public void setShow(String show) {
		this.show = show;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}
	
	public MovieDTO() {}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getActors() {
		return actors;
	}

	public void setActors(String actors) {
		this.actors = actors;
	}

	public int getRunningTime() {
		return runningTime;
	}

	public void setRunningTime(int runningTime) {
		this.runningTime = runningTime;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public long getView() {
		return view;
	}

	public void setView(long view) {
		this.view = view;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public long getLike() {
		return like;
	}

	public void setLike(long like) {
		this.like = like;
	}

	
}
