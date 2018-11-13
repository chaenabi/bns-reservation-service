package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import dao.KakaoDAO;
import vo.KakaoDTO;

@WebServlet("/servlet/KakaoServ")
public class KakaoServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 응답페이지로 인코딩
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("utf-8");

		// 내장객체 application, session, out
		//ServletContext application = this.getServletContext();
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		// 파라미터 인코딩
		request.setCharacterEncoding("utf-8");

		// DO, DAO 객체 생성
		KakaoDTO kvo = new KakaoDTO();
		KakaoDAO kdao = new KakaoDAO();

		try {
			BeanUtils.copyProperties(kvo, request.getParameterMap());
			System.out.println(kvo);
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}

		String action = request.getParameter("action");

		if (action == null) {

			out.print("어떤 form의 action도 넘겨받지 못했습니다.");

		} else if (action.equals("kakao-login")) {
			// 로그인 시 개인정보 DB 등록 처리
			kdao.insertID(kvo);
			
			//님 안녕하세요~ 를 위한 코드.
			String nickname = request.getParameter("nickname");
			session.setAttribute("nickname", nickname);
			
			// 목록으로 페이지 이동
			request.getRequestDispatcher("/resource/jsp/menu.jsp").forward(request, response);

		} else if (action.equals("list")) {
			// 가입된 데이터 전체 조회
			ArrayList<KakaoDTO> datas = kdao.getIdList();
			request.setAttribute("datas", datas);

			// 뷰 페이지로 포워드
			// request.getRequestDispatcher("--갈곳이 아직 없는.jsp--").forward(request, response);

		} else {
			out.print("잘못된 action입니다. 해당 jsp파일의 form action 값을 확인해주세요.");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
