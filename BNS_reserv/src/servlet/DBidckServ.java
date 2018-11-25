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

		response.setContentType("application/json; charset=UTF-8");
		request.setCharacterEncoding("utf-8");

		JSONObject obj = new JSONObject();
		String id = request.getParameter("id");
		
		 KakaoDTO kvo = new KakaoDTO();
		KakaoDAO kdao = new KakaoDAO();	

		 
		 boolean DBduplicate = kdao.search_id2(id);
		 response.setContentType("application/json; charset=UTF-8");
		 
		if(DBduplicate == true){	 			
			 String bns_id = kdao.selectOne(id);
		 		obj.put("result", bns_id); 
	    		response.getWriter().print(obj);
		 } else if(DBduplicate == false) {
			// 고의 error 발생	    
		 }

 		 response.getWriter().close();
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
