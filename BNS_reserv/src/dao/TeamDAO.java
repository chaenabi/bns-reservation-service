
package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import common.JDBC;
import vo.TeamDTO;

public class TeamDAO extends JDBC {

	static TeamDAO instance = new TeamDAO();
	public static TeamDAO getInstance() {
		return instance;
	}
	
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
	
	// bns 아이디가 db에 등록되어 있는지 중복체크
	public Boolean search_tn(String team_name) {
		boolean result = false;
		String sql = "select team_name from team where team_name = ?";
		try {
			connect();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, team_name);

			rs = pstmt.executeQuery();
			if (rs.next()) {	
				result = true;
			} 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결해제
			disconnect();
		}
		return result;

	}
	
	
	public List<HashMap<String,Object>> getTeams(String go_time){
		List<HashMap<String,Object>> list = new ArrayList<>();
		HashMap<String,Object> pl;
		String sql="select team_name from team where go_time ='"+go_time+"'";
		
		try {
			connect();
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				pl = new HashMap<>();
				
				pl.put("team_name", rs.getString("team_name"));
				
				list.add(pl);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결해제
			disconnect();
		}
		return list;
	}
	
	
	
}
