package servlet;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

@WebServlet("/keyboardAA")
public class KeyboardA extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public KeyboardA() {
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


		//http://urladdress/BNS_reserv = URL
		//keyboard = 서블릿 어노테이션
		//http://urladdress/BNS_reserv/keyboard
		
		//사용자가 request 요청 GET방식!!
		
		//서버는 response - json데이터를!!
		JSONObject jsonText = new JSONObject();
		jsonText.put("type", "text");
		PrintWriter out = res.getWriter();
		out.println(jsonText);
	}

}


