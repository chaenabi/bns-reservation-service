package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import dao.KakaoDAO;
import dao.TeamDAO;
import vo.KakaoDTO;
import vo.TeamDTO;


@WebServlet("/BNSidckServ")
public class BNSidckServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
 		//response.addHeader("Access-Control-Allow-Origin", "*");  
 		//response.setHeader("Access-Control-Allow-Headers", "origin, x-requested-with, content-type, accept");
		// 내장객체 application, session, out
		//ServletContext application = this.getServletContext();
		//HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		// 파라미터 인코딩
		request.setCharacterEncoding("utf-8");
		KakaoDTO kvo = new KakaoDTO();
		KakaoDAO kdao = new KakaoDAO();	
		TeamDTO tvo = new TeamDTO();
		TeamDAO tdao = new TeamDAO();

		// main.js 띄워진 BNS 아이디 등록 창에서 아이디 중복체크를 하는 처리과정이다.
		String bns_id = request.getParameter("bns_id");
		kvo.setBns_id(bns_id);

		//main.js 블소ID 중복체크
		boolean bnsid_duplicate = kdao.search_id(bns_id);
		JSONObject cannot = new JSONObject();
		response.setContentType("application/json; charset=UTF-8");
		if(bnsid_duplicate == true){
		 	cannot.put("result","true"); 
    		response.getWriter().print(cannot);
			
		 
		} else if(bnsid_duplicate == false) {
			JSONObject okay = new JSONObject();
			okay.put("result","false"); 
	    		response.getWriter().print(okay);
	    }
		
		 response.getWriter().close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
