package megabox.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import megabox.mvc.model.MovieDTO;

public class MovieDAO {
	private static MovieDAO dao = null;
	private MovieDAO() {};
	public static MovieDAO getInstance() {
		if (dao==null) {
			dao = new MovieDAO();
		}
		return dao;
	}
	public ArrayList<MovieDTO> MovieAllList(Connection conn, String name) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MovieDTO dto = null;
		ArrayList<MovieDTO> list = new ArrayList<MovieDTO>();
		String sql ="select m.movie_name mname,g.gname gname,a.agrade agrade "
				+ ", m.director mdirector,m.release_date mrdate,m.actors mactors "
				+ ", m.runtime mruntime,m.summary msummary,m.total_views mtviews"
				+ ", c.curation_name ccname from movie m join genre g on m.seq_genre = g.seq_genre "
				+ " join age_grade a on m.seq_age = a.seq_age join curation c on m.type_seq = c.curation_seq ";
		try {
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				//dto 객체에 데이터 넣어야 됨
				dto = new MovieDTO();
				dto.setName(rs.getString("mname"));
				dto.setGenre(rs.getString("gname"));
				dto.setAge(rs.getString("agrade"));
				dto.setDirector(rs.getString("mdirector"));
				dto.setDate(rs.getDate("mrdate"));
				dto.setActors(rs.getString("mactors"));
				dto.setRunningTime(rs.getInt("mruntime"));
				dto.setSummary(rs.getClob("msummary"));
				dto.setView(rs.getLong("mtviews"));
				dto.setType(rs.getString("ccname"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<MovieDTO> MovieComingsoon(Connection conn, String name) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MovieDTO dto = null;
		ArrayList<MovieDTO> list = new ArrayList<MovieDTO>();
		String sql ="select m.movie_name mname , g.gname gname , a.agrade agrade, m.director mdirector "
				+ ", m.release_date mrdate , m.actors mactors , m.runtime mruntime , m.summary msummary "
				+ ", m.total_views mtviews ,c.curation_name ccname from movie m "
				+ " join genre g on m.seq_genre = g.seq_genre join age_grade a on m.seq_age = a.seq_age "
				+ " join curation c on m.type_seq = c.curation_seq where m.release_date <= sysdate ";
		try {
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new MovieDTO();
				dto.setName(rs.getString("mname"));
				dto.setGenre(rs.getString("gname"));
				dto.setAge(rs.getString("agrade"));
				dto.setDirector(rs.getString("mdirector"));
				dto.setDate(rs.getDate("mrdate"));
				dto.setActors(rs.getString("mactors"));
				dto.setRunningTime(rs.getInt("mruntime"));
				dto.setSummary(rs.getClob("msummary"));
				dto.setView(rs.getLong("mtviews"));
				dto.setType(rs.getString("ccname"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<MovieDTO> MovieFilmList(Connection conn, String name) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MovieDTO dto = null;
		ArrayList<MovieDTO> list = new ArrayList<MovieDTO>();
		String sql = "select m.movie_name mname , g.gname gname ,a.agrade agrade "
				+ ", m.director mdirector , m.release_date mrdate , m.actors mactors "
				+ ", m.runtime mruntime , m.summary msummary ,m.total_views,c.curation_name ccname "
				+ " from movie m join genre g on m.seq_genre = g.seq_genre "
				+ " join age_grade a on m.seq_age = a.seq_age join curation c on m.type_seq = c.curation_seq "
				+ " where c.curation_name ='필름소사이어티' ";
		try {
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new MovieDTO();
				dto.setName(rs.getString("mname"));
				dto.setGenre(rs.getString("gname"));
				dto.setAge(rs.getString("agrade"));
				dto.setDirector(rs.getString("mdirector"));
				dto.setDate(rs.getDate("mrdate"));
				dto.setActors(rs.getString("mactors"));
				dto.setRunningTime(rs.getInt("mruntime"));
				dto.setSummary(rs.getClob("msummary"));
				dto.setView(rs.getLong("mtviews"));
				dto.setType(rs.getString("ccname"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<MovieDTO> MovieClassicList(Connection conn, String name) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MovieDTO dto = null;
		ArrayList<MovieDTO> list = new ArrayList<MovieDTO>();
		String sql = "select m.movie_name mname , g.gname gname , a.agrade agrade , m.director mdirector "
				+ ", m.release_date mrdate , m.actors mactors , m.runtime mruntime "
				+ ", m.summary msummary ,m.total_views mtviews , c.curation_name ccname "
				+ " from movie m join genre g on m.seq_genre = g.seq_genre "
				+ " join age_grade a on m.seq_age = a.seq_age join curation c on m.type_seq = c.curation_seq "
				+ " where c.curation_name ='클래식소사이어티' ";
		try {
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new MovieDTO();
				dto.setName(rs.getString("mname"));
				dto.setGenre(rs.getString("gname"));
				dto.setAge(rs.getString("agrade"));
				dto.setDirector(rs.getString("mdirector"));
				dto.setDate(rs.getDate("mrdate"));
				dto.setActors(rs.getString("mactors"));
				dto.setRunningTime(rs.getInt("mruntime"));
				dto.setSummary(rs.getClob("msummary"));
				dto.setView(rs.getLong("mtviews"));
				dto.setType(rs.getString("ccname"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
