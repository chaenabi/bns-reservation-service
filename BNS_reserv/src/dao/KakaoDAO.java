package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBC;
import vo.KakaoDTO;


public class KakaoDAO extends JDBC {
	
	// 카카오톡 아이디 전체 조회
	public ArrayList<KakaoDTO> getIdList() {
		connect();
		ArrayList<KakaoDTO> datas = new ArrayList<KakaoDTO>();
		
		String sql = "select * from users order by nickname"; //마리아db의 sql 문법에 맞는지 꼭 확인할것
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
			String sql = "insert into users (id, email, nickname, access_token)"
					+ "values (?, ?, ?, ?)"; //마리아db의 sql 문법에 맞는지 꼭 확인할것
			System.out.println(kvo);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, kvo.getId());
			pstmt.setString(2, kvo.getEmail());
			pstmt.setString(3, kvo.getNickname());
			pstmt.setString(4, kvo.getAccess_token());

			int r = pstmt.executeUpdate();

			System.out.println(r + " 건 등록 완료");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();
			System.out.println("세션 종료되었습니다.");
		}

	}
	
	
}
