package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import dao.ItemDAO;
import vo.ItemDTO;
import vo.TeamDTO;


@WebServlet("/ApplyReservServ")
public class ApplyReservServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		// 내장객체 application, session, out
		//ServletContext application = this.getServletContext();
		//HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		// 파라미터 인코딩
		request.setCharacterEncoding("utf-8");
	
		// DO, DAO 객체 생성
		TeamDTO tvo = new TeamDTO();
		ItemDTO ivo = new ItemDTO();
		//TeamDAO tdao = new TeamDAO();
		//KakaoDAO kdao = new KakaoDAO();
		ItemDAO idao = new ItemDAO();
		
		try {
			BeanUtils.copyProperties(tvo, request.getParameterMap());
			BeanUtils.copyProperties(ivo, request.getParameterMap());
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		
		String action = request.getParameter("action");
		
		if (action == null) {

			out.print("어떤 form의 action도 넘겨받지 못했습니다.");

		} else if (action.equals("item_reserv")) {
			
			String bns_id = request.getParameter("bns_id");
			idao.bs_item_update(bns_id);
			
			request.getRequestDispatcher("/resource/jsp/menu.jsp").forward(request, response);
			
		} else {
			out.print("잘못된 action입니다. 해당 jsp파일의 form action 값을 확인해주세요.");
		}
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
