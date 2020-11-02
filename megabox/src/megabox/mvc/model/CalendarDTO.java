package megabox.mvc.model;

public class CalendarDTO {	
	private int seq_calendar;
	private String calendar;
	private String weekday;

	
	public String getWeekday() {
		return weekday;
	}
	public void setWeekday(String weekday) {
		this.weekday = weekday;
	}
	public int getSeq_calendar() {
		return seq_calendar;
	}
	public void setSeq_calendar(int seq_calendar) {
		this.seq_calendar = seq_calendar;
	}
	public String getCalendar() {
		return calendar;
	}
	public void setCalendar(String calendar) {
		this.calendar = calendar;
	}

	
	

}
