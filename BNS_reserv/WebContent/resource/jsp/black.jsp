<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="import"
	href="${pageContext.request.contextPath}/resource/jsp/common/header.jsp">
</head>
<script type="text/javascript">



</script>


<body>
	<!--  마천루 비디오 제어 -->
	<video autoplay loop id="background_video" muted>
		<source
			src="${pageContext.request.contextPath}/resource/assets/video/skyscraper.mp4"
			type="video/mp4">
	</video>

	<!-- 중앙 글씨 -->
	<div class="container" id="container">
		<h1>Blade and Soul</h1>
		<p>Welcome to BNS BUS reservation guide</p>
	</div>

	<!-- 사이드바 열림 애니메이션 (onload click) -->
	<input type="hidden" id="nav" onclick="openNav();" />

		<!-- 사이드바 -->
		<div class="sidenav" id="sidenav">
			<!-- 서버 -->
			<ul class="sidemenu">
				<!-- 경국지색 -->
				<li class="d1"><a href="#" class="d1" id="gyungguk" onclick="javascript:getDate('경국지색', 'gyungguk_datelist'); this.onclick=null;"><span><input type="hidden" name="gyungguk" value="경국지색"/>경국지색</span></a>
					<div class="inner" id="first_server">
						<div class="core">
							<div class="date_manage" id="gyungguk_datelist"></div>
						</div>
					</div>
				</li>
				
				<!-- 절세미인  -->
				<li class="d1"><a href="#" class="d1" id="jeolse" onclick="javascript:getDate('절세미인', 'jeolse_datelist'); this.onclick=null;"><span><input type="hidden" name="jeolse" value="절세미인"/>절세미인</span></a>
					<div class="inner" id="second_server">
						<div class="core">
							<div class="date_manage" id="jeolse_datelist"></div>
						</div>
					</div>
				</li>
				
				<!-- 금강불괴 -->
				<li class="d1"><a href="#" class="d1"  id="gumgang" onclick="javascript:getDate('금강불괴', 'gumgang_datelist'); this.onclick=null;"><span><input type="hidden" name="gumgang" value="금강불괴"/>금강불괴</span></a>
					<div class="inner" id="third_server">
						<div class="core">
							<div class="date_manage" id="gumgang_datelist"></div>
						</div>
					</div>
				</li>

				<!-- 명불허전 -->
				<li class="d1"><a href="#" class="d1"  id="myungbul" onclick="javascript:getDate('명불허전', 'myungbul_datelist'); this.onclick=null;"><span><input type="hidden" name="myungbul" value="명불허전"/>명불허전</span></a>
					<div class="inner" id="fourth_server">
						<div class="core">

							<div class="date_manage" id="myungbul_datelist"></div>
						</div>
					</div></li>

				<!-- 신검합일 -->
				<li class="d1"><a href="#" class="d1"  id="singum" onclick="javascript:getDate('신검합일', 'singum_datelist'); this.onclick=null;"><span><input type="hidden" name="singum" value="신검합일"/>신검합일</span></a>
					<div class="inner" id="fifth_server">
						<div class="core">

							<div class="date_manage" id="singum_datelist"></div>
						</div>
					</div></li>

				<!-- 일확천금 -->
				<li class="d1"><a href="#" class="d1"  id="ilhwak" onclick="javascript:getDate('일확천금', 'ilhwak_datelist'); this.onclick=null;"><span><input type="hidden" name="ilhwak" value="일확천금"/>일확천금</span></a>
					<div class="inner" id="sixth_server">
						<div class="core">

							<div class="date_manage" id="ilhwak_datelist"></div>
						</div>
					</div></li>

				<!-- 이심전심 -->
				<li class="d1"><a href="#" class="d1"  id="isim" onclick="javascript:getDate('이심전심', 'isim_datelist'); this.onclick=null;"><span><input type="hidden" name="isim" value="이심전심"/>이심전심</span></a>
					<div class="inner" id="seventh_server">
						<div class="core">

							<div class="date_manage" id="isim_datelist"></div>
						</div>
					</div></li>
				<!-- 화룡점정 -->
				<li class="d1"><a href="#" class="d1" id="hwaryung" onclick="javascript:getDate('화룡점정', 'hwaryung_datelist'); this.onclick=null;"><span><input type="hidden" name="hwaryung" value="화룡점정"/>화룡점정</span></a>
					<div class="inner" id="eighth_server">
						<div class="core">

						<div class="date_manage" id="hwaryung_datelist"></div>
						</div>
					</div></li>
			</ul>

			
			<div class="timebar" id="timebar">
				<div class="timestamp" id="timestamp">
			
				</div>
			</div>

			<div class="teamlists" id="teams_hide">
				<div class="team_name" id="team_manage">
