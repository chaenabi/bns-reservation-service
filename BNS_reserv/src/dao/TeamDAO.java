
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
			String sql = "INSERT INTO teams (id, bns_id, team_name, go_date, go_time, raid_type)" + "VALUES (?, ?, ?, ?, ?, ?)";

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
		String sql = "select team_name from teams where team_name = ?";
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
	
	//팀명 클릭시 아이템리스트 출력하는 메소드
	/*public List<HashMap<String,Object>> getItemList(String team_name){
		List<HashMap<String,Object>> list = new ArrayList<>();
		HashMap<String,Object> pl;
		String sql="SELECT DISTINCT t.bns_id, u.server, t.team_name, bs_tujang_ring1, bs_tujang_ring2, bs_tuji_ring1, bs_tuji_ring2, bs_tuhon_ring1, bs_tuhon_ring2,"
				+ " bs_tujang_earring1, bs_tujang_earring2, bs_tuji_earring1, bs_tuji_earring2, bs_tuhon_earring1, bs_tuhon_earring2,"
				+ " bs_tujang_ring3, bs_tujang_ring4, bs_tuji_ring3, bs_tuji_ring4, bs_tuhon_ring3, bs_tuhon_ring4, bs_tujang_earring3, bs_tujang_earring4,"
				+ " bs_tuji_earring3, bs_tuji_earring4, bs_tuhon_earring3, bs_tuhon_earring4, hukrin, ginki, gyukgol, bs_gang,"
				+ " bs_tujang_ring1_price, bs_tujang_ring2_price, bs_tuji_ring1_price, bs_tuji_ring2_price, bs_tuhon_ring1_price, bs_tuhon_ring2_price,"
				+"	 bs_tujang_earring1_price, bs_tujang_earring2_price, bs_tuji_earring1_price, bs_tuji_earring2_price, bs_tuhon_earring1_price, bs_tuhon_earring2_price,"
				+"	 bs_tujang_ring3_price, bs_tujang_ring4_price, bs_tuji_ring3_price, bs_tuji_ring4_price, bs_tuhon_ring3_price, bs_tuhon_ring4_price, bs_tujang_earring3_price, bs_tujang_earring4_price,"
				+"	 bs_tuji_earring3_price, bs_tuji_earring4_price, bs_tuhon_earring3_price, bs_tuhon_earring4_price, hukrin_price, ginki_price, gyukgol_price, bs_gang_price"
				+" FROM team t, black b, users u where t.team_name ='"+team_name+"' AND t.bns_id = b.bns_id";
		try {
			connect();
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				pl = new HashMap<>();

				pl.put("bns_id", rs.getString("bns_id"));
				pl.put("server", rs.getString("server"));
				pl.put("team_name", rs.getString("team_name"));			
				
				pl.put("bs_tujang_ring1", rs.getString("bs_tujang_ring1"));			
				pl.put("bs_tujang_ring2", rs.getString("bs_tujang_ring2"));
				pl.put("bs_tuji_ring1", rs.getString("bs_tuji_ring1"));
				pl.put("bs_tuji_ring2", rs.getString("bs_tuji_ring2"));
				pl.put("bs_tuhon_ring1", rs.getString("bs_tuhon_ring1"));
				pl.put("bs_tuhon_ring2", rs.getString("bs_tuhon_ring2"));
				pl.put("bs_tujang_earring1", rs.getString("bs_tujang_earring1"));
				pl.put("bs_tujang_earring2", rs.getString("bs_tujang_earring2"));
				pl.put("bs_tuji_earring1", rs.getString("bs_tujang_earring1"));
				pl.put("bs_tuji_earring2", rs.getString("bs_tujang_earring2"));
				pl.put("bs_tuhon_earring1", rs.getString("bs_tuhon_earring1"));
				pl.put("bs_tuhon_earring2", rs.getString("bs_tuhon_earring2"));
				pl.put("bs_tujang_ring3", rs.getString("bs_tujang_ring3"));
				pl.put("bs_tujang_ring4", rs.getString("bs_tujang_ring4"));
				pl.put("bs_tuji_ring3", rs.getString("bs_tuji_ring3"));
				pl.put("bs_tuji_ring4", rs.getString("bs_tuji_ring4"));
				pl.put("bs_tuhon_ring3", rs.getString("bs_tuhon_ring3"));
				pl.put("bs_tuhon_ring4", rs.getString("bs_tuhon_ring4"));		
				pl.put("bs_tujang_earring3", rs.getString("bs_tujang_earring3"));
				pl.put("bs_tujang_earring4", rs.getString("bs_tujang_earring4"));
				pl.put("bs_tuji_earring3", rs.getString("bs_tuji_earring3"));
				pl.put("bs_tuji_earring4", rs.getString("bs_tuji_earring4"));		
				pl.put("bs_tuhon_earring3", rs.getString("bs_tuhon_earring3"));
				pl.put("bs_tuhon_earring4", rs.getString("bs_tuhon_earring4"));
				pl.put("bs_tuhon_ring3", rs.getString("bs_tuhon_ring3"));
				pl.put("bs_tuhon_ring4", rs.getString("bs_tuhon_ring4"));
				pl.put("hukrin", rs.getString("hukrin"));
				pl.put("ginki", rs.getString("ginki"));		
				pl.put("gyukgol", rs.getString("gyukgol"));
				pl.put("bs_gang", rs.getString("bs_gang"));

				pl.put("bs_tujang_ring1_price", rs.getString("bs_tujang_ring1_price"));		
				pl.put("bs_tujang_ring2_price", rs.getString("bs_tujang_ring2_price"));
				pl.put("bs_tuji_ring1_price", rs.getString("bs_tuji_ring1_price"));
				pl.put("bs_tuji_ring2_price", rs.getString("bs_tuji_ring2_price"));
				pl.put("bs_tuhon_ring1_price", rs.getString("bs_tuhon_ring1_price"));
				pl.put("bs_tuhon_ring2_price", rs.getString("bs_tuhon_ring2_price"));			
				pl.put("bs_tujang_earring1_price", rs.getString("bs_tujang_earring1_price"));
				pl.put("bs_tujang_earring2_price", rs.getString("bs_tujang_earring2_price"));
				pl.put("bs_tuji_earring1_price", rs.getString("bs_tujang_earring1_price"));
				pl.put("bs_tuji_earring2_price", rs.getString("bs_tujang_earring2_price"));
				pl.put("bs_tuhon_earring1_price", rs.getString("bs_tuhon_earring1_price"));
				pl.put("bs_tuhon_earring2_price", rs.getString("bs_tuhon_earring2_price"));		
				pl.put("bs_tujang_ring3_price", rs.getString("bs_tujang_ring3_price"));
				pl.put("bs_tujang_ring4_price", rs.getString("bs_tujang_ring4_price"));
				pl.put("bs_tuji_ring3_price", rs.getString("bs_tuji_ring3_price"));
				pl.put("bs_tuji_ring4_price", rs.getString("bs_tuji_ring4_price"));
				pl.put("bs_tuhon_ring3_price", rs.getString("bs_tuhon_ring3_price"));
				pl.put("bs_tuhon_ring4_price", rs.getString("bs_tuhon_ring4_price"));		
				pl.put("bs_tujang_earring3_price", rs.getString("bs_tujang_earring3_price"));
				pl.put("bs_tujang_earring4_price", rs.getString("bs_tujang_earring4_price"));
				pl.put("bs_tuji_earring3_price", rs.getString("bs_tuji_earring3_price"));
				pl.put("bs_tuji_earring4_price", rs.getString("bs_tuji_earring4_price"));		
				pl.put("bs_tuhon_earring3_price", rs.getString("bs_tuhon_earring3_price"));
				pl.put("bs_tuhon_earring4_price", rs.getString("bs_tuhon_earring4_price"));
				pl.put("bs_tuhon_ring3_price", rs.getString("bs_tuhon_ring3_price"));
				pl.put("bs_tuhon_ring4_price", rs.getString("bs_tuhon_ring4_price"));
				pl.put("hukrin_price", rs.getString("hukrin_price"));
				pl.put("ginki_price", rs.getString("ginki_price"));		
				pl.put("gyukgol_price", rs.getString("gyukgol_price"));
				pl.put("bs_gang_price", rs.getString("bs_gang_price"));

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

	
	//팀명 클릭시 팀의 정보 출력하는 메소드
	public List<HashMap<String,Object>> getTeamInfo(String team_name){
		List<HashMap<String,Object>> list = new ArrayList<>();
		HashMap<String,Object> pl;
		System.out.println("팀명은~! :" +team_name);
	
	
		String sql="SELECT DISTINCT t.bns_id, server, team_name from teams t, users u where t.team_name ='" + team_name + "'";
			try {
				connect();
				pstmt = conn.prepareStatement(sql);

				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					pl = new HashMap<>();
					
					pl.put("bns_id", rs.getString("bns_id"));
					pl.put("server", rs.getString("server"));
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

	
	
	//시간클릭시 팀명 출력하는 메소드
	public List<HashMap<String,Object>> getTeams(String go_time){
		List<HashMap<String,Object>> list = new ArrayList<>();
		HashMap<String,Object> pl;
		String sql="select team_name from teams where go_time ='"+go_time+"'";
		
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
	}*/
	
	
	//서버클릭시 날짜 출력하는 메소드
	public List<HashMap<String,Object>> getDate(String server){
		List<HashMap<String,Object>> list = new ArrayList<>();
		HashMap<String,Object> pl;
		String sql="SELECT DISTINCT t.go_date from teams t, users u where u.server ='"+server+"' and u.bns_id = t.bns_id";
		
		try {
			connect();
			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				pl = new HashMap<>();
				
				pl.put("go_date", rs.getString("go_date"));
				
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
	
	//서버클릭시 시간 출력하는 메소드
		public List<HashMap<String,Object>> getTime(String server, String date){
			List<HashMap<String,Object>> list = new ArrayList<>();
			HashMap<String,Object> pl;
			String sql="SELECT DISTINCT t.go_time from teams t, users u where u.server ='"+server+"' and t.go_date ='"+date+"' and u.bns_id = t.bns_id";
			
			try {
				connect();
				pstmt = conn.prepareStatement(sql);

				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					pl = new HashMap<>();
					
					pl.put("go_time", rs.getString("go_time"));
					
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


