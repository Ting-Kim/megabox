package megabox.mvc.model;

public class ScreenMovieDTO {
	private int seq_branch;
	private String branch;
	private int seq_movie;
	private String movie_name;
	private String screenDay;
	private int runTime;
	private int seq_theater;
	private String theater;
	private int seat;
	private int seats;	// seat 연동 이상해서 screenTheaterList에 따로 넣음
	
	
	public int getSeats() {
		return seats;
	}
	public void setSeats(int seats) {
		this.seats = seats;
	}
	public int getSeat() {
		return seat;
	}
	public void setSeat(int seat) {
		this.seat = seat;
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
	public String getScreenDay() {
		return screenDay;
	}
	public void setScreenDay(String screenDay) {
		this.screenDay = screenDay;
	}
	public int getRunTime() {
		return runTime;
	}
	public void setRunTime(int runTime) {
		this.runTime = runTime;
	}
	
	
	
	

	
	
	
}