<!-- 					<li id="ab"><a href="#" class="go_time"><span>룩덕호</span></a></li>
					<li id="cd"><a href="#" class="go_time"><span>경국왕릉2</span></a></li>
					<li id="ef"><a href="#" class="go_time"><span>경국왕릉3</span></a></li>
					<li id="gh"><a href="#" class="go_time"><span>절세4팀</span></a></li>
					<li id="ij"><a href="#" class="go_time"><span>절세5팀</span></a></li>
					<li id="kl"><a href="#" class="go_time"><span>절세6팀</span></a></li>
					<li id="mn"><a href="#" class="go_time"><span>절세7팀</span></a></li>
					<li id="op"><a href="#" class="go_time"><span>절세8팀</span></a></li> -->
				</div>
			</div>

		</div>


		<div class="order" id="order">
			<div class="menu" id="menu_hide">

				<section class="menupan">

				<div class="team_info">
					<div class="team_sn">
						<a class="text-right text-default" style="text-decoration: none !important;"> 경국지색 : </a>
						<a class="team_name" id="team_name">룩덕호</a>
					</div>
					<div class="team_tn">
						<a class="text-right text-default" style="text-decoration: none !important;"> 팀장명 : </a>
						<a class="team_name" id="team_leader">기공사초보</a>
					</div>
				</div>
					<h2 class="text-center text-success" style="margin: 0;">판매 목록</h2>
					<hr>
					<h3 class="text-center text-danger" style="font-weight: bold">1네임드
						: 천독룡</h3>
					<div class="in_menu">
						<div class="items">
							<div class="item">
								<div class="itemname">
									<a>천독귀걸이(번개)</a>
									<hr style="margin: 5px 0 8px 0;">
								</div>

								<div class="item_c">
								<!-- radio 쓰는법. 추가
									 <label class="radio">
									  <input type="radio" name="group-radio">
									  <i class="icon-radio"></i>
									</label> -->

								</div>
							</div> 
							<div class="item">
								<div class="itemname">
									<a>천독귀걸이(화염)</a>
									<hr style="margin: 5px 0 8px 0;">
								</div>
								<div class="item_c">
									<a> 어트 : </a>
									<a> 200,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독귀걸이(화염)">									
										  <i class="icon-checkbox"></i>										
										</label>
									</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독귀걸이(화염)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
							</div>
							<div class="item">
								<div class="itemname">
									<a> 천독반지(바람)</a>
									<hr style="margin: 5px 0 8px 0;">
								</div>
								<div class="item_c">
									<a> 어트 : </a>
									<a> 200,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독반지(바람)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독반지(바람)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
							</div>

							<div class="item">
								<div class="itemname">
									<a> 천독반지(암흑) </a>
									<hr style="margin: 5px 0 8px 0;">
								</div>
								<div class="item_c">
									<a> 어트 : </a>
									<a> 200,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독반지(암흑)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독반지(암흑)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
							</div>
						</div>
					</div>
					
						<h3 class="text-center text-danger" style="font-weight: bold">2네임드
							: 사안장군</h3>
						<div class="in_menu">
						<div class="items">
							<div class="item">
								<div class="itemname">
									<a>천독귀걸이(번개)</a>
								</div>
								<div class="item_c" >
									<a> 어트 : </a>
									<a> 200,000금 </a>					
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독귀걸이(번개)">									
										  <i class="icon-checkbox"></i>										
										</label>
									</span>
									<!-- radio 쓰는법.
									 <label class="radio">
									  <input type="radio" name="group-radio">
									  <i class="icon-radio"></i>
									</label> -->
								</div>
								<div class=item_c>
								<a> 노어트 : </a>
								<a> 300,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독귀걸이(번개)">									
										  <i class="icon-checkbox"></i>										
										</label>
									</span>
								</div>
							</div>
							<div class="item">
								<div class="itemname">
									<a>천독귀걸이(화염)</a>
								</div>
								<div class="item_c">
									<a> 어트 : </a>
									<a> 200,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독귀걸이(화염)">									
										  <i class="icon-checkbox"></i>										
										</label>
									</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독귀걸이(화염)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
							</div>
							<div class="item">
								<div class="itemname">
									<a> 천독반지(바람)</a>
								</div>
								<div class="item_c">
									<a> 어트 : </a>
									<a> 200,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독반지(바람)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독반지(바람)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
							</div>

							<div class="item">
								<div class="itemname">
									<a> 천독반지(암흑) </a>
								</div>
								<div class="item_c">
									<a> 어트 : </a>
									<a> 200,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독반지(암흑)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독반지(암흑)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
							</div>
						</div>
					</div>


			
						<h3 class="text-center text-danger" style="font-weight: bold">3네임드
							: 모순장군</h3>
						<div class="in_menu">
												<div class="items">
							<div class="item">
								<div class="itemname">
									<a>천독귀걸이(번개)</a>
								</div>
								<div class="item_c" >
									<a> 어트 : </a>
									<a> 200,000금 </a>					
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독귀걸이(번개)">									
										  <i class="icon-checkbox"></i>										
										</label>
									</span>
									<!-- radio 쓰는법.
									 <label class="radio">
									  <input type="radio" name="group-radio">
									  <i class="icon-radio"></i>
									</label> -->
								</div>
								<div class=item_c>
								<a> 노어트 : </a>
								<a> 300,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독귀걸이(번개)">									
										  <i class="icon-checkbox"></i>										
										</label>
									</span>
								</div>
							</div>
							<div class="item">
								<div class="itemname">
									<a>천독귀걸이(화염)</a>
								</div>
								<div class="item_c">
									<a> 어트 : </a>
									<a> 200,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독귀걸이(화염)">									
										  <i class="icon-checkbox"></i>										
										</label>
									</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독귀걸이(화염)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
							</div>
							<div class="item">
								<div class="itemname">
									<a> 천독반지(바람)</a>
								</div>
								<div class="item_c">
									<a> 어트 : </a>
									<a> 200,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독반지(바람)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독반지(바람)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
							</div>

							<div class="item">
								<div class="itemname">
									<a> 천독반지(암흑) </a>
								</div>
								<div class="item_c">
									<a> 어트 : </a>
									<a> 200,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독반지(암흑)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독반지(암흑)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
							</div>
						</div>
					</div>

					
						<h3 class="text-center text-danger" style="font-weight: bold">4네임드
							: 촉마왕</h3>

						<div class="in_menu">
						<div class="items">
							<div class="item">
								<div class="itemname">
									<a>천독귀걸이(번개)</a>
								</div>
								<div class="item_c" >
									<a> 어트 : </a>
									<a> 200,000금 </a>					
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독귀걸이(번개)">									
										  <i class="icon-checkbox"></i>										
										</label>
									</span>
									<!-- radio 쓰는법.
									 <label class="radio">
									  <input type="radio" name="group-radio">
									  <i class="icon-radio"></i>
									</label> -->
								</div>
								<div class="item_c">
								<a> 노어트 : </a>
								<a> 300,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독귀걸이(번개)">									
										  <i class="icon-checkbox"></i>										
										</label>
									</span>
								</div>
							</div>
							<div class="item">
								<div class="itemname">
									<a>천독귀걸이(화염)</a>
								</div>
								<div class="item_c">
									<a> 어트 : </a>
									<a> 200,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독귀걸이(화염)">									
										  <i class="icon-checkbox"></i>										
										</label>
									</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독귀걸이(화염)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
							</div>
							<div class="item">
								<div class="itemname">
									<a> 천독반지(바람)</a>
								</div>
								<div class="item_c">
									<a> 어트 : </a>
									<a> 200,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독반지(바람)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독반지(바람)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
							</div>

							<div class="item">
								<div class="itemname">
									<a> 천독반지(암흑) </a>
								</div>
								<div class="item_c">
									<a> 어트 : </a>
									<a> 200,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독반지(암흑)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<label class="checkbox">
										  <input type="checkbox" value="천독반지(암흑)">									
										  <i class="icon-checkbox"></i>										
										</label>
										</span>
								</div>
							</div>
						</div>
					</div>

					<div class="call-to-action text-center">
						<h2 class="text-center text-primary" style="margin: 40px; margin-bottom:0;">검은 마천루 버스</h2>
						<br>
						<a class="btn center btn-default" type="submit">예약하기</a>
					</div>
					<hr>
					<div class="row">
						<div class="col-lg-10 col-lg-offset-1 ">
							<div class="row">
								<h4 class="wide-space text-center text-warning">예약시 해당 팀장의
									카카오톡 아이디로 알림 문자가 전송됩니다.</h4>
							</div>
						</div>
					</div>
				</section>


			</div>


		</div>
		

</body>
<script src="${pageContext.request.contextPath}/resource/js/black.js"></script>
</html>