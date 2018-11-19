package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

/**
 * Servlet implementation class Keyboard
 */
@WebServlet("/keyboard")
public class Keyboard extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Keyboard() {
		super();
		// TODO Auto-generated constructor stub
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
		res.setContentType("text/html;charset=UTF-8");
		
		//주소 만료시 
		//cmd
		//ngrok http 8080
		//카카오 개발자 사이트 앱 설정-일반에서 웹주소 추가
		//http://urladdress/BNS_reserv = URL
		//keyboard = 서블릿 어노테이션
		//http://urladdress/BNS_reserv/keyboard   -> keyboard서블릿 요청
		
		//사용자가 request 요청 GET방식!
		
		//서버는 response - json데이터를!!
		JSONObject jsonText = new JSONObject();
		ArrayList<String> buttons = new ArrayList<>();
		jsonText.put("type", "buttons");
		buttons.add("테스트");
		buttons.add("반갑습니다.");
		buttons.add("뭐하는 거에요?");
		buttons.add("어떻게 하면 되나요?");
		buttons.add("??????????");
		buttons.add("뭐가 이래 친절하게 해줘요");
		buttons.add("모르겠다.");
		buttons.add("만든사람");
		buttons.add("날짜도 알려줘요?");
		buttons.add("언제 만든거에요?");
		
		jsonText.put("buttons", buttons);
		PrintWriter out = res.getWriter();
		out.println(jsonText);
	}

}
