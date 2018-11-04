<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="import"
	href="${pageContext.request.contextPath}/resource/jsp/common/header.jsp">
</head>
<body>
	<!--  마천루 비디오 제어 -->
	<video autoplay loop id="background_video" muted>
		<source
			src="${pageContext.request.contextPath}/resource/assets/video/skyscraper.mp4"
			type="video/mp4">
	</video>

	<!-- 중앙 글씨 -->
	<div class="container">
		<h1>Blade and Soul</h1>
		<p>Welcome to BNS BUS reservation guide</p>
	</div>

	<!-- 사이드바 열림 애니메이션 (onload click) -->
	<input type="hidden" id="nav" onclick="openNav();" />


	<form action="" method="post">
		<!-- 사이드바 -->
		<div class="sidenav" id="sidenav">
			<!-- 서버 -->
			<ul class="sidemenu">
				<!-- 경국지색 -->
				<li class="d1"><a href="#" class="d1"><span>경국지색</span></a>
					<div class="inner">
						<div class="core">
							<strong class="datetime">10월 31일</strong> <strong
								class="datetime">수요일</strong>
							<ul class="list">
								<li id="a"><a href="#"><span>오전 10시 30분</span></a></li>
								<li id="b"><a href="#"><span>오전 11시 30분</span></a></li>
								<li id="c"><a href="#"><span>오후 3시</span></a></li>
								<li id="d"><a href="#"><span>오후 6시</span></a></li>
								<li id="e"><a href="#"><span>오후 6시</span></a></li>
								<li id="f"><a href="#"><span>오후 6시</span></a></li>
								<li id="g"><a href="#"><span>오후 6시</span></a></li>
								<li id="h"><a href="#"><span>오후 6시</span></a></li>
							</ul>
						</div>
					</div></li>

				<!-- 절세미인 -->
				<li class="d1"><a href="#" class="d1"><span>절세미인</span></a>
					<div class="inner">
						<div class="core">

							<strong class="datetime">절세미인</strong>
							<ul class="list">
								<li id="i"><a href="#"><span>오후 9시</span></a></li>
								<li id="j"><a href="#"><span>오후 6시</span></a></li>
								<li id="k"><a href="#"><span>오후 12시</span></a></li>
								<li id="l"><a href="#"><span>오전 1시</span></a></li>
								<li id="m"><a href="#"><span>오전 10시</span></a></li>
								<li id="n"><a href="#"><span>오후 3시</span></a></li>
								<li id="o"><a href="#"><span>오후 5시</span></a></li>
								<li id="p"><a href="#"><span>오후 7시</span></a></li>
							</ul>
						</div>
					</div></li>

				<!-- 금강불괴 -->
				<li class="d1"><a href="#" class="d1"><span>금강불괴</span></a>
					<div class="inner">
						<div class="core">

							<strong class="datetime">금강불괴</strong>
							<ul class="list">
								<li id="q"><a href="#"><span>절세1팀</span></a></li>
								<li id="r"><a href="#"><span>절세2팀</span></a></li>
								<li id="s"><a href="#"><span>절세3팀</span></a></li>
								<li id="t"><a href="#"><span>절세4팀</span></a></li>
								<li id="u"><a href="#"><span>절세5팀</span></a></li>
								<li id="v"><a href="#"><span>절세6팀</span></a></li>
								<li id="w"><a href="#"><span>절세7팀</span></a></li>
								<li id="x"><a href="#"><span>절세8팀</span></a></li>
							</ul>
						</div>
					</div></li>

				<!-- 명불허전 -->
				<li class="d1"><a href="#" class="d1"><span>명불허전</span></a>
					<div class="inner">
						<div class="core">

							<strong class="datetime">명불허전</strong>
							<ul class="list">
								<li id="y"><a><span>절세1팀</span></a></li>
								<li id="z"><a><span>절세2팀</span></a></li>
								<li id="aa"><a><span>절세3팀</span></a></li>
								<li id="bb"><a><span>절세4팀</span></a></li>
								<li id="cc"><a><span>절세5팀</span></a></li>
								<li id="dd"><a><span>절세6팀</span></a></li>
								<li id="ee"><a><span>절세7팀</span></a></li>
								<li id="ff"><a><span>절세8팀</span></a></li>
							</ul>
						</div>
					</div></li>

				<!-- 신검합일 -->
				<li class="d1"><a href="#" class="d1"><span>신검합일</span></a>
					<div class="inner">
						<div class="core">

							<strong class="datetime">신검합일</strong>
							<ul class="list">
								<li id="gg"><a href="#"><span>절세1팀</span></a></li>
								<li id="hh"><a href="#"><span>절세2팀</span></a></li>
								<li id="hh"><a href="#"><span>절세3팀</span></a></li>
								<li id="ii"><a href="#"><span>절세4팀</span></a></li>
								<li id="jj"><a href="#"><span>절세5팀</span></a></li>
								<li id="kk"><a href="#"><span>절세6팀</span></a></li>
								<li id="ll"><a href="#"><span>절세7팀</span></a></li>
								<li id="mm"><a href="#"><span>절세8팀</span></a></li>
							</ul>
						</div>
					</div></li>

				<!-- 일확천금 -->
				<li class="d1"><a href="#" class="d1"><span>일확천금</span></a>
					<div class="inner">
						<div class="core">

							<strong class="datetime">일확천금</strong>
							<ul class="list">
								<li id="nn"><a href="#"><span>절세1팀</span></a></li>
								<li id="oo"><a href="#"><span>절세2팀</span></a></li>
								<li id="pp"><a href="#"><span>절세3팀</span></a></li>
								<li id="qq"><a href="#"><span>절세4팀</span></a></li>
								<li id="rr"><a href="#"><span>절세5팀</span></a></li>
								<li id="ss"><a href="#"><span>절세6팀</span></a></li>
								<li id="tt"><a href="#"><span>절세7팀</span></a></li>
								<li id="uu"><a href="#"><span>절세8팀</span></a></li>
							</ul>
						</div>
					</div></li>

				<!-- 이심전심 -->
				<li class="d1"><a href="#" class="d1"><span>이심전심</span></a>
					<div class="inner">
						<div class="core">

							<strong class="datetime">이심전심</strong>
							<ul class="list">
								<li id="vv"><a href="#"><span>절세1팀</span></a></li>
								<li id="ww"><a href="#"><span>절세2팀</span></a></li>
								<li id="xx"><a href="#"><span>절세3팀</span></a></li>
								<li id="yy"><a href="#"><span>절세4팀</span></a></li>
								<li id="zz"><a href="#"><span>절세5팀</span></a></li>
								<li id="aaa"><a href="#"><span>절세6팀</span></a></li>
								<li id="bbb"><a href="#"><span>절세7팀</span></a></li>
								<li id="ccc"><a href="#"><span>절세8팀</span></a></li>
							</ul>
						</div>
					</div></li>
				<!-- 이심전심 -->
				<li class="d1" class="datetime"><a href="#" class="d1"><span>화룡점정</span></a>
					<div class="inner">
						<div class="core">

							<strong>화룡점정</strong>
							<ul class="list">
								<li id="ddd"><a href="#"><span>절세1팀</span></a></li>
								<li id="eee"><a href="#"><span>절세2팀</span></a></li>
								<li id="fff"><a href="#"><span>절세3팀</span></a></li>
								<li id="ggg"><a href="#"><span>절세4팀</span></a></li>
								<li id="hhh"><a href="#"><span>절세5팀</span></a></li>
								<li id="iii"><a href="#"><span>절세6팀</span></a></li>
								<li id="jjj"><a href="#"><span>절세7팀</span></a></li>
								<li id="kkk"><a href="#"><span>절세8팀</span></a></li>
							</ul>
						</div>
					</div></li>
				<!-- test -->
				<li class="d1"><a href="#" class="d1"><span>test</span></a>
					<div class="inner">
						<div class="core">

							<strong class="datetime">test</strong>
							<ul>
								<li id="lll"><a href="#"><span>오후 6시</span></a></li>
								<li id="mmm"><a href="#"><span>오후 6시</span></a></li>
								<li id="nnn"><a href="#"><span>오후 6시</span></a></li>
								<li id="ooo"><a href="#"><span>오후 6시</span></a></li>
								<li id="ppp"><a href="#"><span>오후 6시</span></a></li>
								<li id="qqq"><a href="#"><span>오후 6시</span></a></li>
								<li id="rrr"><a href="#"><span>오후 6시</span></a></li>
								<li id="sss"><a href="#"><span>오후 6시</span></a></li>
							</ul>
						</div>
					</div></li>
			</ul>

			<div class="teamlists">
				<ul class="teamlist">
					<li id="ab"><a href="#"><span>경국왕릉</span></a></li>
					<li id="cd"><a href="#"><span>경국왕릉2</span></a></li>
					<li id="ef"><a href="#"><span>경국왕릉3</span></a></li>
					<li id="gh"><a href="#"><span>절세4팀</span></a></li>
					<li id="ij"><a href="#"><span>절세5팀</span></a></li>
					<li id="kl"><a href="#"><span>절세6팀</span></a></li>
					<li id="mn"><a href="#"><span>절세7팀</span></a></li>
					<li id="op"><a href="#"><span>절세8팀</span></a></li>
				</ul>



			</div>

		</div>


		<div class="order" id="order">
			<div class="menu">

				<section class="menupan">

				<div class="team_info">
					<div class="team_sn">
						<a class="text-right text-default" style="text-decoration: none !important;"> 경국지색 : </a>
						<a class="team_name">룩덕호</a>
					</div>
					<div class="team_tn">
						<a class="text-right text-default" style="text-decoration: none !important;"> 팀장명 : </a>
						<a class="team_name">기공사초보</a>
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
								</div>
								<div class="item_c">
									<a> 어트 : </a>
									<a> 200,000금 </a>
									<span>
									<input type="checkbox" value="천독귀걸이(번개)" />
									</span>
								</div>
								<div class=item_c>
								<a> 노어트 : </a>
								<a> 300,000금 </a>
									<span>
									<input type="checkbox" value="천독귀걸이(번개)" />
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
									<input type="checkbox" value="천독귀걸이(화염)" />
									</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<input type="checkbox" value="천독귀걸이(화염)" />
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
									<input type="checkbox" value="천독반지(바람)" />
									</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<input type="checkbox" value="천독반지(바람)" />
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
									<input type="checkbox" value="천독반지(암흑)" />
									</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<input type="checkbox" value="천독반지(암흑)" />
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
								<div class="item_c">
									<a> 어트 : </a>
									<a> 200,000금 </a>
									<span>
									<input type="checkbox" value="천독귀걸이(번개)" />
									</span>
								</div>
								<div class=item_c>
								<a> 노어트 : </a>
								<a> 300,000금 </a>
									<span>
									<input type="checkbox" value="천독귀걸이(번개)" />
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
									<input type="checkbox" value="천독귀걸이(화염)" />
									</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<input type="checkbox" value="천독귀걸이(화염)" />
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
									<input type="checkbox" value="천독반지(바람)" />
									</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<input type="checkbox" value="천독반지(바람)" />
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
									<input type="checkbox" value="천독반지(암흑)" />
									</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<input type="checkbox" value="천독반지(암흑)" />
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
								<div class="item_c">
									<a> 어트 : </a>
									<a> 200,000금 </a>
									<span>
									<input type="checkbox" value="천독귀걸이(번개)" />
									</span>
								</div>
								<div class=item_c>
								<a> 노어트 : </a>
								<a> 300,000금 </a>
									<span>
									<input type="checkbox" value="천독귀걸이(번개)" />
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
									<input type="checkbox" value="천독귀걸이(화염)" />
									</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<input type="checkbox" value="천독귀걸이(화염)" />
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
									<input type="checkbox" value="천독반지(바람)" />
									</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<input type="checkbox" value="천독반지(바람)" />
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
									<input type="checkbox" value="천독반지(암흑)" />
									</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<input type="checkbox" value="천독반지(암흑)" />
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
								<div class="item_c">
									<a> 어트 : </a>
									<a> 200,000금 </a>
									<span>
									<input type="checkbox" value="천독귀걸이(번개)" />
									</span>
								</div>
								<div class=item_c>
								<a> 노어트 : </a>
								<a> 300,000금 </a>
								<span>
									<input type="checkbox" value="천독귀걸이(번개)" />
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
									<input type="checkbox" value="천독귀걸이(화염)" />
									</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<input type="checkbox" value="천독귀걸이(화염)" />
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
									<input type="checkbox" value="천독반지(바람)" />
									</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<input type="checkbox" value="천독반지(바람)" />
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
									<input type="checkbox" value="천독반지(암흑)" />
									</span>
								</div>
								<div class="item_c">
									<a> 노어트 : </a>
									<a> 300,000금 </a>
									<span>
									<input type="checkbox" value="천독반지(암흑)" />
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

	</form>

</body>
<script src="${pageContext.request.contextPath}/resource/js/black.js"></script>
</html>