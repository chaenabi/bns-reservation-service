package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import dao.ItemDAO;
import dao.KakaoDAO;
import dao.TeamDAO;
import vo.ItemDTO;
import vo.TeamDTO;



@WebServlet("/TeamServ")
public class TeamServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 응답페이지로 인코딩
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
				TeamDAO tdao = new TeamDAO();
				KakaoDAO kdao = new KakaoDAO();
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
				//System.out.println("test");
				if (action == null) {

					out.print("어떤 form의 action도 넘겨받지 못했습니다.");

				} else if (action.equals("team_reg")) {
					// 팀 등록
					/*String nickname = request.getParameter("nickname");
					String id = request.getParameter("id");
					String email = request.getParameter("email");
					session.setAttribute("nickname", nickname);
					session.setAttribute("id", id);
					session.setAttribute("email", email);*/
					String id = request.getParameter("id");
					String bns_id = kdao.selectOne(id);
					tvo.setBns_id(bns_id);
					tdao.addTeam(tvo);
					
					ivo.setId(id);
					ivo.setBns_id(bns_id);
					
					String raid_type = request.getParameter("raid_type");
					if(raid_type.equals("검은 마천루")) {
						idao.bs_addItems(ivo);
					} else if (raid_type.equals("소용돌이 사원")) {
						idao.vt_addItems(ivo);
					} else if (raid_type.equals("태천왕릉")) {
						idao.tw_addItems(ivo);
					} else if (raid_type.equals("적몽의 비원")) {
						idao.rd_addItems(ivo);
					}


					// 목록으로 페이지 이동
					request.getRequestDispatcher("/resource/jsp/menu.jsp").forward(request, response);

				}else if(action.equals("getTeams")) {
					String go_time = request.getParameter("go_time");
					List<HashMap<String,Object>> lis = new ArrayList<>();
					lis = TeamDAO.getInstance().getTeams(go_time);
					String sq ="{\"team_name\":[";
					int cnt=0;
					for(HashMap<String,Object> n :lis) {
						if(cnt==0) {
							sq+="\""+n.get("team_name")+"\"";
							cnt++;
						}
						else {
							sq+=",\""+n.get("team_name")+"\"";
						}
					}
					sq+="]}";
					System.out.println(sq);
					out.print(sq);

				}
				
				else if(action.equals("getDate")) {
					String server = request.getParameter("server");
					List<HashMap<String,Object>> lis = new ArrayList<>();
					lis = TeamDAO.getInstance().getDate(server);
					String sq ="{\"go_date\":[";
					int cnt=0;
					for(HashMap<String,Object> n :lis) {
						if(cnt==0) {
							sq+="\""+n.get("go_date")+"\"";
							cnt++;
						}
						else {
							sq+=",\""+n.get("go_date")+"\"";
						}
					}
					sq+="]}";
					System.out.println(sq);
					out.print(sq);
					
				}

				
				else if(action.equals("purchase_history")) {
				
					
					
				}			
				else if (action.equals("list")) {
					// 팀 데이터 전체 조회
					//ArrayList<TeamDTO> datas = tdao.getTeamList();
					//request.setAttribute("datas", datas);

					// 뷰 페이지로 포워드
					// request.getRequestDispatcher("--갈곳이 아직 없는.jsp--").forward(request, response);

				} else {
					out.print("잘못된 action입니다. 해당 jsp파일의 form action 값을 확인해주세요.");
				}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
