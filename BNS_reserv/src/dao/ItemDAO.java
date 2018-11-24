package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBC;
import vo.ItemDTO;
import vo.TeamDTO;

public class ItemDAO extends JDBC {

	
	public ArrayList<TeamDTO> viewBS_godate(String[] server) {
		connect();
		System.out.println("세션 접속 완료.");
		ArrayList<TeamDTO> datas = new ArrayList<TeamDTO>();
		try {
		for (int i=0; i < server.length; i++) {
		String sql = "select go_date, go_time from team, users"
						 + "where server="+server[i]+" group by go_date, go_time";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
				while(rs.next()) {
					TeamDTO tvo = new TeamDTO();
					datas.add(tvo);
				}
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
