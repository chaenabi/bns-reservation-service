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
				<li class="d1"><a href="#" class="d1" id="gyungguk" onclick="javascript:getDate('경국지색');"><span><input type="hidden" name="gyungguk" value="경국지색"/>경국지색</span></a>
					<div class="inner" id="first_server">
						<div class="core">
						
						<div class="date_manage" id="gyungguk_teamlist">
								
						</div>
						
						<div class="time_manage" id="gyungguk_timelist">
								</div>
										
						</div>
					</div></li>
					
				<!-- 절세미인 -->
				<li class="d1"><a href="#" class="d1" id="jeolse" onclick="javascript:getDate('절세미인');"><span><input type="hidden" name="jeolse" value="절세미인"/>절세미인</span></a>
					<div class="inner" id="second_server">
						<div class="core">

						<ul class="date_manage" id="jeolse_teamlist">							
						</ul>
							
						</div>
					</div></li>

				<!-- 금강불괴 -->
				<li class="d1"><a href="#" class="d1"  id="gumgang" onclick="getDate('금강불괴')"><span><input type="hidden" name="gumgang" value="금강불괴"/>금강불괴</span></a>
					<div class="inner" id="third_server">
						<div class="core">

							<strong class="go_date">금강불괴</strong>
							<ul class="list">
								<li id="q"><a href="#" class="go_time"><span>절세1팀</span></a></li>
								<li id="r"><a href="#" class="go_time"><span>절세2팀</span></a></li>
								<li id="s"><a href="#" class="go_time"><span>절세3팀</span></a></li>
								<li id="t"><a href="#" class="go_time"><span>절세4팀</span></a></li>
								<li id="u"><a href="#" class="go_time"><span>절세5팀</span></a></li>
								<li id="v"><a href="#" class="go_time"><span>절세6팀</span></a></li>
								<li id="w"><a href="#" class="go_time"><span>절세7팀</span></a></li>
								<li id="x"><a href="#" class="go_time"><span>절세8팀</span></a></li>
							</ul>
						</div>
					</div></li>

				<!-- 명불허전 -->
				<li class="d1"><a href="#" class="d1"  id="myungbul" onclick="getDate('명불허전')"><span><input type="hidden" name="myungbul" value="명불허전"/>명불허전</span></a>
					<div class="inner" id="fourth_server">
						<div class="core">

							<strong class="go_date">명불허전</strong>
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
				<li class="d1"><a href="#" class="d1"  id="singum"onclick="getDate('신검합일')"><span><input type="hidden" name="singum" value="신검합일"/>신검합일</span></a>
					<div class="inner" id="fifth_server">
						<div class="core">

							<strong>신검합일</strong>
							<ul class="list">
								<li id="gg"><a href="#" class="go_time"><span>절세1팀</span></a></li>
								<li id="hh"><a href="#" class="go_time"><span>절세2팀</span></a></li>
								<li id="hh"><a href="#" class="go_time"><span>절세3팀</span></a></li>
								<li id="ii"><a href="#" class="go_time"><span>절세4팀</span></a></li>
								<li id="jj"><a href="#" class="go_time"><span>절세5팀</span></a></li>
								<li id="kk"><a href="#" class="go_time"><span>절세6팀</span></a></li>
								<li id="ll"><a href="#" class="go_time"><span>절세7팀</span></a></li>
								<li id="mm"><a href="#" class="go_time"><span>절세8팀</span></a></li>
							</ul>
						</div>
					</div></li>

				<!-- 일확천금 -->
				<li class="d1"><a href="#" class="d1"  id="ilhwak" onclick="getDate('일확천금')"><span><input type="hidden" name="ilhwak" value="일확천금"/>일확천금</span></a>
					<div class="inner" id="sixth_server">
						<div class="core">

							<strong>일확천금</strong>
							<ul class="list">
								<li id="nn"><a href="#" class="go_time"><span>절세1팀</span></a></li>
								<li id="oo"><a href="#" class="go_time"><span>절세2팀</span></a></li>
								<li id="pp"><a href="#" class="go_time"><span>절세3팀</span></a></li>
								<li id="qq"><a href="#" class="go_time"><span>절세4팀</span></a></li>
								<li id="rr"><a href="#" class="go_time"><span>절세5팀</span></a></li>
								<li id="ss"><a href="#" class="go_time"><span>절세6팀</span></a></li>
								<li id="tt"><a href="#" class="go_time"><span>절세7팀</span></a></li>
								<li id="uu"><a href="#" class="go_time"><span>절세8팀</span></a></li>
							</ul>
						</div>
					</div></li>

				<!-- 이심전심 -->
				<li class="d1"><a href="#" class="d1"  id="isim" onclick="getDate('이심전심')"><span><input type="hidden" name="isim" value="이심전심"/>이심전심</span></a>
					<div class="inner" id="seventh_server">
						<div class="core">

							<strong>이심전심</strong>
							<ul class="list">
								<li id="vv"><a href="#" class="go_time"><span>절세1팀</span></a></li>
								<li id="ww"><a href="#" class="go_time"><span>절세2팀</span></a></li>
								<li id="xx"><a href="#" class="go_time"><span>절세3팀</span></a></li>
								<li id="yy"><a href="#" class="go_time"><span>절세4팀</span></a></li>
								<li id="zz"><a href="#" class="go_time"><span>절세5팀</span></a></li>
								<li id="aaa"><a href="#" class="go_time"><span>절세6팀</span></a></li>
								<li id="bbb"><a href="#" class="go_time"><span>절세7팀</span></a></li>
								<li id="ccc"><a href="#" class="go_time"><span>절세8팀</span></a></li>
							</ul>
						</div>
					</div></li>
				<!-- 화룡점정 -->
				<li class="d1"><a href="#" class="d1" id="hwaryung" onclick="getDate('화룡점정')"><span><input type="hidden" name="hwaryung" value="화룡점정"/>화룡점정</span></a>
					<div class="inner" id="eighth_server">
						<div class="core">

							<strong>화룡점정</strong>
							<ul class="list">
								<li id="ddd"><a href="#" class="go_time"><span>절세1팀</span></a></li>
								<li id="eee"><a href="#" class="go_time"><span>절세2팀</span></a></li>
								<li id="fff"><a href="#" class="go_time"><span>절세3팀</span></a></li>
								<li id="ggg"><a href="#" class="go_time"><span>절세4팀</span></a></li>
								<li id="hhh"><a href="#" class="go_time"><span>절세5팀</span></a></li>
								<li id="iii"><a href="#" class="go_time"><span>절세6팀</span></a></li>
								<li id="jjj"><a href="#" class="go_time"><span>절세7팀</span></a></li>
								<li id="kkk"><a href="#" class="go_time"><span>절세8팀</span></a></li>
							</ul>
						</div>
					</div></li>
			</ul>

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
									<hr style="margin: 5px 0 8px 0;">
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