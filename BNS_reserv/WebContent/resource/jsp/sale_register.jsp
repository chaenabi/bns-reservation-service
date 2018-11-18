<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/css/sale_register.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/checkbox/checkbox_radio_img_sprite.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/jquery/jquery.js"></script>

</head>
<body>

	<video autoplay loop id="background_video" muted>
		<source
			src="${pageContext.request.contextPath}/resource/assets/video/vi3.mp4"
			type="video/mp4">
	</video>
	<form action="${pageContext.request.contextPath}/servlet/TeamServ?action=team_reg" method="post">
	<div class="container">
		<div class="content">

			<div class="mainform">

				<h2>등록</h2>
					<p style="margin: 0; padding: 0; font-size:20px; color:#58FA58">
		
			

			
				</p>
				<hr>
				<br>
				<div class="team_register">
					<input type="hidden" id="id"  name="id" 
					value="<%=session.getAttribute("id")%>"/>
					<a>팀명</a> : <input type="text" id="team_name" name="team_name" placeholder="6글자이내">
					<input type="button" id="multi_ck" value="중복체크"> &nbsp; <a>진행날짜
						: </a> <input type="text" id="go_date" name="go_date" placeholder="timeplickr 적용예정">
						출발시각 : <input type="text" id="go_time" name="go_time" placeholder="출발시각">
						</div>
						
					<div class="team_raid"> 레이드 종류 : 검은 마천루 <label class="radio"> <input
						type="radio" name="raid_type" id="black" value="검은 마천루"  required> <i class="icon-radio"></i>
					</label> 소용돌이 사원 <label class="radio"> <input type="radio"
						name="raid_type" id="vortex"  value="소용돌이 사원"  required> <i class="icon-radio"></i>
					</label> 태천왕릉 <label class="radio"  > <input type="radio"
						name="raid_type"  id="twilight"  value="태천왕릉" required> <i class="icon-radio"></i>
					</label> 적몽의 비원 <label class="radio" > <input type="radio"
						name="raid_type"  id="reddream"  value="적몽의 비원"> <i
						class="icon-radio"></i>
					</label>

				</div>
				<hr>
				
				<h3 style="margin:10px;">판매할 아이템</h3>
				<hr>
				
				
				
				<div class="sales">
				
				
					<div class="named_class">
					<a class="named"> 천독룡 </a>
					</div>
					<div class="named_class">
					<a class="named2"> 초열혹한검</a>
					</div>
					<div class="named_class">
					<a class="named3"> 결계천수 </a>	
					</div>
					<div class="named_class">
					<a class="named4"> 적몽 1네임드 </a>	
					</div>
					
					
					<!-- 검은마천루  -->
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs1"  class="writeprice" placeholder="금액">
						
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="bs2" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs3"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="bs4" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs5" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs5"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs6" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="bs6" class="writeprice" placeholder="금액">
					</div>
					

					<!-- 소용돌이 사원  -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 1계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt1"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 2계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt2"  class="writeprice" placeholder="금액">
					</div>
							
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 1계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt3" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 2계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt4" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 1계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt5" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt5" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 2계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt6" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt6" class="writeprice" placeholder="금액">
					</div>
					
					<!-- 태천왕릉  -->
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"id="ck_tw1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw1"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="tw2" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw3"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="ck_tw4"value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="tw4" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw5" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw5"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw6" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="tw6" class="writeprice" placeholder="금액">
					</div>
					
					
					<!-- 적몽의 비원  -->
					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="g" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="h"  class="writeprice" placeholder="금액">
					</div>
					
					
					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="o"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="p" class="writeprice" placeholder="금액">
					</div>	


					
					
					<div class="named_class">
					<a class="named"> 사안장군 </a>
					</div>
					<div class="named_class">
					<a class="named2"> 초마령</a>
					</div>
					
					<div class="named_class">
					<a class="named3"> 결계천수 </a>
					</div>
					<div class="named_class">	
					<a class="named4"> 적몽 2네임드 </a>	
					</div>
					
					
					<!-- 검은마천루  -->
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs7" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs7"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs8" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="bs8"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs9" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs9"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs10"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="bs10"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs11" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs11"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs12" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="bs12"  class="writeprice" placeholder="금액">
					</div>

					<!-- 소용돌이 사원  -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 1계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt7" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt7" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 2계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="ck_vt8" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt8" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 1계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="ck_vt9" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt9" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 2계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt10"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt10" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 1계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="ck_vt11" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt11" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 2계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="ck_vt12" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt12" class="writeprice" placeholder="금액">
					</div>
					
			
					
					<!-- 태천왕릉  -->
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="ck_tw7" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw7"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw8" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="tw8"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw9" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw9"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw10" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="tw10"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw11" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw11"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw12" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="tw12"  class="writeprice" placeholder="금액">
					</div>
					
					<!-- 적몽의 비원  -->
					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="w" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="x"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="e0"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="f0" class="writeprice" placeholder="금액">
					</div>	

						<div class="info" style="padding-top: 30px;">
							<a> 먼저 등록할 팀의 레이드 종류를 선택해주세요 !</a>
						</div>

					<div class="named_class">
					<a class="named">모순장군 </a>
					</div>
					<div class="named_class">
					<a class="named2">적패왕</a>
					</div>
					<div class="named_class">
					<a class="named3">섬천대장군 </a>
					</div>
					<div class="named_class">	
					<a class="named4">사화마녀</a>		
					</div>
				
					
					<!-- 검은마천루  -->
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs13" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs13"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs14"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="bs14" class="writeprice" placeholder="금액">
					</div>
				
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs15"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs15"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="ck_bs16"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="bs16" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs17"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs17"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs18"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="bs18" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs19"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs19"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"id="ck_bs20"   value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="bs20"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs21"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs21"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs22"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="bs22"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs23"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs23"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs24"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="bs24"  class="writeprice" placeholder="금액">
					</div>

					<!-- 소용돌이 사원  -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 1계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt13"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt13" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 2계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt14"   value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt14" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 1계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt15"   value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt15" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 2계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt16"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt16" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 1계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt17"   value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt17" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 2계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt18"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt18" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 1계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt19"   value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt19"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 2계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt20"   value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt20"  class="writeprice" placeholder="금액">
					</div>
							
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 1계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt21"   value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt21" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 2계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt22"   value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt22" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 1계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt23"   value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt23" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 2계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="ck_vt24"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt24" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2" >
						<div class="sale-item-name" >
							<a> 신공석</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt25"   value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt25" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2" >
						<div class="sale-item-name" style="height:26px;">
						</div>
					</div>

					
					<!-- 태천왕릉  -->
					
		     		<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw13"   value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw13"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw14"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="tw14" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw15"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw15"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw16"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="tw16" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw17"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw17"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw18"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="tw18" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw19"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw19"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw20"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="tw20"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw21"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw21"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw22"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="tw22"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw23"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw23"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"id="ck_tw24"   value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="tw24"  class="writeprice" placeholder="금액">
					</div>
					
				


					
					<!-- 적몽의 비원  -->
					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="u0" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="v0" class="writeprice" placeholder="금액">
							
					</div>	
					<div class="named_class">
					<a class="named"> 촉마왕 </a>
					</div>
					<div class="named_class">
					<a class="named2"> 흑풍마녀 </a>
					</div>
					<div class="named_class">
					<a class="named3"> 태천명왕 </a>	
					</div>
					
					
					
					<!-- 검은마천루  -->
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 촉마왕의 흑린</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs_hukrin"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="bs_hukrin" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 촉마왕의 격골</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs_gyukgol" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_gyukgol" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 촉마왕의 진기</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs_ginki" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_ginki" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 촉마강</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_bs_bsgang" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_bsgang" class="writeprice" placeholder="금액">
					</div>
				
					<!-- 소용돌이 사원  -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 흑풍마녀의 묵시</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt_muksi" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_muksi" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 흑풍마녀의 흑참</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt_hukcham" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_hukcham"  class="writeprice" placeholder="금액">
					</div>
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 흑풍마녀의 암각</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_vt_amgak" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_amgak"  class="writeprice" placeholder="금액">
					</div>
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 흑풍강</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="ck_vtgang" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_vtgang"  class="writeprice" placeholder="금액">
					</div>
					
					<!-- 태천왕릉  -->
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 태천명왕의 시익</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw_siik" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_siik" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 태천명왕의 늑골</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw_nukgol" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_nukgol" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 태천명왕의 광배</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_tw_gwangbae" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_gwangbae" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 태천강</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ck_twgang" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_twgang" class="writeprice" placeholder="금액">
					</div>

	
					
					<!-- 적몽의 비원 4네임드 미구현인듯  -->
			<!-- 		<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  class="writeprice" placeholder="금액">
					</div>	 -->

					
						<div class="info2" style="display:none;">
							<a> 등록할 팀의 레이드 종류를 선택해주세요 !</a>
						</div>
						
				
					<div style=" height: 40px; padding-top: 20px; display: inline-block;" >
					<input type="submit" class="btn_submit" value="팀등록하기">
					</div>
				</div>

			</div>


		</div>

	</div>
</form>


<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/sale_register.js"></script>

</body>
</html>