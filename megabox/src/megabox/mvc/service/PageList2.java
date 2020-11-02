
package megabox.mvc.service;


import java.util.List;

import megabox.mvc.model.FaQDTO;
import megabox.mvc.model.LostDTO;
import megabox.mvc.model.NoticeDTO;



public class PageList2 {

      private int messageTotalCount; //총 방명록 글 수
      private int currentPageNumber; // 현재 페이지 번호
      private int pageTotalCount;//총 페이지수
      private int messageCountPerPage; //한 페이지에 출력할 방명록 글 수
      private int firstRow; // 시작
      private int endRow; //끝
      private String searchWord;  //검색어
      private int seq;
      private List<LostDTO> lostList;
    
      
      
       public List<LostDTO> getLostList() {
		return lostList;
	}



	public void setLostList(List<LostDTO> lostList) {
		this.lostList = lostList;
	}



	public String getSearchWord() {
		return searchWord;
	}



	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}


        
        public PageList2 (List<LostDTO>lostList, int messageTotalCount, int
        currentPageNumber, int messageCountPerPage, int startRow, int endRow) {
        
        
        this.lostList = lostList; 
        this.messageTotalCount = messageTotalCount;
        this.currentPageNumber = currentPageNumber; 
        this.messageCountPerPage = messageCountPerPage;
        this.firstRow = startRow; this.endRow = endRow;
        
        
        // 총 페이지수를 계산하는 메서드 calculatePageTotalCount();
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