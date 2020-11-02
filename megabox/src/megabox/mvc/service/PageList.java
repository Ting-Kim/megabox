
package megabox.mvc.service;


import java.util.List;

import megabox.mvc.model.FaQDTO;
import megabox.mvc.model.LostDTO;
import megabox.mvc.model.NoticeDTO;



public class PageList {

      private int messageTotalCount; //총 방명록 글 수
      private int currentPageNumber; // 현재 페이지 번호
      private List<FaQDTO> list; // 방명록 리스트
      private List<NoticeDTO> list2; // 방명록 리스트
      private int pageTotalCount;//총 페이지수
      private int messageCountPerPage; //한 페이지에 출력할 방명록 글 수
      private int firstRow; // 시작
      private int endRow; //끝
      private String searchWord;  //검색어
      private int seq;
    
    



	public List<NoticeDTO> getList2() {
		return list2;
	}



	public void setList2(List<NoticeDTO> list2) {
		this.list2 = list2;
	}



	public String getSearchWord() {
		return searchWord;
	}



	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}



	public PageList(List<FaQDTO> list, int messageTotalCount, 
              int currentPageNumber, int messageCountPerPage, 
               int startRow, int endRow, String searchWord)
	{
            this.list = list;
            this.messageTotalCount = messageTotalCount;
            this.currentPageNumber = currentPageNumber;
            this.messageCountPerPage = messageCountPerPage;
            this.firstRow = startRow;
            this.endRow = endRow;
            this.searchWord=  searchWord;

            // 총 페이지수를 계산하는 메서드
            calculatePageTotalCount();
         }
	
	
	
	
	
	

	public int getSeq() {
		return seq;
	}



	public void setSeq(int seq) {
		this.seq = seq;
	}



	public PageList(List<FaQDTO> list, int messageTotalCount, 
              int currentPageNumber, int messageCountPerPage, 
               int startRow, int endRow, int seqq)
	{
            this.list = list;
            this.messageTotalCount = messageTotalCount;
            this.currentPageNumber = currentPageNumber;
            this.messageCountPerPage = messageCountPerPage;
            this.firstRow = startRow;
            this.endRow = endRow;
            this.seq=  seqq;

            // 총 페이지수를 계산하는 메서드
            calculatePageTotalCount();
         }
	
	
	public PageList(List<NoticeDTO> list2, int messageTotalCount, 
            int currentPageNumber, int messageCountPerPage, 
             int startRow, int endRow)
	{
          this.list2 = list2;
          this.messageTotalCount = messageTotalCount;
          this.currentPageNumber = currentPageNumber;
          this.messageCountPerPage = messageCountPerPage;
          this.firstRow = startRow;
          this.endRow = endRow;


          // 총 페이지수를 계산하는 메서드
          calculatePageTotalCount();
       }
	
	
	



		private void calculatePageTotalCount() {
            if (messageTotalCount == 0) {
               pageTotalCount = 0;
            } else {
               pageTotalCount = messageTotalCount / messageCountPerPage;
               if (messageTotalCount % messageCountPerPage > 0) {
                  pageTotalCount++;
               }
            }
         }

         public int getMessageTotalCount() {
            return messageTotalCount;
         }

         public int getCurrentPageNumber() {
            return currentPageNumber;
         }

         public List<FaQDTO> getlist() {
            return list;
         }

         public int getPageTotalCount() {
            return pageTotalCount;
         }

         public int getMessageCountPerPage() {
            return messageCountPerPage;
         }

         public int getFirstRow() {
            return firstRow;
         }

         public int getEndRow() {
            return endRow;
         }

         public boolean isEmpty() {
            return messageTotalCount == 0;
         }


         
         
         
         
         
         
      
      
}