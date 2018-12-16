package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.ItemDAO;

@WebServlet("/ItemServ")
public class ItemServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		//DO, DAO 객체 생성
		//ItemDTO ivo = new ItemDTO();
		//ItemDAO idao = new ItemDAO();
		PrintWriter out = response.getWriter();
		String action = request.getParameter("action");
		String item_type = request.getParameter("item_type");
		String boss_level = request.getParameter("boss_level");
		System.out.println("item_type : "+ item_type);
		System.out.println("boss_level : " + boss_level);
		
		if (action.equals("showitemlist")) {
		List<HashMap<String,Object>> lis = new ArrayList<>();
		lis = ItemDAO.getInstance().showItems(item_type, boss_level);
		String sq ="{\"item_name\":[";
		int cnt=0;
		for(HashMap<String,Object> n :lis) {
			if(cnt==0) {
				sq+="\""+n.get("item_name")+"\"";
				cnt++;
			}
			else {
				sq+=",\""+n.get("item_name")+"\"";
			}
		}
		sq+="]}";
		System.out.println(sq);
		out.print(sq);
		
		}
		
		


		out.flush();
		
		
		
		
		
		
	}


	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
