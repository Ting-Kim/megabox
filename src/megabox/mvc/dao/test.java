package megabox.mvc.dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class test {
	public static void main(String[] args) {
		/*
		SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm");
		Date test = null;
		
		try {
			test = dateFormat.parse("03:12");
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		System.out.println(test);
		Calendar cal = Calendar.getInstance();
		cal.setTime(test);
		cal.add(Calendar.MINUTE, 50);
		
		String today = dateFormat.format(cal.getTime());
		
		
		System.out.println(today);
		*/
		Date sysdate = new Date();
		System.out.println(sysdate);
		
	}
	
//	String test = sdf.format()
	
	
}
