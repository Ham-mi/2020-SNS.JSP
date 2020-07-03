package snsshop.snsDTO;

public class recommendDTO {
	public recommendDTO() {
		super();
	}
	public recommendDTO(String reuser, String resnsid, String rename, String rediv, String recate,
			String readdr, String rereason) {
		super();
		this.reuser = reuser;
		this.resnsid = resnsid;
		this.rename = rename;
		this.rediv = rediv;
		this.recate = recate;
		this.readdr = readdr;
		this.rereason = rereason;
	}
	private int reindex; //auto-increment
	private String reuser; //fk
	private String resnsid;
	private String rename;
	private String rediv;
	private String recate;
	private String readdr;
	private String rereason;
	public int getReindex() {
		return reindex;
	}
	public void setReindex(int reindex) {
		this.reindex = reindex;
	}
	public String getReuser() {
		return reuser;
	}
	public void setReuser(String reuser) {
		this.reuser = reuser;
	}
	public String getResnsid() {
		return resnsid;
	}
	public void setResnsid(String resnsid) {
		this.resnsid = resnsid;
	}
	public String getRename() {
		return rename;
	}
	public void setRename(String rename) {
		this.rename = rename;
	}
	public String getRediv() {
		return rediv;
	}
	public void setRediv(String rediv) {
		this.rediv = rediv;
	}
	public String getRecate() {
		return recate;
	}
	public void setRecate(String recate) {
		this.recate = recate;
	}
	public String getReaddr() {
		return readdr;
	}
	public void setReaddr(String readdr) {
		this.readdr = readdr;
	}
	public String getRereason() {
		return rereason;
	}
	public void setRereason(String rereason) {
		this.rereason = rereason;
	}
}
