package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBC;
import vo.ItemDTO;

public class ItemDAO extends JDBC {

	//주문내역 보기. 아직 미구현 
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
	}
	return datas;
	}

	
	//아이템 예약 적용 메소드
	public void bs_item_update(ItemDTO ivo, String team_leader) {
		try {
			connect();
			// 검은 마천루 아이템 등록
			String bsi_sql = "UPDATE black b, team t SET bs_tujang_ring1=?, bs_tujang_ring2=?, bs_tuji_ring1=?, bs_tuji_ring2=?, bs_tuhon_ring1=?, bs_tuhon_ring2=?,"
					+ "bs_tujang_earring1=?, bs_tujang_earring2=?, bs_tuji_earring1=?, bs_tuji_earring2=?, bs_tuhon_earring1=?, bs_tuhon_earring2=?,"
					+ "bs_tujang_ring3=?, bs_tujang_ring4=?, bs_tuji_ring3=?, bs_tuji_ring4=?, bs_tuhon_ring3=?, bs_tuhon_ring4=?, bs_tujang_earring3=?, bs_tujang_earring4=?,"
					+ "bs_tuji_earring3=?, bs_tuji_earring4=?, bs_tuhon_earring3=?, bs_tuhon_earring4=?, hukrin=?, ginki=?, gyukgol=?, bs_gang=? WHERE b.bns_id='"+team_leader+"'"; 

			pstmt = conn.prepareStatement(bsi_sql);
			
			pstmt.setString(1, ivo.getBs_tujang_ring1());
			pstmt.setString(2, ivo.getBs_tujang_ring2());
			pstmt.setString(3, ivo.getBs_tuji_ring1());
			pstmt.setString(4, ivo.getBs_tuji_ring2());
			pstmt.setString(5, ivo.getBs_tuhon_ring1());
			pstmt.setString(6, ivo.getBs_tuhon_ring2());
			pstmt.setString(7, ivo.getBs_tujang_earring1());
			pstmt.setString(8, ivo.getBs_tujang_earring2());
			pstmt.setString(9, ivo.getBs_tuji_earring1());
			pstmt.setString(10, ivo.getBs_tuji_earring2());
			pstmt.setString(11, ivo.getBs_tuhon_earring1());
			pstmt.setString(12, ivo.getBs_tuhon_earring2());
			pstmt.setString(13, ivo.getBs_tujang_ring3());
			pstmt.setString(14, ivo.getBs_tujang_ring4());
			pstmt.setString(15, ivo.getBs_tuji_ring3());
			pstmt.setString(16, ivo.getBs_tuji_ring4());
			pstmt.setString(17, ivo.getBs_tuhon_ring3());
			pstmt.setString(18, ivo.getBs_tuhon_ring4());
			pstmt.setString(19, ivo.getBs_tujang_earring3());
			pstmt.setString(20, ivo.getBs_tujang_earring4());
			pstmt.setString(21, ivo.getBs_tuji_earring3());
			pstmt.setString(22, ivo.getBs_tuji_earring4());
			pstmt.setString(23, ivo.getBs_tuhon_earring3());
			pstmt.setString(24, ivo.getBs_tuhon_earring4());
			pstmt.setString(25, ivo.getHukrin());
			pstmt.setString(26, ivo.getGinki());
			pstmt.setString(27, ivo.getGyukgol());
			pstmt.setString(28, ivo.getBs_gang());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
	}

	
	//마천루 아이템 등록
	public void bs_addItems(ItemDTO ivo) {
		try {
			connect();

			// 검은 마천루 아이템 등록
			String bs_sql = "INSERT INTO black (id, bns_id, bs_tujang_ring1, bs_tujang_ring2, bs_tuji_ring1, bs_tuji_ring2, bs_tuhon_ring1, bs_tuhon_ring2,"
					+ "bs_tujang_earring1, bs_tujang_earring2, bs_tuji_earring1, bs_tuji_earring2, bs_tuhon_earring1, bs_tuhon_earring2,"
					+ "bs_tujang_ring3, bs_tujang_ring4, bs_tuji_ring3, bs_tuji_ring4, bs_tuhon_ring3, bs_tuhon_ring4, bs_tujang_earring3, bs_tujang_earring4,"
					+ "bs_tuji_earring3, bs_tuji_earring4, bs_tuhon_earring3, bs_tuhon_earring4, hukrin, ginki, gyukgol, bs_gang,"
					+ "bs_tujang_ring1_price, bs_tujang_ring2_price, bs_tuji_ring1_price, bs_tuji_ring2_price, bs_tuhon_ring1_price, bs_tuhon_ring2_price,"
					+"	 bs_tujang_earring1_price, bs_tujang_earring2_price, bs_tuji_earring1_price, bs_tuji_earring2_price, bs_tuhon_earring1_price, bs_tuhon_earring2_price,"
					+"	 bs_tujang_ring3_price, bs_tujang_ring4_price, bs_tuji_ring3_price, bs_tuji_ring4_price, bs_tuhon_ring3_price, bs_tuhon_ring4_price, bs_tujang_earring3_price, bs_tujang_earring4_price, "  
					+"	 bs_tuji_earring3_price, bs_tuji_earring4_price, bs_tuhon_earring3_price, bs_tuhon_earring4_price, hukrin_price, ginki_price, gyukgol_price, bs_gang_price)"
					+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
			pstmt = conn.prepareStatement(bs_sql);
			pstmt.setString(1, ivo.getId());
			pstmt.setString(2, ivo.getBns_id());
			pstmt.setString(3, ivo.getBs_tujang_ring1());
			pstmt.setString(4, ivo.getBs_tujang_ring2());
			pstmt.setString(5, ivo.getBs_tuji_ring1());
			pstmt.setString(6, ivo.getBs_tuji_ring2());
			pstmt.setString(7, ivo.getBs_tuhon_ring1());
			pstmt.setString(8, ivo.getBs_tuhon_ring2());
			pstmt.setString(9, ivo.getBs_tujang_earring1());
			pstmt.setString(10, ivo.getBs_tujang_earring2());
			pstmt.setString(11, ivo.getBs_tuji_earring1());
			pstmt.setString(12, ivo.getBs_tuji_earring2());
			pstmt.setString(13, ivo.getBs_tuhon_earring1());
			pstmt.setString(14, ivo.getBs_tuhon_earring2());
			pstmt.setString(15, ivo.getBs_tujang_ring3());
			pstmt.setString(16, ivo.getBs_tujang_ring4());
			pstmt.setString(17, ivo.getBs_tuji_ring3());
			pstmt.setString(18, ivo.getBs_tuji_ring4());
			pstmt.setString(19, ivo.getBs_tuhon_ring3());
			pstmt.setString(20, ivo.getBs_tuhon_ring4());
			pstmt.setString(21, ivo.getBs_tujang_earring3());
			pstmt.setString(22, ivo.getBs_tujang_earring4());
			pstmt.setString(23, ivo.getBs_tuji_earring3());
			pstmt.setString(24, ivo.getBs_tuji_earring4());
			pstmt.setString(25, ivo.getBs_tuhon_earring3());
			pstmt.setString(26, ivo.getBs_tuhon_earring4());
			pstmt.setString(27, ivo.getHukrin());
			pstmt.setString(28, ivo.getGinki());
			pstmt.setString(29, ivo.getGyukgol());
			pstmt.setString(30, ivo.getBs_gang());
			pstmt.setString(31, ivo.getBs_tujang_ring1_price());
			pstmt.setString(32, ivo.getBs_tujang_ring2_price());
			pstmt.setString(33, ivo.getBs_tuji_ring1_price());
			pstmt.setString(34, ivo.getBs_tuji_ring2_price());
			pstmt.setString(35, ivo.getBs_tuhon_ring1_price());
			pstmt.setString(36, ivo.getBs_tuhon_ring2_price());
			pstmt.setString(37, ivo.getBs_tujang_earring1_price());
			pstmt.setString(38, ivo.getBs_tujang_earring2_price());
			pstmt.setString(39, ivo.getBs_tuji_earring1_price());
			pstmt.setString(40, ivo.getBs_tuji_earring2_price());
			pstmt.setString(41, ivo.getBs_tuhon_earring1_price());
			pstmt.setString(42, ivo.getBs_tuhon_earring2_price());
			pstmt.setString(43, ivo.getBs_tujang_ring3_price());
			pstmt.setString(44,  ivo.getBs_tujang_ring4_price());
			pstmt.setString(45, ivo.getBs_tuji_ring3_price());
			pstmt.setString(46, ivo.getBs_tuji_ring4_price());
			pstmt.setString(47, ivo.getBs_tuhon_ring3_price());
			pstmt.setString(48, ivo.getBs_tuhon_ring4_price());
			pstmt.setString(49, ivo.getBs_tujang_earring3_price());
			pstmt.setString(50, ivo.getBs_tujang_earring4_price());
			pstmt.setString(51, ivo.getBs_tuji_earring3_price());
			pstmt.setString(52, ivo.getBs_tuji_earring4_price());
			pstmt.setString(53, ivo.getBs_tuhon_earring3_price());
			pstmt.setString(54, ivo.getBs_tuhon_earring4_price());
			pstmt.setString(55, ivo.getHukrin_price());
			pstmt.setString(56, ivo.getGinki_price());
			pstmt.setString(57, ivo.getGyukgol_price());
			pstmt.setString(58, ivo.getBs_gang_price());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}

	}

	
	//소용돌이 사원 아이템 등록
	public void vt_addItems(ItemDTO ivo) {
		try {
			connect();
	String vt_sql = "INSERT INTO vortex (id, bns_id, vt_gon_tujang, vt_sun_tujang, vt_gon_tuji, vt_sun_tuji, vt_gon_tuhon, vt_sun_tuhon, "
			+ "vt_tujang1, vt_tujang2, vt_tuji1, vt_tuji2, vt_tuhon1, vt_tuhon2, vt_gon_tujang2, vt_sun_tujang2, vt_gon_tuji2, vt_sun_tuji2, vt_gon_tuhon2, vt_sun_tuhon2,"
			+ "vt_tujang3, vt_tujang4, vt_tuji3, vt_tuji4, vt_tuhon3, vt_tuhon4, singongsuk, hukcham, amgak, muksi, vt_gang,"
			+ "vt_gon_tujang_price, vt_sun_tujang_price, vt_gon_tuji_price, vt_sun_tuji_price, vt_gon_tuhon_price, vt_sun_tuhon_price, "
			+ "vt_tujang1_price, vt_tujang2_price, vt_tuji1_price, vt_tuji2_price, vt_tuhon1_price, vt_tuhon2_price, vt_gon_tujang2_price, vt_sun_tujang2_price,"
			+ "vt_gon_tuji2_price, vt_sun_tuji2_price, vt_gon_tuhon2_price, vt_sun_tuhon2_price, vt_tujang3_price, vt_tujang4_price, vt_tuji3_price, vt_tuji4_price,"
			+ "vt_tuhon3_price, vt_tuhon4_price, singongsuk_price, hukcham_price, amgak_price, muksi_price, vt_gang_price)"
			+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	pstmt = conn.prepareStatement(vt_sql);
	pstmt.setString(1, ivo.getId());
	pstmt.setString(2, ivo.getBns_id());				
	pstmt.setString(3, ivo.getVt_gon_tujang()); 
	pstmt.setString(4, ivo.getVt_sun_tujang());
	pstmt.setString(5, ivo.getVt_gon_tuji());
	pstmt.setString(6, ivo.getVt_sun_tuji());
	pstmt.setString(7, ivo.getVt_gon_tuhon());
	pstmt.setString(8, ivo.getVt_sun_tuhon());			
	pstmt.setString(9, ivo.getVt_tujang1());
	pstmt.setString(10, ivo.getVt_tujang2());
	pstmt.setString(11, ivo.getVt_tuji1());
	pstmt.setString(12, ivo.getVt_tuji2());
	pstmt.setString(13, ivo.getVt_tuhon1());
	pstmt.setString(14, ivo.getVt_tuhon2());					
	pstmt.setString(15, ivo.getVt_gon_tujang2());
	pstmt.setString(16,  ivo.getVt_sun_tujang2());
	pstmt.setString(17, ivo.getVt_gon_tuji2());
	pstmt.setString(18, ivo.getVt_sun_tuji2());
	pstmt.setString(19, ivo.getVt_gon_tuhon2());
	pstmt.setString(20, ivo.getVt_sun_tuhon2());
	pstmt.setString(21, ivo.getVt_tujang3());
	pstmt.setString(22, ivo.getVt_tujang4());
	pstmt.setString(23, ivo.getVt_tuji3());
	pstmt.setString(24, ivo.getVt_tuji4());
	pstmt.setString(25, ivo.getVt_tuhon3());
	pstmt.setString(26, ivo.getVt_tuhon4());			
	pstmt.setString(27, ivo.getSingongsuk());
	pstmt.setString(28, ivo.getHukcham());
	pstmt.setString(29, ivo.getAmgak());
	pstmt.setString(30, ivo.getMuksi());
	pstmt.setString(31, ivo.getVt_gang());		
	pstmt.setString(32, ivo.getVt_gon_tujang_price());
	pstmt.setString(33, ivo.getVt_sun_tujang_price());
	pstmt.setString(34, ivo.getVt_gon_tuji_price());
	pstmt.setString(35, ivo.getVt_sun_tuji_price());
	pstmt.setString(36, ivo.getVt_gon_tuhon_price());
	pstmt.setString(37, ivo.getVt_sun_tuhon_price());					
	pstmt.setString(38, ivo.getVt_tujang1_price());
	pstmt.setString(39, ivo.getVt_tujang2_price());
	pstmt.setString(40, ivo.getVt_tuji1_price());
	pstmt.setString(41, ivo.getVt_tuji2_price());
	pstmt.setString(42, ivo.getVt_tuhon1_price());
	pstmt.setString(43, ivo.getVt_tuhon2_price());				
	pstmt.setString(44, ivo.getVt_gon_tujang2_price());
	pstmt.setString(45,  ivo.getVt_sun_tujang2_price());
	pstmt.setString(46, ivo.getVt_gon_tuji2_price());
	pstmt.setString(47, ivo.getVt_sun_tuji2_price());
	pstmt.setString(48, ivo.getVt_gon_tuhon2_price());
	pstmt.setString(49, ivo.getVt_sun_tuhon2_price());
	pstmt.setString(50, ivo.getVt_tujang3_price());
	pstmt.setString(51, ivo.getVt_tujang4_price());
	pstmt.setString(52, ivo.getVt_tuji3_price());
	pstmt.setString(53, ivo.getVt_tuji4_price());
	pstmt.setString(54, ivo.getVt_tuhon3_price());
	pstmt.setString(55, ivo.getVt_tuhon4_price());				
	pstmt.setString(56, ivo.getSingongsuk_price());
	pstmt.setString(57, ivo.getHukcham_price());
	pstmt.setString(58, ivo.getAmgak_price());
	pstmt.setString(59, ivo.getMuksi_price());
	pstmt.setString(60, ivo.getVt_gang_price());
	pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
	}


	
	//태천왕릉 아이템 등록
	public void tw_addItems(ItemDTO ivo) {
		try {
			connect();
	String tw_sql = "INSERT INTO twilight (id, bns_id, tw_tujang_ring1, tw_tujang_ring2, tw_tuji_ring1, tw_tuji_ring2, tw_tuhon_ring1, tw_tuhon_ring2,"
			+ "tw_tujang_earring1, tw_tujang_earring2, tw_tuji_earring1, tw_tuji_earring2, tw_tuhon_earring1, tw_tuhon_earring2, tw_tujang_ring3, tw_tujang_ring4,"
			+ "tw_tuji_ring3, tw_tuji_ring4, tw_tuhon_ring3, tw_tuhon_ring4, tw_tujang_earring3, tw_tujang_earring4, tw_tuji_earring3, tw_tuji_earring4,"
			+ "tw_tuhon_earring3, tw_tuhon_earring4, siik, gwangbae, nukgol, tw_gang,"
			+ "tw_tujang_ring1_price, tw_tujang_ring2_price, tw_tuji_ring1_price, tw_tuji_ring2_price, tw_tuhon_ring1_price, tw_tuhon_ring2_price,"
			+ "tw_tujang_earring1_price, tw_tujang_earring2_price, tw_tuji_earring1_price, tw_tuji_earring2_price, tw_tuhon_earring1_price, tw_tuhon_earring2_price,"
			+ "tw_tujang_ring3_price, tw_tujang_ring4_price, tw_tuji_ring3_price, tw_tuji_ring4_price, tw_tuhon_ring3_price, tw_tuhon_ring4_price,"
			+ "tw_tujang_earring3_price, tw_tujang_earring4_price, tw_tuji_earring3_price, tw_tuji_earring4_price, tw_tuhon_earring3_price, tw_tuhon_earring4_price,"
			+ "siik_price, gwangbae_price, nukgol_price, tw_gang_price)"
			+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	pstmt = conn.prepareStatement(tw_sql);
	pstmt.setString(1, ivo.getId());
	pstmt.setString(2, ivo.getBns_id());
	pstmt.setString(3, ivo.getTw_tujang_ring1());
	pstmt.setString(4, ivo.getTw_tujang_ring2());
	pstmt.setString(5, ivo.getTw_tuji_ring1());
	pstmt.setString(6, ivo.getTw_tuji_ring2());
	pstmt.setString(7, ivo.getTw_tuhon_ring1());
	pstmt.setString(8, ivo.getTw_tuhon_ring2());
	pstmt.setString(9, ivo.getTw_tujang_earring1());
	pstmt.setString(10, ivo.getTw_tujang_earring2());
	pstmt.setString(11, ivo.getTw_tuji_earring1());
	pstmt.setString(12, ivo.getTw_tuji_earring2());
	pstmt.setString(13, ivo.getTw_tuhon_earring1());
	pstmt.setString(14, ivo.getTw_tuhon_earring2());
	pstmt.setString(15, ivo.getTw_tujang_ring3());
	pstmt.setString(16,  ivo.getTw_tujang_ring4());
	pstmt.setString(17, ivo.getTw_tuji_ring3());
	pstmt.setString(18, ivo.getTw_tuji_ring4());
	pstmt.setString(19, ivo.getTw_tuhon_ring3());
	pstmt.setString(20, ivo.getTw_tuhon_ring4());
	pstmt.setString(21, ivo.getTw_tujang_earring3());
	pstmt.setString(22, ivo.getTw_tujang_earring4());
	pstmt.setString(23, ivo.getTw_tuji_earring3());
	pstmt.setString(24, ivo.getTw_tuji_earring4());
	pstmt.setString(25, ivo.getTw_tuhon_earring3());
	pstmt.setString(26, ivo.getTw_tuhon_earring4());
	pstmt.setString(27, ivo.getSiik());
	pstmt.setString(28, ivo.getGwangbae());
	pstmt.setString(29, ivo.getNukgol());
	pstmt.setString(30, ivo.getTw_gang());
	pstmt.setString(31, ivo.getTw_tujang_ring1_price());
	pstmt.setString(32, ivo.getTw_tujang_ring2_price());
	pstmt.setString(33, ivo.getTw_tuji_ring1_price());
	pstmt.setString(34, ivo.getTw_tuji_ring2_price());
	pstmt.setString(35, ivo.getTw_tuhon_ring1_price());
	pstmt.setString(36, ivo.getTw_tuhon_ring2_price());
	pstmt.setString(37, ivo.getTw_tujang_earring1_price());
	pstmt.setString(38, ivo.getTw_tujang_earring2_price());
	pstmt.setString(39, ivo.getTw_tuji_earring1_price());
	pstmt.setString(40, ivo.getTw_tuji_earring2_price());
	pstmt.setString(41, ivo.getTw_tuhon_earring1_price());
	pstmt.setString(42, ivo.getTw_tuhon_earring2_price());
	pstmt.setString(43, ivo.getTw_tujang_ring3_price());
	pstmt.setString(44,  ivo.getTw_tujang_ring4_price());
	pstmt.setString(45, ivo.getTw_tuji_ring3_price());
	pstmt.setString(46, ivo.getTw_tuji_ring4_price());
	pstmt.setString(47, ivo.getTw_tuhon_ring3_price());
	pstmt.setString(48, ivo.getTw_tuhon_ring4_price());
	pstmt.setString(49, ivo.getTw_tujang_earring3_price());
	pstmt.setString(50, ivo.getTw_tujang_earring4_price());
	pstmt.setString(51, ivo.getTw_tuji_earring3_price());
	pstmt.setString(52, ivo.getTw_tuji_earring4_price());
	pstmt.setString(53, ivo.getTw_tuhon_earring3_price());
	pstmt.setString(54, ivo.getTw_tuhon_earring4_price());
	pstmt.setString(55, ivo.getSiik_price());
	pstmt.setString(56, ivo.getGwangbae_price());
	pstmt.setString(57, ivo.getNukgol_price());
	pstmt.setString(58, ivo.getTw_gang_price());
	pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();

		}

	}
	
	//태천왕릉 아이템 등록
	public void rd_addItems(ItemDTO ivo) {
		try {
			connect();
	String rd_sql = "INSERT INTO reddream (id, bns_id, rd_sa_tujang, rd_mo_tujang, rd_sa_tuji, rd_mo_tuji, rd_sa_tuhon, rd_mo_tuhon, "
						  + "rd_tujang1_neck,  rd_tujang2_neck, rd_tuji1_neck, rd_tuji2_neck, rd_tuhon1_neck, rd_tuhon2_neck,"
						  + "poyup, jamo, ipmak, rd_gang,"
						  + "rd_sa_tujang_price, rd_mo_tujang_price, rd_sa_tuji_price, rd_mo_tuji_price, rd_sa_tuhon_price, rd_mo_tuhon_price,"
						  + "rd_tujang1_neck_price, rd_tujang2_neck_price, rd_tuji1_neck_price, rd_tuji2_neck_price, rd_tuhon1_neck_price, rd_tuhon2_neck_price,"
						  + "poyup_price, jamo_price, ipmak_price, rd_gang_price)"
			+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	pstmt = conn.prepareStatement(rd_sql);
	pstmt.setString(1, ivo.getId());
	pstmt.setString(2, ivo.getBns_id());
	pstmt.setString(3, ivo.getRd_sa_tujang());
	pstmt.setString(4, ivo.getRd_mo_tujang());
	pstmt.setString(5, ivo.getRd_sa_tuji());
	pstmt.setString(6, ivo.getRd_mo_tuji());
	pstmt.setString(7, ivo.getRd_sa_tuhon());
	pstmt.setString(8, ivo.getRd_mo_tuhon());
	pstmt.setString(9, ivo.getRd_tujang1_neck());
	pstmt.setString(10, ivo.getRd_tujang2_neck());
	pstmt.setString(11, ivo.getRd_tuji1_neck());
	pstmt.setString(12, ivo.getRd_tuji2_neck());
	pstmt.setString(13, ivo.getRd_tuhon1_neck());
	pstmt.setString(14, ivo.getRd_tuhon2_neck());
	pstmt.setString(15, ivo.getPoyup());
	pstmt.setString(16, ivo.getJamo());
	pstmt.setString(17, ivo.getIpmak());
	pstmt.setString(18,  ivo.getRd_gang());
	pstmt.setString(19, ivo.getRd_sa_tujang_price());
	pstmt.setString(20, ivo.getRd_mo_tujang_price());
	pstmt.setString(21, ivo.getRd_sa_tuji_price());
	pstmt.setString(22, ivo.getRd_mo_tuji_price());
	pstmt.setString(23, ivo.getRd_sa_tuhon_price());
	pstmt.setString(24, ivo.getRd_mo_tuhon_price());
	pstmt.setString(25, ivo.getRd_tujang1_neck_price());
	pstmt.setString(26, ivo.getRd_tujang2_neck_price());
	pstmt.setString(27, ivo.getRd_tuji1_neck_price());
	pstmt.setString(28, ivo.getRd_tuji2_neck_price());
	pstmt.setString(29, ivo.getRd_tuhon1_neck_price());
	pstmt.setString(30, ivo.getRd_tuhon2_neck_price());
	pstmt.setString(31, ivo.getPoyup_price());
	pstmt.setString(32, ivo.getJamo_price());
	pstmt.setString(33, ivo.getIpmak_price());
	pstmt.setString(34, ivo.getRd_gang_price());
	
	pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}

	}
	
}
