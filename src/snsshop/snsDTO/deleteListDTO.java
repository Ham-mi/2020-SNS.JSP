package snsshop.snsDTO;

public class deleteListDTO {
	public deleteListDTO() {
		super();
	}
	public deleteListDTO(String snsid, String dename, String dediv, String decate, String deuserid,
			String desnsindex) {
		super();
		this.snsid = snsid;
		this.dename = dename;
		this.dediv = dediv;
		this.decate = decate;
		this.deuserid = deuserid;
		this.desnsindex = desnsindex;
	}
	private int deindex; //auto-increment
	private String snsid;
	private String dename;
	private String dediv;
	private String decate;
	private String deuserid;
	private String desnsindex;
	public int getDeindex() {
		return deindex;
	}
	public void setDeindex(int deindex) {
		this.deindex = deindex;
	}
	public String getSnsid() {
		return snsid;
	}
	public void setSnsid(String snsid) {
		this.snsid = snsid;
	}
	public String getDename() {
		return dename;
	}
	public void setDename(String dename) {
		this.dename = dename;
	}
	public String getDediv() {
		return dediv;
	}
	public void setDediv(String dediv) {
		this.dediv = dediv;
	}
	public String getDecate() {
		return decate;
	}
	public void setDecate(String decate) {
		this.decate = decate;
	}
	public String getDeuserid() {
		return deuserid;
	}
	public void setDeuserid(String deuserid) {
		this.deuserid = deuserid;
	}
	public String getDesnsindex() {
		return desnsindex;
	}
	public void setDesnsindex(String desnsindex) {
		this.desnsindex = desnsindex;
	}
}
