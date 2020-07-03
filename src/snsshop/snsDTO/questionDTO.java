package snsshop.snsDTO;

public class questionDTO {
	public questionDTO() {
		super();
	}
	public questionDTO(String userid, String quemail, String qutitle, String qutext, String qudate) {
		super();
		this.userid = userid;
		this.quemail = quemail;
		this.qutitle = qutitle;
		this.qutext = qutext;
		this.qudate = qudate;
	}
	private int quindex; //auto-increment
	private String userid; //fk
	private String quemail;
	private String qutitle;
	private String qutext;
	private String qudate; //date
	public int getQuindex() {
		return quindex;
	}
	public void setQuindex(int quindex) {
		this.quindex = quindex;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getQuemail() {
		return quemail;
	}
	public void setQuemail(String quemail) {
		this.quemail = quemail;
	}
	public String getQutitle() {
		return qutitle;
	}
	public void setQutitle(String qutitle) {
		this.qutitle = qutitle;
	}
	public String getQutext() {
		return qutext;
	}
	public void setQutext(String qutext) {
		this.qutext = qutext;
	}
	public String getQudate() {
		return qudate;
	}
	public void setQudate(String qudate) {
		this.qudate = qudate;
	}
}
