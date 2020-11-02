package megabox.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import megabox.mvc.model.MovieDTO;
import megabox.mvc.model.ScreenInfoDTO;
import megabox.mvc.model.ScreenMovieDTO;

public class MovieDAO {
	private static MovieDAO dao = null;
	private MovieDAO() {};
	public static MovieDAO getInstance() {
		if (dao==null) {
			dao = new MovieDAO();
		}
		return dao;
	}
	public ArrayList<MovieDTO> MovieRank(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MovieDTO dto = null;
		ArrayList<MovieDTO> list = new ArrayList<MovieDTO>();
		String sql ="select m.* from(select movie.seq_movie, movie_name,gname,agrade,director,release_date,actors,runtime,summary,total_views,curation_name from movie join genre on movie.seq_genre = genre.seq_genre join age_grade on movie.seq_age = age_grade.seq_age join curation on type_seq = curation_seq where movie.total_views is not null order by movie.total_views desc) m where rownum<=4 ";
		try {
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new MovieDTO();
				dto.setNum(rs.getInt("seq_movie"));
				dto.setName(rs.getString("movie_name"));
				dto.setGenre(rs.getString("gname"));
				dto.setAge(rs.getString("agrade"));
				dto.setDirector(rs.getString("director"));
				dto.setDate(rs.getDate("release_date"));
				dto.setActors(rs.getString("actors"));
				dto.setRunningTime(rs.getInt("runtime"));
				dto.setSummary(rs.getString("summary"));
				dto.setView(rs.getLong("total_views"));
				dto.setType(rs.getString("curation_name"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public ArrayList<MovieDTO> MovieAllList(Connection conn, String name) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MovieDTO dto = null;
		ArrayList<MovieDTO> list = new ArrayList<MovieDTO>();
		String sql ="select rownum, seq_movie, movie_name,gname,agrade,director,release_date,actors,runtime,summary,total_views,curation_name,movie.seq_age age from movie join genre on movie.seq_genre = genre.seq_genre join age_grade on movie.seq_age = age_grade.seq_age join curation on type_seq = curation_seq ";
		try {
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new MovieDTO();
				dto.setNum(rs.getInt("seq_movie"));
				dto.setRank(rs.getInt("rownum"));
				dto.setName(rs.getString("movie_name"));
				dto.setGenre(rs.getString("gname"));
				dto.setAge(rs.getString("agrade"));
				dto.setDirector(rs.getString("director"));
				dto.setDate(rs.getDate("release_date"));
				dto.setActors(rs.getString("actors"));
				dto.setRunningTime(rs.getInt("runtime"));
				dto.setSummary(rs.getString("summary"));
				dto.setView(rs.getLong("total_views"));
				dto.setType(rs.getString("curation_name"));
				dto.setAgen(rs.getString("age"));
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
		String sql ="select seq_movie,movie_name,gname,agrade,director,release_date,actors,runtime,summary,total_views,curation_name from movie m join genre g on m.seq_genre = g.seq_genre join age_grade a on m.seq_age = a.seq_age join curation c on m.type_seq = c.curation_seq where release_date >= sysdate ";
		try {
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new MovieDTO();
				dto.setNum(rs.getInt("seq_movie"));
				dto.setName(rs.getString("MOVIE_NAME"));
				dto.setGenre(rs.getString("GNAME"));
				dto.setAge(rs.getString("AGRADE"));
				dto.setDirector(rs.getString("DIRECTOR"));
				dto.setDate(rs.getDate("RELEASE_DATE"));
				dto.setActors(rs.getString("ACTORS"));
				dto.setRunningTime(rs.getInt("RUNTIME"));
				dto.setSummary(rs.getString("SUMMARY"));
				dto.setView(rs.getLong("TOTAL_VIEWS"));
				dto.setType(rs.getString("CURATION_NAME"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (rs != null)
				try {
					rs.close();
					if (pstmt != null) pstmt.close();
					if (conn != null) conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}
	public List<MovieDTO> MovieFilmList(Connection conn, String name) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MovieDTO dto = null;
		ArrayList<MovieDTO> list = new ArrayList<MovieDTO>();
		String sql = "select seq_movie,movie_name,gname,agrade,director,release_date,actors,runtime,summary,total_views,curation_name from movie m join genre g on m.seq_genre = g.seq_genre join age_grade a on m.seq_age = a.seq_age join curation c on m.type_seq = c.curation_seq where c.curation_name = ? ";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "필름소사이어티");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new MovieDTO();
				dto.setNum(rs.getInt("seq_movie"));
				dto.setName(rs.getString("MOVIE_NAME"));
				dto.setGenre(rs.getString("GNAME"));
				dto.setAge(rs.getString("AGRADE"));
				dto.setDirector(rs.getString("DIRECTOR"));
				dto.setDate(rs.getDate("RELEASE_DATE"));
				dto.setActors(rs.getString("ACTORS"));
				dto.setRunningTime(rs.getInt("RUNTIME"));
				dto.setSummary(rs.getString("SUMMARY"));
				dto.setView(rs.getLong("TOTAL_VIEWS"));
				dto.setType(rs.getString("CURATION_NAME"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (rs != null)
				try {
					rs.close();
					if (pstmt != null) pstmt.close();
					if (conn != null) conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}
	public List<MovieDTO> MovieClassicList(Connection conn, String name) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MovieDTO dto = null;
		ArrayList<MovieDTO> list = new ArrayList<MovieDTO>();
		String sql = "select seq_movie,movie_name,gname,agrade,director,release_date,actors,runtime,summary,total_views,curation_name from movie m join genre g on m.seq_genre = g.seq_genre join age_grade a on m.seq_age = a.seq_age join curation c on m.type_seq = c.curation_seq where c.curation_name = ? ";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "클래식소사이어티");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new MovieDTO();
				dto.setNum(rs.getInt("seq_movie"));
				dto.setName(rs.getString("MOVIE_NAME"));
				dto.setGenre(rs.getString("GNAME"));
				dto.setAge(rs.getString("AGRADE"));
				dto.setDirector(rs.getString("DIRECTOR"));
				dto.setDate(rs.getDate("RELEASE_DATE"));
				dto.setActors(rs.getString("ACTORS"));
				dto.setRunningTime(rs.getInt("RUNTIME"));
				dto.setSummary(rs.getString("SUMMARY"));
				dto.setView(rs.getLong("TOTAL_VIEWS"));
				dto.setType(rs.getString("CURATION_NAME"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (rs != null)
				try {
					rs.close();
					if (pstmt != null) pstmt.close();
					if (conn != null) conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}
	public MovieDTO MovieDetail(Connection conn, int movieNum) { //영화 세부내용을 반환해주는 메서드
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		MovieDTO dto = new MovieDTO();
		String sql=" SELECT rownum, t.* from(select*from movie join genre on movie.seq_genre = genre.seq_genre join age_grade on movie.seq_age = age_grade.seq_age join curation on type_seq = curation_seq where seq_movie=? order by total_views desc) t ";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, movieNum);
			rs=pstmt.executeQuery();
			if (rs.next()) {
				dto.setRank(rs.getInt("rownum"));
				dto.setName(rs.getString("movie_name"));
				dto.setAge(rs.getString("agrade"));
				dto.setDate(rs.getDate("release_date"));
				dto.setActors(rs.getString("actors"));
				dto.setDirector(rs.getString("director"));
				dto.setGenre(rs.getString("gname"));
				dto.setNum(rs.getInt("seq_movie"));
				dto.setView(rs.getInt("total_views"));
				dto.setSummary(rs.getString("summary"));
				dto.setSpecial(rs.getString("special"));
				dto.setRunningTime(rs.getInt("runtime"));
			}else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if (rs != null)
				try {
					rs.close();
					if (pstmt != null) pstmt.close();
					if (conn != null) conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return dto;
	}
	public MovieDTO MovieRank(Connection conn, int movieNum) { //영화 세부내용을 반환해주는 메서드
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		MovieDTO dto = new MovieDTO();
		String sql=" SELECT release_date-sysdate a FROM movie where to_char(release_date-sysdate) > 0 and seq_movie = ?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, movieNum);
			rs=pstmt.executeQuery();
			if (rs.next()) {
				dto.setNum(rs.getInt("a"));
			}else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if (rs != null)
				try {
					rs.close();
					if (pstmt != null) pstmt.close();
					if (conn != null) conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return dto;
	}
	//영화 정보를 불러오는 메서드
	   public ArrayList<ScreenInfoDTO> MovieDetail(Connection conn, String branch, String dateScreen) {
	      
	      
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      ScreenInfoDTO dto = null;
	      ArrayList<ScreenInfoDTO> list = new ArrayList<ScreenInfoDTO>();
	      String sql = "";
	      
	      
	sql =   "   select * from ";
	sql+= "      (select movie_name, seq_screen,TO_CHAR(screen_time,'YYYY.MM.DD')screentime,  TO_CHAR(screen_time,'HH24:MI')time,  runtime ,theater , branch , theater_grade,seat  ";
	sql+="      from screen_info  ";
	sql+="      join movie using(seq_movie)  ";
	sql+="      join theater using(seq_theater)  ";
	sql+= "      join branch using(seq_branch)  ";
	sql+="      join theater_grade using(seq_grade)  ";
	sql+="      where REGEXP_LIKE(branch,   ?    ))  ";
	sql+="      where REGEXP_LIKE(screentime,   ?   )  ";


	      try {
	         pstmt=conn.prepareStatement(sql);
	         pstmt.setString(1, branch);
	         pstmt.setString(2, dateScreen);
	         rs = pstmt.executeQuery();
	         
	         
	         while (rs.next()) {
	            dto = new ScreenInfoDTO();
	            dto.setMovie_name(rs.getString("movie_name"));
	            dto.setScreen_time(rs.getString("time"));
	            dto.setRuntime(rs.getInt("runtime"));
	            dto.setTheater(rs.getString("theater"));
	            dto.setBranch(rs.getString("branch"));
	            dto.setTheater_grade(rs.getString("theater_grade"));
	            dto.setSeat(rs.getInt("seat"));
	            dto.setSeq_screen(rs.getInt("seq_screen"));
	            

	            list.add(dto);
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         if (rs != null)
	            try {
	               rs.close();
	               if (pstmt != null) pstmt.close();
	               if (conn != null) conn.close();
	            } catch (SQLException e) {
	               e.printStackTrace();
	            }
	      }
	      return list;
	   }
	   public List<ScreenMovieDTO> MovieSeat(Connection conn, int movie) {
		   
		   
		   PreparedStatement pstmt = null;
		   ResultSet rs = null;
		   ScreenMovieDTO dto = null;
		   List<ScreenMovieDTO>list = new ArrayList<ScreenMovieDTO>();
		   String sql = "select distinct seq_seat from movie join screen_info USING(seq_movie)join seat USING(seq_theater) where seq_movie = ? order by seq_seat asc";
		   
		   try {
			   pstmt=conn.prepareStatement(sql);
			   pstmt.setInt(1, movie);
			   rs = pstmt.executeQuery();
			   
			   
			   while (rs.next()) {
				   dto = new ScreenMovieDTO();
				   dto.setSeq_seat(rs.getString("seq_seat"));
				   list.add(dto);
			   }
		   } catch (SQLException e) {
			   e.printStackTrace();
		   }finally {
			   if (rs != null)
				   try {
					   rs.close();
					   if (pstmt != null) pstmt.close();
					   if (conn != null) conn.close();
				   } catch (SQLException e) {
					   e.printStackTrace();
				   }
		   }
		   return list;
	   }
	public MovieDTO takeContent(Connection conn, int movie, int time) {
		 PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      String sql = "select * from movie join screen_info USING(seq_movie) join age_grade using(seq_age) join theater USING(seq_theater) where seq_movie = ? and seq_screen = ? ";
	      MovieDTO dto = new MovieDTO();
	      try {
	         pstmt=conn.prepareStatement(sql);
	         pstmt.setInt(1, movie);
	         pstmt.setInt(2, time);
	         rs = pstmt.executeQuery();
	         if(rs.next()) {
	        	 dto.setName(rs.getString("movie_name"));
	        	 dto.setNum(rs.getInt("seq_movie"));
	        	 dto.setAge(rs.getString("agrade"));
	        	 dto.setRunningTime(rs.getInt("runtime"));
	        	 dto.setTheater(rs.getString("theater"));
	        	 dto.setTheaterDate(rs.getDate("screen_time"));
	            return dto;
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }finally {
	         if (rs != null)
	            try {
	               rs.close();
	               if (pstmt != null) pstmt.close();
	               if (conn != null) conn.close();
	            } catch (SQLException e) {
	               e.printStackTrace();
	            }
	      }
	      return null;
	}
}
