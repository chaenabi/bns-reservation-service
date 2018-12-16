package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import common.JDBC;
import vo.SaleDTO;

public class ItemDAO extends JDBC {

	static ItemDAO instance = new ItemDAO();
	public static ItemDAO getInstance() {
		return instance;
	}
	
	
	// 레이드 타입과 보스의 종류에 따라 Items 테이블의 아이템목록을 가지고 오는 메소드
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



//팀 등록(아이템 등록) sale_register.jsp
	public void add_SaleItems(SaleDTO svo) {
		try {
			connect();
			String sql = "INSERT INTO sales (team_name, sale_items, sale_price)" + "VALUES (?, ?, ?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, svo.getTeam_name());
			pstmt.setString(2, svo.getSale_items());
			pstmt.setString(3, svo.getSale_price());


			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();

		}

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


