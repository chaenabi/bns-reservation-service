package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.json.simple.JSONObject;

import dao.ItemDAO;
import dao.KakaoDAO;
import vo.ItemDTO;
import vo.KakaoDTO;
import vo.TeamDTO;


@WebServlet("/ViewServ")
public class ViewServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		response.setContentType("application/json; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		JSONObject obj = new JSONObject();
		
		KakaoDTO kvo = new KakaoDTO();
		KakaoDAO kdao = new KakaoDAO();	
		
		ItemDTO ivo = new ItemDTO();
		ItemDAO idao = new ItemDAO();
		
		try {
			BeanUtils.copyProperties(ivo, request.getParameterMap());
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		
		String action = request.getParameter("action");
		String gyungguk = request.getParameter("gyungguk");
		String jeolse = request.getParameter("jeolse");
		String gumgang = request.getParameter("gumgang");
		String myungbul = request.getParameter("myungbul");
		String singum = request.getParameter("singum");
		String ilhwak = request.getParameter("ilhwak");
		String isim = request.getParameter("isim");
		String hwaryung = request.getParameter("hwaryung");
		
		System.out.println("gyungguk : " +gyungguk);
		System.out.println("jeolse : "+jeolse);
		
		ArrayList<String> server = new ArrayList<String>();

		server.add(gyungguk);
		server.add(jeolse);
		server.add(gumgang);
		server.add(myungbul);
		server.add(singum);
		server.add(ilhwak);
		server.add(isim);
		server.add(hwaryung);

		if(action.equals("dynamicView")) {
			
			for(int i = 0; i < server.size(); i++) {
				ArrayList<TeamDTO> view_godate = idao.viewBS_godate(server);
				obj.put("result", view_godate);
			}
			
				

			
		} else {
		out.print("오류가 발생했습니다. 관리자에게 문의해주세요.");			
		}
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
