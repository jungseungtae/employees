package kr.co.vo;

public class SearchCriteria extends Criteria {

	private String searchType= "";
	private String keyword = "";
	
	String getSearchType() {
		return searchType;
	}
	void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	String getKeyword() {
		return keyword;
	}
	void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
}
