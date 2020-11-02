package megabox.mvc.model;

public class ScreenInfoDTO {

private String 	movie_name;//��ȭ ����
private String 	screen_time; //��ȭ���۽ð�
private int	runtime ; //����Ÿ��
private String	theater ; //��� (2��, 3��)
private String	branch ; //�����
private String	theater_grade ;//18�� ex)�Ϲ� �󿵰� 2D
private int 	seat ; //�¼�����
private int seq_screen;






public String getMovie_name() {
	return movie_name;
}
public void setMovie_name(String movie_name) {
	this.movie_name = movie_name;
}
public String getScreen_time() {
	return screen_time;
}
public void setScreen_time(String screen_time) {
	this.screen_time = screen_time;
}
public int getRuntime() {
	return runtime;
}
public void setRuntime(int runtime) {
	this.runtime = runtime;
}
public String getTheater() {
	return theater;
}
public void setTheater(String theater) {
	this.theater = theater;
}
public String getBranch() {
	return branch;
}
public void setBranch(String branch) {
	this.branch = branch;
}
public String getTheater_grade() {
	return theater_grade;
}
public void setTheater_grade(String theater_grade) {
	this.theater_grade = theater_grade;
}
public int getSeat() {
	return seat;
}
public void setSeat(int seat) {
	this.seat = seat;
}
public int getSeq_screen() {
	return seq_screen;
}
public void setSeq_screen(int seq_screen) {
	this.seq_screen = seq_screen;
}

}
