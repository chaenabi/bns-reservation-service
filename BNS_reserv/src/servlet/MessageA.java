package servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

@WebServlet("/messageAA")
public class MessageA extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public MessageA() {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("GET요청");
		doProcess(req,res);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("POST요청");
		doProcess(req,res);
	}
	

	protected void doProcess(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		res.setContentType("text/html; charset=UTF-8");


		
		BufferedReader in = req.getReader();
		StringBuffer sb = new StringBuffer();
		String line = null;
		int i= 0;
		while((line = in.readLine()) != null) {
			sb.append(line);
			i++;
		}
		System.out.println("i : "+ i);
		String kakaoString = sb.toString();
		System.out.println(kakaoString);
		
		try {
			JSONParser p = new JSONParser();
			JSONObject json = (JSONObject)p.parse(kakaoString);
			String msg = json.get("content").toString();
			
			JSONObject resJson = new JSONObject();
			JSONObject textJson = new JSONObject();
			if(msg.equals("이름")) {
				textJson.put("text", "홍길동");
				resJson.put("message", textJson);
			}else if(msg.equals("성별")) {
				textJson.put("text", "남자");
				resJson.put("message", textJson);
			}else {
				textJson.put("text", "메시지가 비어있습니다.");
				resJson.put("message", textJson);
			}
			PrintWriter out = res.getWriter();
			out.println(resJson);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

