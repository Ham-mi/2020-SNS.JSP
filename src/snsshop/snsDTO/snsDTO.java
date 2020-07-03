package snsshop.snsDTO;

public class snsDTO {
	public snsDTO() {
		super();
	}
	
	public snsDTO(String snsid, String snsname, String snsdiv, String snscate, String snsaddr, String snscountry,
			String snsway, String userid, String snsimage) {
		super();
		this.snsid = snsid;
		this.snsname = snsname;
		this.snsdiv = snsdiv;
		this.snscate = snscate;
		this.snsaddr = snsaddr;
		this.snscountry = snscountry;
		this.snsway = snsway;
		this.userid = userid;
		this.snsimage = snsimage;
	}
	private String snsid;
	private String snsname;
	private String snsdiv;
	private String snscate;
	private String snsaddr;
	private String snscountry;
	private String snsway;
	private String userid; //fk
	private int snsindex; // auto-increment
	private String snsimage;
	public String getSnsid() {
		return snsid;
	}
	public void setSnsid(String snsid) {
		this.snsid = snsid;
	}
	public String getSnsname() {
		return snsname;
	}
	public void setSnsname(String snsname) {
		this.snsname = snsname;
	}
	public String getSnsdiv() {
		return snsdiv;
	}
	public void setSnsdiv(String snsdiv) {
		this.snsdiv = snsdiv;
	}
	public String getSnscate() {
		return snscate;
	}
	public void setSnscate(String snscate) {
		this.snscate = snscate;
	}
	public String getSnsaddr() {
		return snsaddr;
	}
	public void setSnsaddr(String snsaddr) {
		this.snsaddr = snsaddr;
	}
	public String getSnscountry() {
		return snscountry;
	}
	public void setSnscountry(String snscountry) {
		this.snscountry = snscountry;
	}
	public String getSnsway() {
		return snsway;
	}
	public void setSnsway(String snsway) {
		this.snsway = snsway;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getSnsindex() {
		return snsindex;
	}
	public void setSnsindex(int snsindex) {
		this.snsindex = snsindex;
	}
	public String getSnsimage() {
		return snsimage;
	}
	public void setSnsimage(String snsimage) {
		this.snsimage = snsimage;
	}

}