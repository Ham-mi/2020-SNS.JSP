package snsshop.snsDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import snsshop.snsDTO.recommendDTO;
import snsshop.snsDTO.snsDTO;
import snsshop.snsDTO.tagDTO;
import snsshop.snsDTO.userDTO;

public class snsDAO {
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	private ResultSetMetaData rsmd;
	private static DataSource ds;
	private static snsDAO dao;
	
	static {
		try {
			Context context = new InitialContext();
			ds = (DataSource)context.lookup("java:comp/env/jdbc/mysql");
		}catch(NamingException e) {
			e.printStackTrace();
		}
	}
	
	public static snsDAO getInstance() {
		if(dao==null) {
			dao= new snsDAO();
		}
		return dao;
	}
	
	private snsDAO() {
		
	}
	/*public snsDAO() {
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	private void getConnection() {
		try {
			con=DriverManager.getConnection(url,id,pw);
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}*/
	
	public int getCount(ResultSet rs) {
		int columncount = 0;
		try{
			rsmd = rs.getMetaData();
			columncount = rsmd.getColumnCount();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return columncount;
	}
	public int getRecord(ResultSet rs) {
		int recordcount = 0;
		try {
			rs.last();
			recordcount = rs.getRow();
			rs.beforeFirst();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return recordcount;
	}
	
	public String[][] selectItem(String maintag) {
		String sql = String.format("select * from sns natural join" + 
				"(select * from tag where %s)tagcheck",maintag);  //?의 값이 true인 tag를 sns와 자연 조인한다.
		String shop [][] = null;
		String shopitem = null;
		String shoptags[] = new String[]{"인기","추천","신규","베이직","귀여운","화려한","특이한","심플한","가벼운","편안한","단정한"};
		int shopindex =0, tagsindex=0;
		int x = 1, count=0;
		
		try {
			con = ds.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			count = getRecord(rs);
			shop = new String[count][25];
			while(rs.next()) {
				//i+x = 11 -> tag값.
				for(int i=0; i<25; i++) {
					shopitem = rs.getString(i+x);
					switch(i+x) {
					case 3:
						switch(shopitem) {
						case "face": shopitem = "페이스북"; break;
						case "twit": shopitem="트위터"; break;
						case "insta": shopitem="인스타그램"; break;
						case "ect": shopitem="기타";break;
						}
						break;
					case 4:
						switch(shopitem) {
						case "dress":shopitem="의류"; break;
						case "clip" :shopitem="악세서리";break;
						case "stuff":shopitem="잡화"; break;
						case "ect":shopitem="기타";break;
						}
						break;
					case 6:
						switch(shopitem) {
						case "all":shopitem="전체"; break;
						case "in":shopitem="국내"; break;
						case "out":shopitem="해외";  break;
						}
						break;
					case 7:
						switch(shopitem) {
						case "S":shopitem="수제";break;
						case "G":shopitem="공구";break;
						case "D":shopitem="직구";break;
						case "E":shopitem="기타";break;
						}break;
					case 9: x++; break;
					case 11: case 12: case 13: case 14: case 15: case 16:
					case 17: case 18: case 19: case 20: case 21:
						if((i+x)/10 ==2) { tagsindex = 9 + (x+i)%10; }
						else { tagsindex = (x+i)%10-1 ; }
						if(shopitem.equals("1")) { shopitem=shoptags[tagsindex]; }
						else { shopitem=null; }
						break;
					}
					shop[shopindex][i] = shopitem;
				}
				shopindex++;
				x=1;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
				if(con != null) con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return shop;
	}
	
	
	public boolean marketInsert(snsDTO dto) {
		String sql="insert into sns values(?,?,?,?,?,?,?,?,null,?)";
		
		boolean check = false;
		try {
			con= ds.getConnection();
			ps= con.prepareStatement(sql);
			ps.setString(1, dto.getSnsid());
			ps.setString(2, dto.getSnsname());
			ps.setString(3, dto.getSnsdiv());
			ps.setString(4, dto.getSnscate());
			ps.setString(5, dto.getSnsaddr());
			ps.setString(6, dto.getSnscountry());
			ps.setString(7, dto.getSnsway());
			ps.setString(8,dto.getUserid());
			ps.setString(9, dto.getSnsimage());
			
			int su = ps.executeUpdate();
			if(su!=0) {
				check = true;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps!=null) {
					ps.close();
				}
				if(con != null) {
					con.close();
				}
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return check;
	}
	
	public boolean tagInsert(tagDTO dto) {
		String sql = "insert into tag values(?,0,0,0,?,?,?,?,?,?,?,?,?,?,?,?,?,"
					+ "(select snsindex From sns where snsid=?))";
		
		boolean check = false;
		try {
			con = ds.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getSnsid());
			ps.setBoolean(2, dto.isBasict());
			ps.setBoolean(3, dto.isCutet());
			ps.setBoolean(4, dto.isFancyt());
			ps.setBoolean(5, dto.isUniquet());
			ps.setBoolean(6, dto.isSimplet());
			ps.setBoolean(7, dto.isLightt());
			ps.setBoolean(8, dto.isComfortablet());
			ps.setBoolean(9, dto.isTidyt());
			
			ps.setString(10, dto.getAddt1());
			ps.setString(11, dto.getAddt2());
			ps.setString(12, dto.getAddt3());
			ps.setString(13, dto.getAddt4());
			ps.setString(14, dto.getAddt5());
			
			ps.setString(15, dto.getSnsid());
			
			int su = ps.executeUpdate();
			if(su!=0) {
				check = true;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps!=null) { ps.close(); }
				if(con != null) { con.close();}
			}catch(SQLException e) { e.printStackTrace(); }
		}
		return check;
	}
	
	public boolean recommendInsert(recommendDTO dto) {
		String sql = "insert into recommend values(null,?,?,?,?,?,?,?)";
	
		boolean check = false;
		try {
			con = ds.getConnection();
			ps= con.prepareStatement(sql);
			ps.setString(1, dto.getReuser());
			ps.setString(2, dto.getResnsid());
			ps.setString(3, dto.getRename());
			ps.setString(4, dto.getRediv());
			ps.setString(5, dto.getRecate());
			ps.setString(6, dto.getReaddr());
			ps.setString(7, dto.getRereason());
			
			int su = ps.executeUpdate();
			if(su!=0) {
				check = true;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps!=null) { ps.close(); }
				if(con != null) { con.close(); }
			}catch(SQLException e) { e.printStackTrace(); }
		}
		return check;
	}
	
	public boolean signupInsert(userDTO dto) {
		String sql = "insert into user values(?,?,?,?,?,?,null)";
		
		boolean check = false;
		try {
			con = ds.getConnection();
			ps=con.prepareStatement(sql);
			ps.setString(1, dto.getUserid());
			ps.setString(2, dto.getUserpw());
			ps.setString(3, dto.getUsername());
			ps.setString(4, dto.getUseremail());
			ps.setString(5, dto.getUserbirth());
			ps.setString(6, dto.getUsergender());
			int su = ps.executeUpdate();
			if(su!=0) {
				check = true;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps!=null) { ps.close(); }
				if(con != null) { con.close(); }
			}catch(SQLException e) { e.printStackTrace(); }
		}
		return check;
	}
	
	public String loginselect(String userid,String userpw) {
		String sql = "select username from user where userid=? and userpw=?";
		String name=null;
		
		try {
			con = ds.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, userid);
			ps.setString(2, userpw);
			rs = ps.executeQuery();
			while(rs.next()) {
				name=rs.getString("username");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
				if(con != null) con.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return name;
	}
}
