package megabox.mvc.model;

import java.util.List;

public class EventListView {
	private int messageTotalCount; //총 방명록 글수
	private int currentPageNumber; //현재 페이지 번호
	private List<EventDTO> boardList; //리스트
	

	public int getMessageTotalCount() {
		return messageTotalCount;
	}

	public void setMessageTotalCount(int messageTotalCount) {
		this.messageTotalCount = messageTotalCount;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public void setCurrentPageNumber(int currentPageNumber) {
		this.currentPageNumber = currentPageNumber;
	}

	public List<EventDTO> getBoardList() {
		return boardList;
	}

	public void setBoardList(List<EventDTO> boardList) {
		this.boardList = boardList;
	}

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public void setPageTotalCount(int pageTotalCount) {
		this.pageTotalCount = pageTotalCount;
	}

	public int getMessageCountPerPage() {
		return messageCountPerPage;
	}

	public void setMessageCountPerPage(int messageCountPerPage) {
		this.messageCountPerPage = messageCountPerPage;
	}

	public int getFirstRow() {
		return firstRow;
	}

	public void setFirstRow(int firstRow) {
		this.firstRow = firstRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	private int pageTotalCount; //홈페이지 수
	private int messageCountPerPage;// 한페이지 방명록 수 
	private int firstRow; //시작
	private int endRow; //끝
	
	public EventListView(int messageTotalCount, int currentPageNumber, List<EventDTO> boardList,
			 int messageCountPerPage, int firstRow, int endRow) {	
		this.messageTotalCount = messageTotalCount;
		this.boardList = boardList;
		this.messageCountPerPage = messageCountPerPage;
		this.firstRow = firstRow;
		this.endRow = endRow;
		this.currentPageNumber = currentPageNumber;
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

	
}
