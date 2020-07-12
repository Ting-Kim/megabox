package megabox.mvc.model;

import java.sql.Clob;
import java.util.Date;

import oracle.sql.CLOB;
// 영화 받아오는 객체
public class MovieDTO {
	
// 영화이름, 장르, 영화시청가능한 나이, 개봉일, 감독명,줄거리,러닝타임,출연진,영화포스터,소사이어티여부,좋아요수
	String Name; 		//영화이름
	String Genre; 		//장르
	String Age;			//영화시청가능 나이
	String Director;	//감독명
	Date date;			//개봉일
	String actors;		//출연진
	int runningTime;	//러닝타임
	Clob summary;		//줄거리
	Clob img;			//포스터
	long view;			//누적관객수
	String type;		//
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

	public String getDirector() {
		return Director;
	}

	public void setDirector(String director) {
		Director = director;
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

	public Clob getSummary() {
		return summary;
	}

	public void setSummary(Clob clob) {
		this.summary = clob;
	}

	public Clob getImg() {
		return img;
	}

	public void setImg(Clob img) {
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
