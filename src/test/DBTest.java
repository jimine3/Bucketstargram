package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

import co.bucketstargram.dto.ReplyDto;

public class DBTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ReplyDao dao = new ReplyDao();
		HashMap<String, ArrayList<String>> replyList = dao.select("ljm089");		
		
        String s="\n\t\t Tables: ";
        Iterator<Entry<String, ArrayList<String>>> iter = replyList.entrySet().iterator();

        s= s + " { ";
        while (iter.hasNext()) {
            Entry<String, ArrayList<String>> entry = iter.next();

            List<String> l = new ArrayList<String>();

            l = entry.getValue();
            String temp="";
            for (int i=1; i<=l.size(); i++){

                temp= temp +" "+ Integer.toString(i)+"."+l.get(i-1);
            }               
            s = s + temp;

            if (iter.hasNext()) {
                s=s+",";
            }
            else s=s+" }";
        }
        System.out.println(s);
	}

}

class ReplyDao{

	Connection conn = null; // DB연결된 상태(세션)을 담은 객체
    PreparedStatement psmt = null;  // SQL 문을 나타내는 객체
    ResultSet rs = null;  // 쿼리문을 날린것에 대한 반환값을 담을 객체
    
	public ReplyDao() {
		// TODO Auto-generated constructor stub
		try {
            String user = "lee"; 
            String pw = "1234";
            String url = "jdbc:oracle:thin:@localhost:1521:xe";
            
            Class.forName("oracle.jdbc.driver.OracleDriver");        
            conn = DriverManager.getConnection(url, user, pw);
            
        } catch (ClassNotFoundException cnfe) {
            System.out.println("DB 드라이버 로딩 실패 :"+cnfe.toString());
        } catch (SQLException sqle) {
            System.out.println("DB 접속실패 : "+sqle.toString());
        } catch (Exception e) {
            System.out.println("Unkonwn error");
            e.printStackTrace();
        }
	}
	
	private void close() {
		// TODO Auto-generated method stub
		try {
			if(rs != null) rs.close();
			if(psmt != null) psmt.close();
			if(conn != null) conn.close();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
	public HashMap<String, ArrayList<String>> select(String userid) {
		// TODO Auto-generated method stub
		HashMap<String, ArrayList<String>> replyList = new HashMap<String, ArrayList<String>>();
		ArrayList<String> reContentList = new ArrayList<String>();
		String sql = "select re_bucket_id, re_reply_contents from bucket_info_tb, bucket_reply_tb where bucket_id = re_bucket_id and bucket_member_id = '" + userid + "' order by re_bucket_id";
		/* replyList = setHashKey(userid, replyList); */
		String key = "";
		String value = "";
		int index = 1;

		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				key = rs.getString("re_bucket_id");
				System.out.println(replyList.containsKey(key));
				if(replyList.isEmpty() || replyList.containsKey(key)) {
					value = rs.getString("re_reply_contents");
					reContentList.add(value);
					replyList.put(key, reContentList);
					System.out.println(index + ". key = " + key);
					System.out.println(index + ". value = " + value);
					index = index+1;
				}else {
					replyList = new HashMap<String, ArrayList<String>>();
					reContentList.add(value);
					replyList.put(key, reContentList);
					System.out.println(index + ". key = " + key);
					System.out.println(index + ". value = " + value);
					index = index+1;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return replyList;
	}

	private HashMap<String, ArrayList<String>> setHashKey(String userid, HashMap<String, ArrayList<String>> replyList) {
		// TODO Auto-generated method stub
		ArrayList<String> reContentList = new ArrayList<String>();
		String sql = "select re_bucket_id from bucket_info_tb, bucket_reply_tb where bucket_id = re_bucket_id and bucket_member_id = '" + userid + "' group by re_bucket_id;";
		String key = "";
		try {
			replyList = new HashMap<String, ArrayList<String>>();
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				key = rs.getString("re_bucket_id");	
				replyList.put(key, reContentList);
				System.out.println("setHashKey 완성");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
		return replyList;
	}
}