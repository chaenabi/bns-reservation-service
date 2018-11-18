package servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

/**
 * Servlet implementation class Keyboard
 */

@WebServlet("/message")
public class Message extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("GET요청");
		doProcess(req, res);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		System.out.println("POST요청");
		doProcess(req, res);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		res.setContentType("text/html;charset=UTF-8");




		PrintWriter out = res.getWriter();
		BufferedReader in = req.getReader(); // 통신으로 데이터가 넘어옴
		StringBuffer sb = new StringBuffer();
		String line = null;
		int i = 0;
		while ((line = in.readLine()) != null) {
			sb.append(line);
			i++;
		}
		JSONObject jsonText = new JSONObject();
		ArrayList<String> buttons = new ArrayList<>();
		jsonText.put("type", "buttons");
		buttons.add("테스트");
		buttons.add("반갑습니다.");
		buttons.add("뭐하는 거에요?");
		buttons.add("어떻게 하면 되나요?");
		buttons.add("여기 다신 안와");
		buttons.add("뭐가 이래??? 친절하게 해줘요");
		buttons.add("모르겠다.");
		buttons.add("만든사람");
		buttons.add("날짜도 알려줘요?");
		buttons.add("언제 만든거에요?");

		jsonText.put("buttons", buttons);
		System.out.println("i :" + i + "번");
		if (i > 0) {
			String kakaoString = sb.toString();

			try {
				JSONParser p = new JSONParser();
				JSONObject json = (JSONObject) p.parse(kakaoString);
				String msg = json.get("content").toString();

				JSONObject return_json = new JSONObject();
				JSONObject text_json = new JSONObject();
				if (msg.equals("테스트")) {
					text_json.put("text", "확인되었습니다!!!");
					return_json.put("message", text_json);
				} else if (msg.equals("반갑습니다.")) {
					text_json.put("text", "안녕하세요.");
					return_json.put("message", text_json);
				} else if (msg.equals("뭐하는 거에요?")) {
					text_json.put("text", "블소 버스 예약 알림서비스입니다.");
					return_json.put("message", text_json);
				} else if (msg.equals("어떻게 하면 되나요?")) {
					text_json.put("text", "예약된 사람이 있는지 버튼을 눌러보세요.");
					JSONObject cupon = new JSONObject();
					cupon.put("label", "링크");
					cupon.put("url", "https://center-pf.kakao.com/_rtxktC/coupons/60949");
					text_json.put("message_button", cupon);			
					return_json.put("message", text_json);
				} else if (msg.equals("여기 다신 안와")) {
					text_json.put("text", "그래, 잘가 다시오지마");
					return_json.put("message", text_json);
				} else if (msg.equals("뭐가 이래??? 친절하게 해줘요")) {
					text_json.put("text", "싫어요, 그렇게 안할래요");
					return_json.put("message", text_json);
				} else if (msg.equals("모르겠다.")) {
					text_json.put("text", "나도 모르겠다.");
					return_json.put("message", text_json);
				} else if (msg.equals("만든사람")) {
					text_json.put("text", "안가르쳐줄래");
					return_json.put("message", text_json);
				} else if (msg.equals("날짜도 알려줘요?")) {
					text_json.put("text", "아니 안알려줘");
					return_json.put("message", text_json);
				} else if (msg.equals("언제 만든거에요?")) {
					text_json.put("text", "18년 11월에 만들었어");
					return_json.put("message", text_json);
				}
				return_json.put("keyboard", jsonText);
				out.println(return_json);
			} catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println(kakaoString);
		}
	}

}
