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
import vo.SaleDTO;
import vo.TeamDTO;

@WebServlet("/servlet/TeamServ")
public class TeamServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 응답페이지로 인코딩
				response.setContentType("text/html; charset=UTF-8");
				request.setCharacterEncoding("utf-8");

				// 내장객체 application, session, out
				//ServletContext application = this.getServletContext();
				/*HttpSession session = request.getSession();*/
				PrintWriter out = response.getWriter();
				// 파라미터 인코딩
				request.setCharacterEncoding("utf-8");

				// DO, DAO 객체 생성
				TeamDTO tvo = new TeamDTO();
				ItemDTO ivo = new ItemDTO();
				SaleDTO svo = new SaleDTO();
				
				TeamDAO tdao = new TeamDAO();
				KakaoDAO kdao = new KakaoDAO();
				ItemDAO idao = new ItemDAO();
				try {
					BeanUtils.copyProperties(tvo, request.getParameterMap());
					BeanUtils.copyProperties(ivo, request.getParameterMap());
					BeanUtils.copyProperties(svo, request.getParameterMap());
					
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					e.printStackTrace();
				}
				String action = request.getParameter("action");
				if (action == null) {
					out.print("어떤 form의 action도 넘겨받지 못했습니다.");
				
				} else if (action.equals("team_reg")) {
					String team_name = request.getParameter("team_name");
					System.out.println(team_name);

					String id = request.getParameter("id");
					String bns_id = kdao.selectOne(id);
					tvo.setBns_id(bns_id);
					tdao.addTeam(tvo);
					String[] sale_items = request.getParameterValues("sale_items");
					
					System.out.println(sale_items);
					
					String[] sale_price = request.getParameterValues("sale_price");
					for (int i = 0; i < sale_items.length; i++) {
					idao.add_SaleItems(svo);
					}
					tvo.setId(id);
					tvo.setBns_id(bns_id);

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
					out.flush();

				} else if(action.equals("getDate")) {
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
		

					out.print(sq);
					
				} else if(action.equals("getTime")) {
					String server = request.getParameter("server");
					String date = request.getParameter("date");
					List<HashMap<String,Object>> lis = new ArrayList<>();
					lis = TeamDAO.getInstance().getTime(server, date);
					String sq ="{\"go_time\":[";
					int cnt=0;
					for(HashMap<String,Object> n :lis) {
						if(cnt==0) {
							sq+="\""+n.get("go_time")+"\"";
							cnt++;
						}
						else {
							sq+=",\""+n.get("go_time")+"\"";
						}
					}
					sq+="]}";
					out.print(sq);
					
				} else if(action.equals("getItemList")) {
					/*String team_name = request.getParameter("team_name");
					List<HashMap<String,Object>> lis = new ArrayList<>();
					lis = TeamDAO.getInstance().getItemList(team_name);

					String bs_item1 ="{\"bs_tujang_ring1\":[";
					int cnt=0;
					for(HashMap<String,Object> n :lis) {
						if(cnt==0) {
							bs_item1+="\""+n.get("bs_tujang_ring1")+"\"";
							cnt++;
						}
						else {
							bs_item1+=",\""+n.get("bs_tujang_ring1")+"\"";
						}
					}
					bs_item1+="]";

					String bs_item1_price ="\"bs_tujang_ring1_price\":[";

					for(HashMap<String,Object> n :lis) {		
						bs_item1_price+="\""+n.get("bs_tujang_ring1_price")+"\"";
					}
					bs_item1_price+="]";
					
					String sn = "\"server\":[";
					for(HashMap<String,Object> ns :lis) {
					  sn+="\""+ns.get("server")+"\"";
					}
					sn+="]";
					
					String tn = "\"team_name\":[";
					for(HashMap<String,Object> ns :lis) {
					tn+="\""+ns.get("team_name")+"\"";
					}
					tn+="]";
					
					String tln = "\"team_leader\":[";
					for(HashMap<String,Object> ns :lis) {
					tln+="\""+ns.get("bns_id")+"\"";
					}
					tln+="]";
					
					System.out.println(sn);
					System.out.println(tn);
					System.out.println(tln);
					System.out.println(bs_item1);

					
					bs_item1+=","+bs_item1_price+",";
					bs_item1+=sn+",";
					bs_item1+=tn+",";
					bs_item1+=tln;
					bs_item1+="}";
					System.out.println(bs_item1);
					out.print(bs_item1);
					*/
					
				
				} else if(action.equals("purchase_history")) {
				
					//구현 예정 menu.jsp 에서.
					
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
