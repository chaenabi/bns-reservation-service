package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBC;
import vo.KakaoDTO;


public class KakaoDAO extends JDBC {
	
	// 카카오톡 정보 전체 조회
	public ArrayList<KakaoDTO> getIdList() {
		connect();
		ArrayList<KakaoDTO> datas = new ArrayList<KakaoDTO>();
		
		String sql = "select * from users order by nickname";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				KakaoDTO kvo = new KakaoDTO();
				
				kvo.setId(rs.getString("id"));
				kvo.setEmail(rs.getString("email"));
				kvo.setNickname(rs.getString("nickname"));
				kvo.setAccess_token(rs.getString("access_token"));
				datas.add(kvo);
			}
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return datas;
	}

	
	// 카카오톡 아이디 로그인 정보 DB 등록
	public void insertID(KakaoDTO kvo) {
		try {
			connect();
			System.out.println("세션 접속 완료.");
			String sql = "INSERT INTO users (id, email, nickname, access_token)"
					+ "VALUES (?, ?, ?, ?)" 
					+ "ON DUPLICATE KEY UPDATE email=VALUES(email)" 
																	  +", nickname=VALUES(nickname)"
											                          +", access_token=VALUES(access_token)";
					// OR
					//"INSERT INTO users (id, email, nickname, access_token) VALUES (?, ?, ?, ?)"
					//+ "ON DUPLICATE KEY UPDATE email=?, nickname=?, access_token=?";
			System.out.println("ID정보를 DB에 적용합니다. : ");
			System.out.println(kvo);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, kvo.getId());
			pstmt.setString(2, kvo.getEmail());
			pstmt.setString(3, kvo.getNickname());
			pstmt.setString(4, kvo.getAccess_token());
			//pstmt.setInt(5, kvo.getLog_count());

			int r = pstmt.executeUpdate();

			System.out.println(r + " 건 등록 완료");
			//}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();
			System.out.println("세션 종료되었습니다.");
		}

	}
	
	
	// 카카오 아이디, 닉네임, 이메일 조회용.
	// (카카오톡 전체 조회와는 다른 용도로 사용하기 위해 만들어 두었으나.. 별차이가 없긴하다..)
	public List<KakaoDTO> selectAll(String id) {
		List<KakaoDTO> list = new ArrayList<>();
		KakaoDTO kvo = new KakaoDTO();
		try {
			connect();
			stmt = conn.createStatement();
			String sql=null;
			if(id.equals("all")) {
				
				sql ="select id, nickname, email from users";
			
			}
			ResultSet rs = stmt.executeQuery(sql);
			
			if( rs.next() ) {
				
				kvo.setId(rs.getString("id"));
				kvo.setNickname(rs.getString("nickname"));
				kvo.setEmail(rs.getString("email"));

				list.add(kvo);
			}	
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			disconnect();
		} 
		return list;
	
	}

}
