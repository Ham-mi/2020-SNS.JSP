package snsshop.snsDTO;

public class tagDTO {
	public tagDTO() {
		super();
	}
	
	public tagDTO(String snsid, boolean populart, boolean rocommendt, boolean newt, boolean basict, boolean cutet,
			boolean fancyt, boolean uniquet, boolean simplet, boolean lightt, boolean comfortablet, boolean tidyt,
			String addt1, String addt2, String addt3, String addt4, String addt5, int tagindex) {
		super();
		this.snsid = snsid;
		this.populart = populart;
		this.rocommendt = rocommendt;
		this.newt = newt;
		this.basict = basict;
		this.cutet = cutet;
		this.fancyt = fancyt;
		this.uniquet = uniquet;
		this.simplet = simplet;
		this.lightt = lightt;
		this.comfortablet = comfortablet;
		this.tidyt = tidyt;
		this.addt1 = addt1;
		this.addt2 = addt2;
		this.addt3 = addt3;
		this.addt4 = addt4;
		this.addt5 = addt5;
		this.tagindex = tagindex;
	}

	public tagDTO(String snsid, boolean basict, boolean cutet, boolean fancyt, boolean uniquet, boolean simplet,
			boolean lightt, boolean comfortablet, boolean tidyt) {
		super();
		this.snsid = snsid;
		this.basict = basict;
		this.cutet = cutet;
		this.fancyt = fancyt;
		this.uniquet = uniquet;
		this.simplet = simplet;
		this.lightt = lightt;
		this.comfortablet = comfortablet;
		this.tidyt = tidyt;
	}

	private String snsid;  //fk
	private boolean populart;
	private boolean rocommendt;
	private boolean newt;
	private boolean basict;
	private boolean cutet;
	private boolean fancyt;
	private boolean uniquet;
	private boolean simplet;
	private boolean lightt;
	private boolean comfortablet;
	private boolean tidyt;
	private String addt1;
	private String addt2;
	private String addt3;
	private String addt4;
	private String addt5;
	private int tagindex; // fk
	
	public String getSnsid() {
		return snsid;
	}
	public void setSnsid(String snsid) {
		this.snsid = snsid;
	}
	public boolean isPopulart() {
		return populart;
	}
	public void setPopulart(boolean populart) {
		this.populart = populart;
	}
	public boolean isRocommendt() {
		return rocommendt;
	}
	public void setRocommendt(boolean rocommendt) {
		this.rocommendt = rocommendt;
	}
	public boolean isNewt() {
		return newt;
	}
	public void setNewt(boolean newt) {
		this.newt = newt;
	}
	public boolean isBasict() {
		return basict;
	}
	public void setBasict(boolean basict) {
		this.basict = basict;
	}
	public boolean isCutet() {
		return cutet;
	}
	public void setCutet(boolean cutet) {
		this.cutet = cutet;
	}
	public boolean isFancyt() {
		return fancyt;
	}
	public void setFancyt(boolean fancyt) {
		this.fancyt = fancyt;
	}
	public boolean isUniquet() {
		return uniquet;
	}
	public void setUniquet(boolean uniquet) {
		this.uniquet = uniquet;
	}
	public boolean isSimplet() {
		return simplet;
	}
	public void setSimplet(boolean simplet) {
		this.simplet = simplet;
	}
	public boolean isLightt() {
		return lightt;
	}
	public void setLightt(boolean lightt) {
		this.lightt = lightt;
	}
	public boolean isComfortablet() {
		return comfortablet;
	}
	public void setComfortablet(boolean comfortablet) {
		this.comfortablet = comfortablet;
	}
	public boolean isTidyt() {
		return tidyt;
	}
	public void setTidyt(boolean tidyt) {
		this.tidyt = tidyt;
	}
	public String getAddt1() {
		return addt1;
	}
	public void setAddt1(String addt1) {
		this.addt1 = addt1;
	}
	public String getAddt2() {
		return addt2;
	}
	public void setAddt2(String addt2) {
		this.addt2 = addt2;
	}
	public String getAddt3() {
		return addt3;
	}
	public void setAddt3(String addt3) {
		this.addt3 = addt3;
	}
	public String getAddt4() {
		return addt4;
	}
	public void setAddt4(String addt4) {
		this.addt4 = addt4;
	}
	public String getAddt5() {
		return addt5;
	}
	public void setAddt5(String addt5) {
		this.addt5 = addt5;
	}
	public int getTagindex() {
		return tagindex;
	}
	public void setTagindex(int tagindex) {
		this.tagindex = tagindex;
	}
}
