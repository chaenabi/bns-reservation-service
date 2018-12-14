package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBC;
import vo.ItemDTO;

public class ItemDAO extends JDBC {

	//Items 테이블의 아이템목록과, (레이드 기준에 따른) 아이템구분값을 모두 가지고 오는 메소드.
	public ArrayList<ItemDTO> showItems() {
		
		connect();
		
		ArrayList<ItemDTO> items = new ArrayList<ItemDTO>();		
		
		String sql = "select item_name, item_type from items";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
	
				ItemDTO ivo = new ItemDTO();
				ivo.setItem_name(rs.getString("item_name"));
				ivo.setItem_type(rs.getString("item_type"));
				
				items.add(ivo);
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


