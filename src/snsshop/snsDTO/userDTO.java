package snsshop.snsDTO;

public class userDTO {
	public userDTO(){
		super();
	}
	public userDTO(String userid, String userpw, String username, String useremail, String userbirth, String usergender) {
		super();
		this.userid = userid;
		this.userpw = userpw;
		this.username = username;
		this.useremail = useremail;
		this.userbirth = userbirth;
		this.usergender = usergender;
	}
	private String userid;
	private String userpw;
	private String username;
	private String useremail;
	private String userbirth;
	private String usergender;
	private int userindex; // auto-increment
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUserbirth() {
		return userbirth;
	}
	public void setUserbirth(String userbirth) {
		this.userbirth = userbirth;
	}
	public String getUsergender() {
		return usergender;
	}
	public void setUsergender(String usergender) {
		this.usergender = usergender;
	}
	public int getUserindex() {
		return userindex;
	}
	public void setUserindex(int userindex) {
		this.userindex = userindex;
	}
}
