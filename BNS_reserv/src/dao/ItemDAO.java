package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import common.JDBC;

public class ItemDAO extends JDBC {

	static ItemDAO instance = new ItemDAO();
	public static ItemDAO getInstance() {
		return instance;
	}
	
	
	// 레이드 타입에 따라 Items 테이블의 아이템목록을 가지고 오는 메소드
	public List<HashMap<String,Object>> showItems(String item_type, String boss_level) {

		
	
		List<HashMap<String,Object>> items = new ArrayList<>();
		HashMap<String,Object> pl;
		connect();
			
		String sql = "select item_name from items where item_type = '"+item_type+"' and boss_level ='"+boss_level+"'";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
	
				pl = new HashMap<>();
				pl.put("item_name", rs.getString("item_name"));				
				items.add(pl);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}

		return items;

	}
}






	/*//주문내역 보기. 아직 미구현 
	public ArrayList<ItemDTO> getPurchasehistory() {
		
		connect();
		
		ArrayList<ItemDTO> datas = new ArrayList<ItemDTO>();
		
		String sql = "select id from ";
		try {
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			ItemDTO ivo = new ItemDTO();
			
		
			ivo.setBns_id(rs.getString("bns_id"));
			ivo.setEmail(rs.getString("email"));
			ivo.setNickname(rs.getString("nickname"));
			ivo.setAccess_token(rs.getString("access_token"));
			datas.add(ivo);
			 
		}
		rs.close();
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		disconnect();
	}
	return datas;
	}*/


