package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBC;
import vo.ItemDTO;
import vo.TeamDTO;

public class TeamDAO extends JDBC {

	public void addTeam(TeamDTO tvo) {
		try {
			connect();
			System.out.println("세션 접속 완료.");
			String sql = "INSERT INTO team (id, team_name, go_date, go_time, raid_type)" + "VALUES (?, ?, ?, ?, ?)";

			System.out.println("ID정보를 DB에 적용합니다. : ");

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, tvo.getId());
			pstmt.setString(2, tvo.getTeam_name());
			pstmt.setString(3, tvo.getGo_date());
			pstmt.setString(4, tvo.getGo_time());
			pstmt.setString(5, tvo.getRaid_type());

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

	public ArrayList<ItemDTO> getPurchasehistory() {
	
			connect();
			System.out.println("세션 접속 완료.");
			
			ArrayList<ItemDTO> datas = new ArrayList<ItemDTO>();
			
			String sql = "select id from ";
			try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				ItemDTO ivo = new ItemDTO();
				
			
				ivo.setBns_id(rs.getString("bns_id"));
				/*ivo.setEmail(rs.getString("email"));
				ivo.setNickname(rs.getString("nickname"));
				ivo.setAccess_token(rs.getString("access_token"));
				datas.add(ivo);
				 */
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
			System.out.println("세션 종료되었습니다.");
		}
		return datas;
		}
	
}
