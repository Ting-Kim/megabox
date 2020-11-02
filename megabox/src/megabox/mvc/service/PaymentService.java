package megabox.mvc.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.util.ConnectionProvider;

import megabox.mvc.dao.PaymentDAO;
import megabox.mvc.model.PaymentDTO;

public class PaymentService {

	public int Exist(String cardNum, int m_seq) {
		PaymentDAO dao = PaymentDAO.getInstance();
	    try(Connection conn = ConnectionProvider.getConnection()) {
	    	
	    	
	  	 int cardNumExist =  dao.cardNumExist(conn, cardNum ,m_seq);
	  	 
	  	 System.out.println(cardNumExist);
	  	 
			

	  	 return cardNumExist;
	    
	    } catch (Exception e) {
	       throw new RuntimeException(e);
	    }
	
	}

	public PaymentDTO ONInsert(int cardNumExist, String cardNum, int cvcNum, int m_seq ,int co_card , int c_payment , int count, int product, int payment , int mem_grade) {
	
		PaymentDAO dao = PaymentDAO.getInstance();
	    try(Connection conn = ConnectionProvider.getConnection()) {
	    	

	    	
	 //   seq_card , card_num, seq_member, seq_card_co, seq_cpart , cvc, regidate
	   	 if (cardNumExist ==0) {//회원이 사용했던 카드가 존재하지않는다면 insert
			 dao.newInsert(conn, cardNum ,m_seq, co_card ,cvcNum); }
	   	 
	   	 
		//상품명 구하기 	 
	   	 String product_name = dao.productName(conn,product );
	   	 //카드사 구하기
	   	 String coporation_card = dao.coporationCard(conn,co_card );
	   	 
	   	 //회원이 사용했던 카드가 존재한다면 order테이블에 insert	   	  		
		  dao.orderInsert(conn,m_seq, product, count);		  
		  
	    //discount 되는 금액구하기

		int discount = dao.discount(conn,m_seq ,cardNum);	
		
		int total_payment = payment - discount ; //토탈금액
		
		System.out.println(total_payment);
		

		//seq_order구하기
		int seq_order = dao.seqOrder(conn);
			
		//seq_discount 값구하기
		int seq_discount = dao.seqDiscount(conn,m_seq ,co_card );
		System.out.println("discount  value :" +discount);
		System.out.println("seq_discount   :" +seq_discount);
	
		
		if (seq_discount ==0) {
					
		dao.payInsert(conn ,  c_payment , seq_order,  cardNum, total_payment);
			
		}else dao.payInsert2(conn ,  c_payment , seq_order,  cardNum,seq_discount, total_payment);
	
		
	//적립되있는 포인트 불러오기
		int ex_point = dao.exPoint(conn,m_seq);
		
		//적립될 포인트 퍼센트		
		int point = dao.point(conn, mem_grade);
		
		//이번에 적립될 포인트
		int nowPoint =(int) Math.ceil( total_payment*(point*0.01));
		System.out.println(nowPoint);
		//update될 포인트
		int savePoint = (int) Math.ceil(total_payment*(point*0.01) + ex_point);
		
		System.out.println("ex_point   :"  +ex_point);
		
		System.out.println("savePoint  :"  +savePoint);
		
		//member테이블에 Point적립
		 dao.pointUpdate(conn, savePoint ,m_seq);
		 //point테이블에 insert
		dao.pointInsert(conn,m_seq ,nowPoint);
		
		
		
		PaymentDTO dto = new PaymentDTO();
		ArrayList<PaymentDTO> list = new ArrayList<PaymentDTO>();
		
		dto.setCardNum(cardNum); //카드번호
		dto.setDiscount(discount); //할인금액
		dto.setCo_card(coporation_card); //카드사
		dto.setNowPoint(nowPoint); //이번에 적립될 포인트
		dto.setSavePoint(savePoint); //총포인트
		dto.setProduct_name(product_name); //상품명
		dto.setCount(count); //상품갯수
		dto.setPayment(total_payment);//상품가격
		dto.setSeq_order(seq_order); //주문번호
			

		
	
	    return dto;
	    } catch (Exception e) {
	       throw new RuntimeException(e);
	    }
		

		
	}


	 



	
	
	
}
