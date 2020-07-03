package snsnotice.noticeDAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import snsnotice.noticeDTO.noticeDTO;

public class noticeDAO {
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	private static DataSource ds;
	
	private static noticeDAO dao;
	
	public static noticeDAO getInstance() {
		if(dao == null) {
			dao = new noticeDAO();
		}
		return dao;
	}
	
	private noticeDAO() { }
	
	static {
		try {
			Context context = new InitialContext();
			ds = (DataSource) context.lookup("java:comp/env/jdbc/mysql");
		}catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	//게시판 글 목록 전체를 출력.
	public ArrayList<noticeDTO> makeList(ResultSet rs){
		ArrayList<noticeDTO> list = new ArrayList<noticeDTO>();
		
		try {
			while(rs.next()) {
				int noindex = rs.getInt("noindex");
				String notitle = titleCut(rs.getString("notitle"));
				String notext = rs.getString("notext");
				int nonum = rs.getInt("nonum");
				String noname = idCut(rs.getString("noname"));
				Date nodate = rs.getDate("nodate");
				String nofile = rs.getString("nofile");
				noticeDTO dto = new noticeDTO(noindex,notitle,notext,nonum,noname,nodate,nofile);
				list.add(dto);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		if(list.isEmpty()) { list = null; }
		else { list.trimToSize(); }
		return list;
	}
	
	private String titleCut(String title) {
		String cut = null;
		if(title.length() >=20) {
			cut = title.substring(0,20) + "...";
		}else {
			cut = title;
		}return cut;
	}

	private String idCut(String id) {
		String cut = null;
		if(id.length() >=10) {
			cut = id.substring(0,10) + "...";
		}else {
			cut = id;
		}return cut;
	}
	
	public ArrayList<noticeDTO> getList(int start){
		/* 오라클
		 * String sql = "select * from "
				+ "(select rownum rn, tt.* from "
				+ "(select * from notice order by noindex desc) tt) "
				+ "where rn >= ? and rn <= ?"; */
		// mysql
		String sql = "select * from "
				+ "(select @rownum := @rownum + 1 as rn, tt.* from"
				+ "(select * from notice order by noindex desc)tt,(select @rownum:=0)tmp)pp "
				+ "where rn>=? and rn <=?;";
		
		ArrayList<noticeDTO> list = null;
		
		try {
			con = ds.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1,start);
			ps.setInt(2, start + 6);
			rs = ps.executeQuery();
			list = makeList(rs);
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs !=null) rs.close();
				if(ps !=null) ps.close();
				if(con !=null) con.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public ArrayList<noticeDTO> getList() {

		String sql = "select * from notice order by noindex desc";
		
		ArrayList<noticeDTO> list = null;

		try {
			con = ds.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			list = makeList(rs);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (ps != null) ps.close();
				if (con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return list;
	}
	
	public boolean write(noticeDTO dto) {
		boolean check = false;
		
		String sql = "insert into notice values(null,?,?,0,?,now(),?)";
		// index,제목,내용,조회수,작성자,날짜, 파일.
		try {
			con = ds.getConnection();
			ps= con.prepareStatement(sql);
			ps.setString(1, dto.getNotitle());
			ps.setString(2, dto.getNotext());
			ps.setString(3, dto.getNoname());
			ps.setString(4, dto.getNofile());
			if (ps.executeUpdate() != 0) {
				check = true;
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if (ps != null)
					ps.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return check;
	}
	
	//한개의 값을 불러오는 용.
	 public noticeDTO makeDTO(ResultSet rs) {
		 noticeDTO dto = null;
		 try {
			 if(rs.next()) {
				 dto = new noticeDTO();
				 dto.setNoindex(rs.getInt("noindex"));
				 dto.setNotitle(rs.getString("notitle"));
				 dto.setNotext(rs.getString("notext"));
				 dto.setNonum(rs.getInt("nonum"));
				 dto.setNoname(rs.getString("noname"));
				 dto.setNodate(rs.getDate("nodate"));
				 dto.setNofile(rs.getString("nofile"));
			 }
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }return dto;
	 }
	 
	 public noticeDTO getContent(int noindex) {
		 noticeDTO dto = null;
		 
		 String sql = "select * from notice where noindex=?";
		 
		 try {
			 con = ds.getConnection();
			 ps= con.prepareStatement(sql);
			 ps.setInt(1, noindex);
			 rs = ps.executeQuery();
			 dto = this.makeDTO(rs);
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }finally {
				try {
					if(rs != null) rs.close();
					if(ps != null) ps.close();
					if(con != null) con.close();
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
		 return dto;
	 }
	 
	 public void readCount(int noindex) {
		 String sql = "update notice set nonum = nonum + 1 where noindex = ?" ;
		 
		 try {
			con = ds.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, noindex);
			ps.executeUpdate();
		 }catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) ps.close();
				if(con != null) con.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
	 }
	 
	 public int updateContent(noticeDTO dto) {
		 String sql = "update notice set notitle=?, notext=? where noindex=?";
		 int count =0;
		 try {
			 con =ds.getConnection();
			 ps = con.prepareStatement(sql);
			 ps.setString(1, dto.getNotitle());
			 ps.setString(2, dto.getNotext());
			 ps.setInt(3, dto.getNoindex());
			 count = ps.executeUpdate();
		 } catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (ps != null)
						ps.close();
					if (con != null)
						con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return count;
	 }
	 
	 public int getTotal() {
		 String sql = "select count(*) from notice";
		 int su =0;
		 
		 try {
			 con = ds.getConnection();
			 ps = con.prepareStatement(sql);
			 rs = ps.executeQuery();
			 if(rs.next()) {
				 su = rs.getInt("count(*)");
			 }
		 }catch(SQLException e) {
			 e.printStackTrace();
		 }finally {
				try {
					if(rs != null) rs.close();
					if(ps != null) ps.close();
					if(con != null) con.close();
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
		 return su;
	 }

}
