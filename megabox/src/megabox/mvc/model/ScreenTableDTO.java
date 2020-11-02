package megabox.mvc.model;

import java.sql.Timestamp;
import java.util.Date;

public class ScreenTableDTO {
	private int seq_branch;
	private String branch;
	private int seq_movie;
	private String movie_name;
	private int seq_theater;
	private String theater;
	private int seq_age;
	private String aGrade;
	private String screen_date;
	private String screen_time;
	private int seat;
	private int runTime;
	private int parseRunTime;
	
	
	
	public int getParseRunTime() {
		return parseRunTime;
	}
	public void setParseRunTime(int parseRunTime) {
		this.parseRunTime = parseRunTime;
	}
	public String getScreen_date() {
		return screen_date;
	}
	public void setScreen_date(String screen_date) {
		this.screen_date = screen_date;
	}
	public String getScreen_time() {
		return screen_time;
	}
	public void setScreen_time(String screen_time) {
		this.screen_time = screen_time;
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
	public int getSeq_movie() {
		return seq_movie;
	}
	public void setSeq_movie(int seq_movie) {
		this.seq_movie = seq_movie;
	}
	public String getMovie_name() {
		return movie_name;
	}
	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}
	public int getSeq_theater() {
		return seq_theater;
	}
	public void setSeq_theater(int seq_theater) {
		this.seq_theater = seq_theater;
	}
	public String getTheater() {
		return theater;
	}
	public void setTheater(String theater) {
		this.theater = theater;
	}
	public int getSeq_age() {
		return seq_age;
	}
	public void setSeq_age(int seq_age) {
		this.seq_age = seq_age;
	}
	public String getaGrade() {
		return aGrade;
	}
	public void setaGrade(String aGrade) {
		this.aGrade = aGrade;
	}
	public int getSeat() {
		return seat;
	}
	public void setSeat(int seat) {
		this.seat = seat;
	}
	public int getRunTime() {
		return runTime;
	}
	public void setRunTime(int runTime) {
		this.runTime = runTime;
	}

	
	
	
}
