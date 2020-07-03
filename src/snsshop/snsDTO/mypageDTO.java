package snsshop.snsDTO;

public class mypageDTO {
	public mypageDTO() {
		super();
	}
	public mypageDTO(String userid) {
		super();
		this.userid = userid;
	}
	private String userid; //fk
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
}
