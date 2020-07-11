package megabox.mvc.model;

import java.sql.Date;

public class EventDTO {
   private int seq_event ;
   private int seq_etype;
   private String title;
   private Date start_date;
   private Date end_date;
   private String content;
   private Date notice_date;
   public int getSeq_event() {
      return seq_event;
   }
   public void setSeq_event(int seq_event) {
      this.seq_event = seq_event;
   }
   public int getSeq_etype() {
      return seq_etype;
   }
   public void setSeq_etype(int seq_etype) {
      this.seq_etype = seq_etype;
   }
   public String getTitle() {
      return title;
   }
   public void setTitle(String title) {
      this.title = title;
   }
   public Date getStart_date() {
      return start_date;
   }
   public void setStart_date(Date start_date) {
      this.start_date = start_date;
   }
   public Date getEnd_date() {
      return end_date;
   }
   public void setEnd_date(Date end_date) {
      this.end_date = end_date;
   }
   public String getContent() {
      return content;
   }
   public void setContent(String content) {
      this.content = content;
   }
   public Date getNotice_date() {
      return notice_date;
   }
   public void setNotice_date(Date notice_date) {
      this.notice_date = notice_date;
   }
   
   
}