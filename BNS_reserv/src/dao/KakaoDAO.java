package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
			while (rs.next()) {
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
		} finally {
			disconnect();
		}
		return datas;
	}

	// bns 아이디가 db에 등록되어 있는지 중복체크
	public Boolean search_id(String bns_id) {

		String sql = "select bns_id from users where bns_id = ?";
		try {
			connect();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bns_id);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결해제
			disconnect();
		}
		return false;

	}
	

	// bns 아이디가 db에 등록되어 있는지 중복체크2. 
	//다른 점은 확인 후 아이디가 있으면 아이디를 입력하는 창이 뜨지 않고 넘어가게
	// 처리하기 위해 만든 메서드라는 점.
	public Boolean search_id2(String id) {

		String sql = "select bns_id from users where id = ?";
		try {
			connect();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결해제
			disconnect();
		}
		return false;

	}
	

	// 카카오톡 아이디 로그인 정보 DB 등록
	public void insertID(KakaoDTO kvo) {
		try {
			connect();
			System.out.println("세션 접속 완료.");
			String sql = "INSERT INTO users (id, bns_id, email, nickname, access_token)" + "VALUES (?, ?, ?, ?, ?)"
					+ "ON DUPLICATE KEY UPDATE bns_id=VALUES(bns_id)" + ", email=VALUES(email)"
					+ ", nickname=VALUES(nickname)" + ", access_token=VALUES(access_token)";
			// OR
			// "INSERT INTO users (id, bns_id, email, nickname, access_token) VALUES (?, ?,
			// ?, ?, ?)"
			// + "ON DUPLICATE KEY UPDATE bns_id=?, email=?, nickname=?, access_token=?";
			System.out.println("ID정보를 DB에 적용합니다. : ");
			System.out.println(kvo);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, kvo.getId());
			pstmt.setString(2, kvo.getBns_id());
			pstmt.setString(3, kvo.getEmail());
			pstmt.setString(4, kvo.getNickname());
			pstmt.setString(5, kvo.getAccess_token());
			// pstmt.setInt(5, kvo.getLog_count());

			int r = pstmt.executeUpdate();

			System.out.println(r + " 건 등록 완료");
			// }
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();
			System.out.println("세션 종료되었습니다.");
		}

	}

}
