package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import dao.KakaoDAO;
import vo.KakaoDTO;


@WebServlet("/DBidckServ")
public class DBidckServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.addHeader("Access-Control-Allow-Origin", "*");  
 		response.setHeader("Access-Control-Allow-Headers", "origin, x-requested-with, content-type, accept");
		response.setContentType("application/www-form-urlencoded; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
 		JSONObject okay = new JSONObject();
		String id = request.getParameter("id");
		
		 KakaoDTO kvo = new KakaoDTO();
		KakaoDAO kdao = new KakaoDAO();	

		// DB에 아이디가 있으면 바로 서브밋, 없으면 bnsid div 를 띄우도록 설정한다.
		 boolean DBduplicate = kdao.search_id2(id);
		 response.setContentType("application/www-form-urlencoded; charset=UTF-8");
		 
		if(DBduplicate == true){	 			
			 String bns_id = kdao.selectOne(id);
			 okay.put("result", bns_id); 
	    		response.getWriter().print(okay);
	    		
		 } else if(DBduplicate == false) {
			 JSONObject cannot = new JSONObject();
			 cannot.put("result", false); 
	    	response.getWriter().print(cannot);
		 }

 		 response.getWriter().close();

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
