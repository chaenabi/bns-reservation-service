
package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBC;
import vo.ItemDTO;
import vo.TeamDTO;

public class TeamDAO extends JDBC {

	//팀 등록
	public void addTeam(TeamDTO tvo) {
		try {
			connect();
			System.out.println("세션 접속 완료.");
			String sql = "INSERT INTO team (id, bns_id, team_name, go_date, go_time, raid_type)" + "VALUES (?, ?, ?, ?, ?, ?)";

			//System.out.println("ID정보를 DB에 적용합니다. : ");

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, tvo.getId());
			pstmt.setString(2, tvo.getBns_id());
			pstmt.setString(3, tvo.getTeam_name());
			pstmt.setString(4, tvo.getGo_date());
			pstmt.setString(5, tvo.getGo_time());
			pstmt.setString(6, tvo.getRaid_type());

			/*int r = */ pstmt.executeUpdate();
			//System.out.println(r + " 건 등록 완료");
			// }
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();
			//System.out.println("세션 종료되었습니다.");
		}

	}
	
	
	
}
