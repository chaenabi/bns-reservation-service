package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 
public class JDBC {
	
	protected Connection conn;
	protected Statement stmt;
	protected ResultSet rs;
	protected PreparedStatement pstmt;
	
	public void connect() {
       
 
        try {
            Class.forName("com.mysql.jdbc.Driver"); 
            //String url =  "jdbc:mysql://localhost:3306/bns_reserv";
            String url =  "jdbc:mysql://db.bns-reserv.com/dbtom8672";
            //String db_id = "hr";
            //String db_pw ="hr";
            
            String db_id = "tom8672";
            String db_pw = "npc2023per4@e";
            conn = DriverManager.getConnection(url, db_id, db_pw);
            
        } catch(Exception e) {
            e.printStackTrace();
        } 
        
	}
        public void disconnect() {
            try {
                if(rs != null) {
                    rs.close(); // 선택 사항
                }
                
                if(pstmt != null) {
                    pstmt.close(); // 선택사항이지만 호출 추천
                }
            
                if(conn != null) {
                    conn.close(); // 필수 사항
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    
}