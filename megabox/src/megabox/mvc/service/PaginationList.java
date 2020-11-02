package megabox.mvc.service;


import java.util.List;

import megabox.mvc.model.TheaterInfoDTO;




public class PaginationList {

      private int noticeTotalCount; //총 공지사항 수
      private int currentPageNumber; // 현재 페이지 번호
      private List<TheaterInfoDTO> list; // 극장정보 리스트
      private int pageTotalCount;//총 페이지수
      private int noticeCountPerPage; //한 페이지에 출력할 방명록 글 수(5)
      private int firstRow; // 시작
      private int endRow; //끝



   public PaginationList(List<TheaterInfoDTO> list, int noticeTotalCount, 
              int currentPageNumber, int noticeCountPerPage, 
               int startRow, int endRow)
   {
            this.list = list;
            this.noticeTotalCount = noticeTotalCount;
            this.currentPageNumber = currentPageNumber;
            this.noticeCountPerPage = noticeCountPerPage;
            this.firstRow = startRow;
            this.endRow = endRow;

            // 총 페이지수를 계산하는 메서드
            calculatePageTotalCount();
         }
   

      private void calculatePageTotalCount() {
            if (noticeTotalCount == 0) {
               pageTotalCount = 0;
            } else {
               pageTotalCount = noticeTotalCount / noticeCountPerPage;
               if (noticeTotalCount % noticeCountPerPage > 0) {
                  pageTotalCount++;
               }
            }
         }

         public int getNoticeTotalCount() {
            return noticeTotalCount;
         }

         public int getCurrentPageNumber() {
            return currentPageNumber;
         }

         public List<TheaterInfoDTO> getlist() {
            return list;
         }

         public int getPageTotalCount() {
            return pageTotalCount;
         }

         public int getNoticeCountPerPage() {
            return noticeCountPerPage;
         }

         public int getFirstRow() {
            return firstRow;
         }

         public int getEndRow() {
            return endRow;
         }

         public boolean isEmpty() {
            return noticeTotalCount == 0;
         }


      
      
}