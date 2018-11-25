
package dao;

import java.sql.SQLException;
import common.JDBC;
import vo.TeamDTO;

public class TeamDAO extends JDBC {

	//팀 등록(아이템 등록) sale_register.jsp
	public void addTeam(TeamDTO tvo) {
		try {
			connect();
			String sql = "INSERT INTO team (id, bns_id, team_name, go_date, go_time, raid_type)" + "VALUES (?, ?, ?, ?, ?, ?)";

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
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();

		}

	}
	
	
	
}
