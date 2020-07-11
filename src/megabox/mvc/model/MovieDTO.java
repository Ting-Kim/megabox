package megabox.mvc.model;

import java.util.Date;

import oracle.sql.CLOB;
// 영화 받아오는 객체
public class MovieDTO {
	
// 영화이름, 장르, 영화시청가능한 나이, 개봉일, 감독명,줄거리,러닝타임,출연진,영화포스터,소사이어티여부,좋아요수
	String Name; 		//영화이름
	String Genre; 		//장르
	String Age;			//영화시청가능 나이
	Date release_date;	//개봉일
	String Director;	//감독명
	CLOB summary;		//줄거리
	int runningTime;	//러닝타임
	String actors;		//출연진
	String img;			//포스터
	boolean socieoty;	//소사이어티인지 아닌지 체크하는 변수 true면 소사이어티 false면 일반영화
	long like;			//좋아요수
	public MovieDTO() {}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getGenre() {
		return Genre;
	}
	public void setGenre(String genre) {
		Genre = genre;
	}
	public String getAge() {
		return Age;
	}
	public void setAge(String age) {
		Age = age;
	}
	public Date getRelease_date() {
		return release_date;
	}
	public void setRelease_date(Date release_date) {
		this.release_date = release_date;
	}
	public String getDirector() {
		return Director;
	}
	public void setDirector(String director) {
		Director = director;
	}
	public CLOB getSummary() {
		return summary;
	}
	public void setSummary(CLOB summary) {
		this.summary = summary;
	}
	public int getRunningTime() {
		return runningTime;
	}
	public void setRunningTime(int runningTime) {
		this.runningTime = runningTime;
	}
	public String getActors() {
		return actors;
	}
	public void setActors(String actors) {
		this.actors = actors;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public boolean isSocieoty() {
		return socieoty;
	}
	public void setSocieoty(boolean socieoty) {
		this.socieoty = socieoty;
	}
	public long getLike() {
		return like;
	}
	public void setLike(long like) {
		this.like = like;
	}
	
	
}
