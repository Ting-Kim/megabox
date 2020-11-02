package megabox.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import com.util.JdbcUtil;

public class PaymentDAO {

	
	private static PaymentDAO dao = null;
	private PaymentDAO() {};
	public static PaymentDAO getInstance() {
		if( dao == null ) {
			dao = new PaymentDAO();
		}
		return dao;
	}

	//사용했던 카드가 존재하는지 판단유무
	public int cardNumExist(Connection conn, String cardNum, int m_seq) throws SQLException {

		PreparedStatement pstmt = null;
		ResultSet rs = null;


		String sql = "  select count(*) from card_manage where card_num = ? and seq_member =  ? " ; 
			
		try {
			pstmt = conn.prepareStatement(sql);	
			pstmt.setString(1, cardNum);	
			pstmt.setInt(2, m_seq);	
			rs = pstmt.executeQuery();
			   	
			
			rs.next();

				return  rs.getInt(1);
			
		   } finally {
		         JdbcUtil.close(rs);
		         JdbcUtil.close(pstmt);
		      }		

		}
	
	
	//사용했던 카드가 없는 새 카드 등록
	public void newInsert(Connection conn, String cardNum, int m_seq , int co_card , int cvcNum) throws SQLException {
		
		PreparedStatement pstmt = null;

		
			String sql = "	insert into card_manage (seq_card , card_num, seq_member, seq_card_co, seq_cpart , cvc, regidate)   ";
			sql +=  "  	values(SEQ_CARD.nextval , ? , ? , ? , 1 , ? , sysdate)   ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
				
				pstmt.setString(1, cardNum);	
				pstmt.setInt(2, m_seq);
				pstmt.setInt(3, co_card);
				pstmt.setInt(4, cvcNum);
		
				pstmt.executeUpdate();

		      } finally {
		    
		         JdbcUtil.close(pstmt);
		      }

	}
	

	
	//orders(주문테이블에 insert)
	public void orderInsert(Connection conn, int m_seq, int product, int count) throws SQLException {
		
		
		PreparedStatement pstmt = null;

		String sql =  "  insert into orders (seq_order, seq_member, seq_product, qty)  ";
		sql  +=  "   values(seq_orders.nextval , ? ,? , ?)  ";
		
		try {
			pstmt = conn.prepareStatement(sql);	
				
				pstmt.setInt(1, m_seq);	
				pstmt.setInt(2, product);
				pstmt.setInt(3, count);
				
				pstmt.executeUpdate();

		      } finally {
		    
		         JdbcUtil.close(pstmt);
		      }
		
	}
	
	//discount되는 금액 구하는 함수
	public int discount(Connection conn, int m_seq ,String cardNum) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		
		String sql = " select dc_price from discount_card join card_manage using(seq_card_co) where seq_member =? and card_manage.card_num= ?  " ; 
			
		try {
			pstmt = conn.prepareStatement(sql);	
			pstmt.setInt(1, m_seq);	
			pstmt.setString(2, cardNum);	
			

			rs = pstmt.executeQuery();
	
			rs.next();
			
			   if(rs.next()){
				   return  rs.getInt(1);
				   }else{  //할인카드가 없다면 0을 반환
					   return 0;
				 }

		   } finally {
		         JdbcUtil.close(rs);
		         JdbcUtil.close(pstmt);
		      }				
	}
	
	//포인트 적립률반환
	public int point(Connection conn,  int mem_grade) throws SQLException {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		
		String sql = " select mile from member_grade where seq_memgrade =  ?  " ; 
		
			
		try {
			pstmt = conn.prepareStatement(sql);	
			pstmt.setInt(1, mem_grade);	
			
			rs = pstmt.executeQuery();			   	
			
			rs.next();
			System.out.println("적립퍼센트" + rs.getInt(1));
			return  rs.getInt(1);
			
		   } finally {
		         JdbcUtil.close(rs);
		         JdbcUtil.close(pstmt);
		      }				
		
		
	}
	
	//가장 최근에 입력한 seq가져오기
	public int seqOrder(Connection conn) throws SQLException {
		
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		
		String sql = " select max(seq_order) from orders  " ; 
			
		try {
			pstmt = conn.prepareStatement(sql);	
			
			
			rs = pstmt.executeQuery();			   	
			
			rs.next();
			return  rs.getInt(1);
			
		   } finally {
		         JdbcUtil.close(rs);
		         JdbcUtil.close(pstmt);
		      }		
	}
	
	//기존의 Point 불러오기
	public int  exPoint(Connection conn, int m_seq) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		
		String sql = " select point from member where seq_member=  ?  " ; 
			
		try {
			pstmt = conn.prepareStatement(sql);	
			pstmt.setInt(1, m_seq);
			
			rs = pstmt.executeQuery();			   	
			
			rs.next();
			return  rs.getInt(1);
			
		   } finally {
		         JdbcUtil.close(rs);
		         JdbcUtil.close(pstmt);
		      }		
	}
	
	
	

	
	//member테이블에 Point 적립
	public void pointUpdate(Connection conn, int  savePoint , int m_seq) throws SQLException {
	
		PreparedStatement pstmt = null;

	
		String sql = "  UPDATE member SET point =  ? where seq_member = ?   ";

		try {
			
			pstmt = conn.prepareStatement(sql);
			
							 
			 pstmt.setInt(1, savePoint);	
			 pstmt.setInt(2, m_seq);
			
	
				 pstmt.executeUpdate();

			      }catch (Exception e) {
			    	  e.printStackTrace();
				} finally {	    
			         JdbcUtil.close(pstmt);
			      }		
		
		
	}
	
	//seq_discount  값 구하기
	public int seqDiscount(Connection conn, int m_seq, int co_card) throws SQLException {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println("m_seq       :       "+m_seq);
		System.out.println("co_card          :"    +  co_card);
	
		
		
		String sql = " select rownum , seq_discount ,dc_price  from discount_card join card_manage using(seq_card_co) where seq_member =? and seq_card_co =?  and rownum = 1  " ; 
			
		try {
			pstmt = conn.prepareStatement(sql);	
			pstmt.setInt(1, m_seq);	
			pstmt.setInt(2, co_card);	
			

			rs = pstmt.executeQuery();
			
			
			if (rs.next()) {
			
			return 	rs.getInt(2);
				
			}
			return 0;

			
		   } finally {
		         JdbcUtil.close(rs);
		         JdbcUtil.close(pstmt);
		      }				
	}
	
	
	
	//discount카드가 없을떄 insert
	
	public void payInsert(Connection conn, int c_payment, int seq_order, String cardNum, int total_payment) throws SQLException {
		
		
		PreparedStatement pstmt = null;

		String sql = "	insert into pay (seq_pay, seq_payment, seq_order, card_number, total_price, paydate)  " ;
		sql  += "     values(seq_pay.nextval , ? , ? , ? , ? , sysdate)  ";
	
	try {
		pstmt = conn.prepareStatement(sql);
					
			pstmt.setInt(1, c_payment);	
			pstmt.setInt(2, seq_order);
			pstmt.setString(3, cardNum);
			pstmt.setInt(4, total_payment);
	
			pstmt.executeUpdate();

	      } finally {
	    
	         JdbcUtil.close(pstmt);
	      }
		
	}
	
	//discount 카드가 있을때 seq_discount Insert
	public void payInsert2(Connection conn, int c_payment, int seq_order, String cardNum, int seq_discount,  int total_payment) throws SQLException {
	
		PreparedStatement pstmt = null;

		String sql = "	insert into pay (seq_pay, seq_payment, seq_order, card_number, seq_discount,  total_price, paydate)  " ;
		sql  += "     values(seq_pay.nextval , ? , ? , ? , ? ,? , sysdate)  ";
	
	try {
		pstmt = conn.prepareStatement(sql);
					
			pstmt.setInt(1, c_payment);	
			pstmt.setInt(2, seq_order);
			pstmt.setString(3, cardNum);
			pstmt.setInt(4, seq_discount);
			pstmt.setInt(5, total_payment);
	
			pstmt.executeUpdate();

	      } finally {
	    
	         JdbcUtil.close(pstmt);
	      }
	}
	
	
	//point테이블 insert
	public void pointInsert(Connection conn, int m_seq, int nowPoint) throws SQLException {
		PreparedStatement pstmt = null;

		String sql =  "  insert into point ( seq_point, seq_member ,saving, saving_point, saving_date)   ";
			sql+=  "	values(SEQ_POINT.nextval ,?,'신용카드포인트', ?, sysdate )  ";
	
	try {
		pstmt = conn.prepareStatement(sql);
					
			pstmt.setInt(1, m_seq);	
			pstmt.setInt(2, nowPoint);
		
			pstmt.executeUpdate();

	      } finally {
	    
	         JdbcUtil.close(pstmt);
	      }
		
	}
	
	//상품명
	public String productName(Connection conn, int product) throws SQLException {
		
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		
		String sql = " select product_name from product_store where seq_product =   ?   " ; 
		
			
		try {
			pstmt = conn.prepareStatement(sql);	
			pstmt.setInt(1, product);	
			
			rs = pstmt.executeQuery();			   	
			
			rs.next();
			
			return  rs.getString(1);
			
		   } finally {
		         JdbcUtil.close(rs);
		         JdbcUtil.close(pstmt);
		      }				
		
		
	}
	
	//카드사
	public String coporationCard(Connection conn, int co_card) throws SQLException {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = " select corporation from card_corporation where seq_card_co =  ?   " ; 
		
			
		try {
			pstmt = conn.prepareStatement(sql);	
			pstmt.setInt(1, co_card);	
			
			rs = pstmt.executeQuery();			   	
			
			rs.next();
			
			return  rs.getString(1);
			
		   } finally {
		         JdbcUtil.close(rs);
		         JdbcUtil.close(pstmt);
		      }		
	}



}
