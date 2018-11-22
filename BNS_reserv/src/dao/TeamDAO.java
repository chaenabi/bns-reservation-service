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
	
	//아이템 등록
	public void addItems(ItemDTO tvo) {
		try {
			connect();
			
			// 검은 마천루 아이템 등록
			String bs_sql = "INSERT INTO black (bs_tujang_ring1, bs_tujang_ring2, bs_tuji_ring1, bs_tuji_ring2, bs_tuhon_ring1, bs_tuhon_ring2,"
					+ "bs_tujang_earring1, bs_tujang_earring2, bs_tuji_earring1, bs_tuji_earring2, bs_tuhon_earring1, bs_tuhon_earring2,"
					+ "bs_tujang_ring3, bs_tujang_ring4, bs_tuji_ring3, bs_tuji_ring4, bs_tuhon_ring3, bs_tuhon_ring4, bs_tujang_earring3, bs_tujang_earring4,"
					+ "bs_tuji_earring3, bs_tuji_earring4, bs_tuhon_earring3, bs_tuhon_earring4, hukrin, ginki, gyukgol, bs_gang)"
					+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(bs_sql);
			pstmt.setString(1, tvo.getBs_tujang_ring1());
			pstmt.setString(2, tvo.getBs_tujang_ring2());
			pstmt.setString(3, tvo.getBs_tuji_ring1());
			pstmt.setString(4, tvo.getBs_tuji_ring2());
			pstmt.setString(5, tvo.getBs_tuhon_ring1());
			pstmt.setString(6, tvo.getBs_tuhon_ring2());
			pstmt.setString(7, tvo.getBs_tujang_earring1());
			pstmt.setString(8, tvo.getBs_tujang_earring2());
			pstmt.setString(9, tvo.getBs_tuji_earring1());
			pstmt.setString(10, tvo.getBs_tuji_earring2());
			pstmt.setString(11, tvo.getBs_tuhon_earring1());
			pstmt.setString(12, tvo.getBs_tuhon_earring2());
			pstmt.setString(13, tvo.getBs_tujang_ring3());
			pstmt.setString(14, tvo.getBs_tujang_ring4());
			pstmt.setString(15, tvo.getBs_tuji_ring3());
			pstmt.setString(16, tvo.getBs_tuji_ring4());
			pstmt.setString(17, tvo.getBs_tuhon_ring3());
			pstmt.setString(18, tvo.getBs_tuhon_ring4());
			pstmt.setString(19, tvo.getBs_tujang_earring3());
			pstmt.setString(20, tvo.getBs_tujang_earring4());
			pstmt.setString(21, tvo.getBs_tuji_earring3());
			pstmt.setString(22, tvo.getBs_tuji_earring4());
			pstmt.setString(23, tvo.getBs_tuhon_earring3());
			pstmt.setString(24, tvo.getBs_tuhon_earring4());
			pstmt.setString(25, tvo.getHukrin());
			pstmt.setString(26, tvo.getGinki());
			pstmt.setString(27, tvo.getGyukgol());
			pstmt.setString(28, tvo.getBs_gang());
			
			//마천루 아이템 가격 등록
			String bs_price_sql = "INSERT INTO black (bs_tujang_ring1_price, bs_tujang_ring2_price, bs_tuji_ring1_price, bs_tuji_ring2_price, bs_tuhon_ring1_price, bs_tuhon_ring2_price,"
					+ "bs_tujang_earring1_price, bs_tujang_earring2_price, bs_tuji_earring1_price, bs_tuji_earring2_price, bs_tuhon_earring1_price, bs_tuhon_earring2_price,"
					+ "bs_tujang_ring3_price, bs_tujang_ring4_price, bs_tuji_ring3_price, bs_tuji_ring4_price, bs_tuhon_ring3_price, bs_tuhon_ring4_price, bs_tujang_earring3_price, bs_tujang_earring4_price,"
					+ "bs_tuji_earring3_price, bs_tuji_earring4_price, bs_tuhon_earring3_price, bs_tuhon_earring4_price, hukrin_price, ginki_price, gyukgol_price, bs_gang_price)"
					+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
			pstmt = conn.prepareStatement(bs_price_sql);
			pstmt.setString(1, tvo.getBs_tujang_ring1_price());
			pstmt.setString(2, tvo.getBs_tujang_ring2_price());
			pstmt.setString(3, tvo.getBs_tuji_ring1_price());
			pstmt.setString(4, tvo.getBs_tuji_ring2_price());
			pstmt.setString(5, tvo.getBs_tuhon_ring1_price());
			pstmt.setString(6, tvo.getBs_tuhon_ring2_price());
			pstmt.setString(7, tvo.getBs_tujang_earring1_price());
			pstmt.setString(8, tvo.getBs_tujang_earring2_price());
			pstmt.setString(9, tvo.getBs_tuji_earring1_price());
			pstmt.setString(10, tvo.getBs_tuji_earring2_price());
			pstmt.setString(11, tvo.getBs_tuhon_earring1_price());
			pstmt.setString(12, tvo.getBs_tuhon_earring2_price());
			pstmt.setString(13, tvo.getBs_tujang_ring3_price());
			pstmt.setString(14,  tvo.getBs_tujang_ring4_price());
			pstmt.setString(15, tvo.getBs_tuji_ring3_price());
			pstmt.setString(16, tvo.getBs_tuji_ring4_price());
			pstmt.setString(17, tvo.getBs_tuhon_ring3_price());
			pstmt.setString(18, tvo.getBs_tuhon_ring4_price());
			pstmt.setString(19, tvo.getBs_tujang_earring3_price());
			pstmt.setString(20, tvo.getBs_tujang_earring4_price());
			pstmt.setString(21, tvo.getBs_tuji_earring3_price());
			pstmt.setString(22, tvo.getBs_tuji_earring4_price());
			pstmt.setString(23, tvo.getBs_tuhon_earring3_price());
			pstmt.setString(24, tvo.getBs_tuhon_earring4_price());
			pstmt.setString(25, tvo.getHukrin_price());
			pstmt.setString(26, tvo.getGinki_price());
			pstmt.setString(27, tvo.getGyukgol_price());
			pstmt.setString(28, tvo.getBs_gang_price());
			
			//소용돌이 사원 아이템 등록
			String vt_sql = "INSERT INTO vortex (vt_gon_tujang, vt_sun_tujang, vt_gon_tuji, vt_sun_tuji, vt_gon_tuhon, vt_sun_tuhon,"
					+ "vt_tujang1, vt_tujang2, vt_tuji1, vt_tuji2, vt_tuhon1, vt_tuhon2, vt_gon_tujang2, vt_sun_tujang2, vt_gon_tuji2, vt_sun_tuji2,"
					+ "vt_gon_tuhon2, vt_sun_tuhon2, vt_tujang3, vt_tujang4, vt_tuji3, vt_tuji4, vt_tuhon3, vt_tuhon4, singongsuk, hukcham,"
					+ "amgak, muksi, vt_gang) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(vt_sql);
			pstmt.setString(1, tvo.getVt_gon_tujang());
			pstmt.setString(2, tvo.getVt_sun_tujang());
			pstmt.setString(3, tvo.getVt_gon_tuji());
			pstmt.setString(4, tvo.getVt_sun_tuji());
			pstmt.setString(5, tvo.getVt_gon_tuhon());
			pstmt.setString(6, tvo.getVt_sun_tuhon());
			pstmt.setString(7, tvo.getVt_tujang1());
			pstmt.setString(8, tvo.getVt_tujang2());
			pstmt.setString(9, tvo.getVt_tuji1());
			pstmt.setString(10, tvo.getVt_tuji2());
			pstmt.setString(11, tvo.getVt_tuhon1());
			pstmt.setString(12, tvo.getVt_tuhon2());
			pstmt.setString(13, tvo.getVt_gon_tujang2());
			pstmt.setString(14,  tvo.getVt_sun_tujang2());
			pstmt.setString(15, tvo.getVt_gon_tuji2());
			pstmt.setString(16, tvo.getVt_sun_tuji2());
			pstmt.setString(17, tvo.getVt_gon_tuhon2());
			pstmt.setString(18, tvo.getVt_sun_tuhon2());
			pstmt.setString(19, tvo.getVt_tujang3());
			pstmt.setString(20, tvo.getVt_tujang4());
			pstmt.setString(21, tvo.getVt_tuji3());
			pstmt.setString(22, tvo.getVt_tuji4());
			pstmt.setString(23, tvo.getVt_tuhon3());
			pstmt.setString(24, tvo.getVt_tuhon4());
			pstmt.setString(25, tvo.getSingongsuk());
			pstmt.setString(26, tvo.getHukcham());
			pstmt.setString(27, tvo.getAmgak());
			pstmt.setString(28, tvo.getMuksi());
			pstmt.setString(29, tvo.getVt_gang());
			
			//소용돌이 사원 아이템 가격 등록
			String vt_price_sql = "INSERT INTO vortex (vt_gon_tujang, vt_sun_tujang, vt_gon_tuji, vt_sun_tuji, vt_gon_tuhon, vt_sun_tuhon,"
					+ "vt_tujang1_price, vt_tujang2_price, vt_tuji1_price, vt_tuji2_price, vt_tuhon1_price, vt_tuhon2_price, vt_gon_tujang2_price, vt_sun_tujang2_price, vt_gon_tuji2_price, vt_sun_tuji2_price,"
					+ "vt_gon_tuhon2_price, vt_sun_tuhon2_price, vt_tujang3_price, vt_tujang4_price, vt_tuji3_price, vt_tuji4_price, vt_tuhon3_price, vt_tuhon4_price, singongsuk_price, hukcham_price,"
					+ "amgak_price, muksi_price, vt_gang_price) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(vt_price_sql);
			pstmt.setString(1, tvo.getVt_gon_tujang());
			pstmt.setString(2, tvo.getVt_sun_tujang());
			pstmt.setString(3, tvo.getVt_gon_tuji());
			pstmt.setString(4, tvo.getVt_sun_tuji());
			pstmt.setString(5, tvo.getVt_gon_tuhon());
			pstmt.setString(6, tvo.getVt_sun_tuhon());
			pstmt.setString(7, tvo.getVt_tujang1_price());
			pstmt.setString(8, tvo.getVt_tujang2_price());
			pstmt.setString(9, tvo.getVt_tuji1_price());
			pstmt.setString(10, tvo.getVt_tuji2_price());
			pstmt.setString(11, tvo.getVt_tuhon1_price());
			pstmt.setString(12, tvo.getVt_tuhon2_price());
			pstmt.setString(13, tvo.getVt_gon_tujang2_price());
			pstmt.setString(14,  tvo.getVt_sun_tujang2_price());
			pstmt.setString(15, tvo.getVt_gon_tuji2_price());
			pstmt.setString(16, tvo.getVt_sun_tuji2_price());
			pstmt.setString(17, tvo.getVt_gon_tuhon2_price());
			pstmt.setString(18, tvo.getVt_sun_tuhon2_price());
			pstmt.setString(19, tvo.getVt_tujang3_price());
			pstmt.setString(20, tvo.getVt_tujang4_price());
			pstmt.setString(21, tvo.getVt_tuji3_price());
			pstmt.setString(22, tvo.getVt_tuji4_price());
			pstmt.setString(23, tvo.getVt_tuhon3_price());
			pstmt.setString(24, tvo.getVt_tuhon4_price());
			pstmt.setString(25, tvo.getSingongsuk_price());
			pstmt.setString(26, tvo.getHukcham_price());
			pstmt.setString(27, tvo.getAmgak_price());
			pstmt.setString(28, tvo.getMuksi_price());
			pstmt.setString(29, tvo.getVt_gang_price());
			
			//태천왕릉 아이템 등록
			String tw_sql = "INSERT INTO twilight (tw_tujang_ring1, tw_tujang_ring2, tw_tuji_ring1, tw_tuji_ring2, tw_tuhon_ring1, tw_tuhon_ring2, tw_tujang_earring1,tw_tujang_earring2,"
					+ "tw_tuji_earring1, tw_tuji_earring2, tw_tuhon_earring1, tw_tuhon_earring2, tw_tujang_ring3, tw_tujang_ring4, tw_tuji_ring3, tw_tuji_ring4, tw_tuhon_ring3, tw_tuhon_ring4,"
					+ "tw_tujang_earring3, tw_tujang_earring4, tw_tuji_earring3, tw_tuji_earring4, tw_tuhon_earring3, tw_tuhon_earring4, siik, gwangbae, nukgol, tw_gang)"
					+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(tw_sql);
			pstmt.setString(1, tvo.getTw_tujang_ring1());
			pstmt.setString(2, tvo.getTw_tujang_ring2());
			pstmt.setString(3, tvo.getTw_tuji_ring1());
			pstmt.setString(4, tvo.getTw_tuji_ring2());
			pstmt.setString(5, tvo.getTw_tuhon_ring1());
			pstmt.setString(6, tvo.getTw_tuhon_ring2());
			pstmt.setString(7, tvo.getTw_tujang_earring1());
			pstmt.setString(8, tvo.getTw_tujang_earring2());
			pstmt.setString(9, tvo.getTw_tuji_earring1());
			pstmt.setString(10, tvo.getTw_tuji_earring2());
			pstmt.setString(11, tvo.getTw_tuhon_earring1());
			pstmt.setString(12, tvo.getTw_tuhon_earring2());
			pstmt.setString(13, tvo.getTw_tujang_ring3());
			pstmt.setString(14,  tvo.getTw_tujang_ring4());
			pstmt.setString(15, tvo.getTw_tuji_ring3());
			pstmt.setString(16, tvo.getTw_tuji_ring4());
			pstmt.setString(17, tvo.getTw_tuhon_ring3());
			pstmt.setString(18, tvo.getTw_tuhon_ring4());
			pstmt.setString(19, tvo.getTw_tujang_earring3());
			pstmt.setString(20, tvo.getTw_tujang_earring4());
			pstmt.setString(21, tvo.getTw_tuji_earring3());
			pstmt.setString(22, tvo.getTw_tuji_earring4());
			pstmt.setString(23, tvo.getTw_tuhon_earring3());
			pstmt.setString(24, tvo.getTw_tuhon_earring4());
			pstmt.setString(25, tvo.getSiik());
			pstmt.setString(26, tvo.getGwangbae());
			pstmt.setString(27, tvo.getNukgol());
			pstmt.setString(28, tvo.getTw_gang());

			
			//태천왕릉 아이템 가격 등록
			String tw_price_sql = "INSERT INTO twilight (tw_tujang_ring1_price, tw_tujang_ring2_price, tw_tuji_ring1_price, tw_tuji_ring2_price, tw_tuhon_ring1_price, tw_tuhon_ring2_price, tw_tujang_earring1price,tw_tujang_earring2_price,"
					+ "tw_tuji_earring1_price, tw_tuji_earring2_price, tw_tuhon_earring1_price, tw_tuhon_earring2_price, tw_tujang_ring3_price, tw_tujang_ring4_price, tw_tuji_ring3_price, tw_tuji_ring4_price, tw_tuhon_ring3_price, tw_tuhon_ring4_price,"
					+ "tw_tujang_earring3_price, tw_tujang_earring4_price, tw_tuji_earring3_price, tw_tuji_earring4_price, tw_tuhon_earring3_price, tw_tuhon_earring4_price, siik_price, gwangbae_price, nukgol_price, tw_gang_price)"
					+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(tw_price_sql);
			pstmt.setString(1, tvo.getTw_tujang_ring1_price());
			pstmt.setString(2, tvo.getTw_tujang_ring2_price());
			pstmt.setString(3, tvo.getTw_tuji_ring1_price());
			pstmt.setString(4, tvo.getTw_tuji_ring2_price());
			pstmt.setString(5, tvo.getTw_tuhon_ring1_price());
			pstmt.setString(6, tvo.getTw_tuhon_ring2_price());
			pstmt.setString(7, tvo.getTw_tujang_earring1_price());
			pstmt.setString(8, tvo.getTw_tujang_earring2_price());
			pstmt.setString(9, tvo.getTw_tuji_earring1_price());
			pstmt.setString(10, tvo.getTw_tuji_earring2_price());
			pstmt.setString(11, tvo.getTw_tuhon_earring1_price());
			pstmt.setString(12, tvo.getTw_tuhon_earring2_price());
			pstmt.setString(13, tvo.getTw_tujang_ring3_price());
			pstmt.setString(14,  tvo.getTw_tujang_ring4_price());
			pstmt.setString(15, tvo.getTw_tuji_ring3_price());
			pstmt.setString(16, tvo.getTw_tuji_ring4_price());
			pstmt.setString(17, tvo.getTw_tuhon_ring3_price());
			pstmt.setString(18, tvo.getTw_tuhon_ring4_price());
			pstmt.setString(19, tvo.getTw_tujang_earring3_price());
			pstmt.setString(20, tvo.getTw_tujang_earring4_price());
			pstmt.setString(21, tvo.getTw_tuji_earring3_price());
			pstmt.setString(22, tvo.getTw_tuji_earring4_price());
			pstmt.setString(23, tvo.getTw_tuhon_earring3_price());
			pstmt.setString(24, tvo.getTw_tuhon_earring4_price());
			pstmt.setString(25, tvo.getSiik_price());
			pstmt.setString(26, tvo.getGwangbae_price());
			pstmt.setString(27, tvo.getNukgol_price());
			pstmt.setString(28, tvo.getTw_gang_price());
			
			
					//int r = pstmt.executeUpdate();
					//System.out.println(r + " 건 등록 완료");

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
