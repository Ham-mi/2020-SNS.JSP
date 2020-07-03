package snsshop.snsDTO;

public class commentsDTO {
	
	public commentsDTO() {
		super();
	}
	public commentsDTO(String userid, String cotext, String codate, int noindex) {
		super();
		this.userid = userid;
		this.cotext = cotext;
		this.codate = codate;
		this.noindex = noindex;
	}
	private int coindex; //auto-increment
	private String userid; //fk
	private String cotext;
	private String codate; //date
	private int noindex; //fk
	public int getCoindex() {
		return coindex;
	}
	public void setCoindex(int coindex) {
		this.coindex = coindex;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getCotext() {
		return cotext;
	}
	public void setCotext(String cotext) {
		this.cotext = cotext;
	}
	public String getCodate() {
		return codate;
	}
	public void setCodate(String codate) {
		this.codate = codate;
	}
	public int getNoindex() {
		return noindex;
	}
	public void setNoindex(int noindex) {
		this.noindex = noindex;
	}
	
}
