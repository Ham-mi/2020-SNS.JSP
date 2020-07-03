package snsnotice.noticeDTO;

import java.sql.Date;

public class noticeDTO {
	public noticeDTO() {
		super();
	}
	public noticeDTO(String notitle, String notext, int nonum, String noname, Date nodate) {
		super();
		this.notitle = notitle;
		this.notext = notext;
		this.nonum = nonum;
		this.noname = noname;
		this.nodate = nodate;
	}
	public noticeDTO(int noindex, String notitle, String notext, int nonum, String noname, Date nodate,String nofile) {
		super();
		this.noindex = noindex;
		this.notitle = notitle;
		this.notext = notext;
		this.nonum = nonum;
		this.noname = noname;
		this.nodate = nodate;
		this.nofile= nofile;
	}

	private int noindex; //auto-increment
	private String notitle;
	private String notext;
	private int nonum;
	private String noname;
	private Date nodate;
	private String nofile;
	
	public int getNoindex() {
		return noindex;
	}
	public void setNoindex(int noindex) {
		this.noindex = noindex;
	}
	public String getNotitle() {
		return notitle;
	}
	public void setNotitle(String notitle) {
		this.notitle = notitle;
	}
	public String getNotext() {
		return notext;
	}
	public void setNotext(String notext) {
		this.notext = notext;
	}
	public int getNonum() {
		return nonum;
	}
	public void setNonum(int nonum) {
		this.nonum = nonum;
	}
	public String getNoname() {
		return noname;
	}
	public void setNoname(String noname) {
		this.noname = noname;
	}
	public Date getNodate() {
		return nodate;
	}
	public void setNodate(Date nodate) {
		this.nodate = nodate;
	}
	public String getNofile() {
		return nofile;
	}
	public void setNofile(String nofile) {
		this.nofile = nofile;
	}
}
