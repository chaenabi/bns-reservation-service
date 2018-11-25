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




@WebServlet("/idcheckServ")
public class IdcheckServ extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("application/json; charset=UTF-8");
		request.setCharacterEncoding("utf-8");

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
		String bns_id = request.getParameter("bns_id");
		kvo.setBns_id(bns_id);

		//main.js 블소ID 중복체크
		boolean bnsid_duplicate = kdao.search_id(bns_id);
		JSONObject obj = new JSONObject();
		response.setContentType("application/json; charset=UTF-8");
		if(bnsid_duplicate == true){
		 // 고의 error 발생
		 
		} else if(bnsid_duplicate == false) {
			 	obj.put("result","false"); 
	    		response.getWriter().print(obj);
	    } 
		
		//sale_register.jsp 팀ID 중복체크
		String team_name = request.getParameter("team_name");
		tvo.setTeam_name(team_name);
		boolean tn_duplicate = tdao.search_tn(team_name);
		System.out.println("tn_duplicate : " + tn_duplicate);
		response.setContentType("application/json; charset=UTF-8");
		if(tn_duplicate){
	
		}
		if(tn_duplicate == false) {
		 	obj.put("result","false"); 
		 	response.getWriter().print(obj);
		}
	}
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
