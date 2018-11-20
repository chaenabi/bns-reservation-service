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
import vo.KakaoDTO;




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
		
		
	
		String bns_id = request.getParameter("bns_id");
		System.out.println("bns_id is : " + bns_id);

		kvo.setBns_id(bns_id);

		boolean duplicate = kdao.search_id(bns_id);
		System.out.println("is there id in DB? : "+ duplicate);
		//String fail = "{\"result\":\"true\"}";
		//String success = "{\"result\":\"false\"}";
		
		JSONObject obj = new JSONObject();
		response.setContentType("application/json; charset=UTF-8");
		 if(duplicate == true){
		 // 고의 error 발생
	    			
		 } else if(duplicate == false) {
	
			// out.print("success");
			 	obj.put("result","false"); 
	    		response.getWriter().print(obj);
	    		System.out.println("success message: " + obj);
	    }
 		 response.getWriter().close();
		 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
