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
					
					
					<!-- 검은마천루 1네임드  -->
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tujang_ring1" name="bs_tujang_ring1"value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tujang_ring1_price"  name="bs_tujang_ring1_price" class="writeprice" placeholder="금액">
						
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tujang_ring2" name="bs_tujang_ring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="bs_tujang_ring2_price" name="bs_tujang_ring2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuji_ring1"  name="bs_tuji_ring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tuji_ring1_price" name="bs_tujang_ring1_price"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuji_ring2" name="bs_tuji_ring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="bs_tuji_ring2_price" name="bs_tuji_ring2_price"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuhon_ring1"  name="bs_tuhon_ring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tuhon_ring1_price"  name="bs_tuhon_ring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuhon_ring2"name="bs_tuhon_ring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="bs_tuhon_ring2_price" name="bs_tuhon_ring2_price" class="writeprice" placeholder="금액">
					</div>
					

					<!-- 소용돌이 사원 1네임드 -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 1계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_gon_tujang"name="vt_gon_tujang" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_gon_tujang_price"  name="vt_gon_tujang_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 2계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_sun_tujang"name="vt_sun_tujang" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_sun_tujang_price"  name="vt_sun_tujang_price" class="writeprice" placeholder="금액">
					</div>
							
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 1계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_gon_tuji"name="vt_gon_tuji" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt_gon_tuji_price" name="vt_gon_tuji_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 2계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_sun_tuji"name="vt_sun_tuji" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt_sun_tuji_price" name="vt_sun_tuji_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 1계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_gon_tuhon"name="vt_gon_tuhon" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt_gon_tuhon_price" name="vt_gon_tuhon_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 2계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_sun_tuhon"name="vt_sun_tuhon" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt_sun_tuhon_price" name="vt_sun_tuhon_price" class="writeprice" placeholder="금액">
					</div>
					
					<!-- 태천왕릉 1네임드 -->
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"id="tw_tujang_ring1"name="tw_tujang_ring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tujang_ring1_price"  name="tw_tujang_ring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tujang_ring2"name="tw_tujang_ring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="tw_tujang_ring2_price" name="tw_tujang_ring2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuji_ring1"name="tw_tuji_ring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tuji_ring1_price"  name="tw_tuji_ring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="tw_tuji_ring2" name="tw_tuji_ring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="tw_tuji_ring2_price" name="tw_tuji_ring2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuhon_ring1"name="tw_tuhon_ring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tuhon_ring1_price"  name="tw_tuhon_ring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuhon_ring2"name="tw_tuhon_ring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="tw_tuhon_ring2_price" name="tw_tuhon_ring2_price" class="writeprice" placeholder="금액">
					</div>
					
					
					<!-- 적몽의 비원 1네임드 -->
					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" name="" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="g" name="" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"name="" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="h"  name="" class="writeprice" placeholder="금액">
					</div>
					
					
					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"name="" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="o"  name="" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"name="" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="p" name="" class="writeprice" placeholder="금액">
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
					
					
					<!-- 검은마천루 2네임드 -->
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tujang_earring1"name="bs_tujang_earring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tujang_earring1_price"  name="bs_tujang_earring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tujang_earring2"name="bs_tujang_earring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="bs_tujang_earring2_price"  name="bs_tujang_earring2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuji_earring1"name="bs_tuji_earring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tuji_earring1_price"  name="bs_tuji_earring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuji_earring2" name="bs_tuji_earring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="bs_tuji_earring2_price"  name="bs_tuji_earring2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuhon_earring1"name="bs_tuhon_earring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tuhon_earring1_price"  name="bs_tuhon_earring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuhon_earring2"name="bs_tuhon_earring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="bs_tuhon_earring2_price"  name="bs_tuhon_earring2_price" class="writeprice" placeholder="금액">
					</div>

					<!-- 소용돌이 사원 2네임드 -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 1계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_tujang1"name="vt_tujang1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tujang1_price" name="vt_tujang1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 2계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="vt_tujang2"name="vt_tujang2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tujang2_price" name="vt_tujang2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 1계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="vt_tuji1"name="vt_tuji1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tuji1_price" name="vt_tuji1_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 2계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_tuji2" name="vt_tuji2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tuji2_price" name="vt_tuji2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 1계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="vt_tuhon1"name="vt_tuhon1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tuhon1_price" name="vt_tuhon1_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 2계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="vt_tuhon2" name="vt_tuhon2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tuhon2_price" name="vt_tuhon2_price" class="writeprice" placeholder="금액">
					</div>
					
			
					
					<!-- 태천왕릉  2네임드-->
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="tw_tujang_earring1"name="tw_tujang_earring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tujang_earring1_price"  name="tw_tujang_earring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tujang_earring2"name="tw_tujang_earring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="tw_tujang_earring2_price"  name="tw_tujang_earring2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuji_earring1"name="tw_tuji_earring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tuji_earring1_price"  name="tw_tuji_earring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuji_earring2"name="tw_tuji_earring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="tw_tuji_earring2_price"  name="tw_tuji_earring2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuhon_earring1"name="tw_tuhon_earring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tuhon_earring1_price"  name="tw_tuhon_earring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuhon_earring2"name="tw_tuhon_earring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="tw_tuhon_earring2_price"  name="tw_tuhon_earring2_price" class="writeprice" placeholder="금액">
					</div>
					
					<!-- 적몽의 비원 2네임드 -->
					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" name="" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="w" name="" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"name="" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="x"  name="" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"name="" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="e0"  name="" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"name="" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="f0" name="" class="writeprice" placeholder="금액">
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
								<input type="checkbox" id="bs_tujang_ring3"name="bs_tujang_ring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tujang_ring3_price"  name="bs_tujang_ring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tujang_ring4" name="bs_tujang_ring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="bs_tujang_ring4_price" name="bs_tujang_ring4_price" class="writeprice" placeholder="금액">
					</div>
				
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuji_ring3" name="bs_tuji_ring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tuji_ring3_price"  name="bs_tuji_ring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="bs_tuji_ring4" name="bs_tuji_ring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="bs_tuji_ring4_price" name="bs_tuji_ring4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuhon_ring3" name="bs_tuhon_ring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tuhon_ring3_price"  name="bs_tuhon_ring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuhon_ring4" name="bs_tuhon_ring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="bs_tuhon_ring4_price" name="bs_tuhon_ring4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tujang_earring3" name="bs_tujang_earring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tujang_earring3_price"  name="bs_tujang_earring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"id="bs_tujang_earring4"  name="bs_tujang_earring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="bs_tujang_earring4_price"  name="bs_tujang_earring4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuji_earring3" name="bs_tuji_earring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tuji_earring3_price"  name="bs_tuji_earring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuji_earring4" name="bs_tuji_earring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="bs_tuji_earring4_price"  name="bs_tuji_earring4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuhon_earring3" name="bs_tuhon_earring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tuhon_earring3_price"  name="bs_tuhon_earring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuhon_earring4" name="bs_tuhon_earring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="bs_tuhon_earring4_price"  name="bs_tuhon_earring4_price" class="writeprice" placeholder="금액">
					</div>

					<!-- 소용돌이 사원  3네임드-->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 1계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_tujang3" name="vt_tujang3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tujang3_price" name="vt_tujang3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 2계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_tujang4"  name="vt_tujang4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tujang4_price" name="vt_tujang4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 1계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_tuji3"  name="vt_tuji3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tuji3_price" name="vt_tuji3_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 2계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_tuji4" name="vt_tuji4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tuji4_price" name="vt_tuji4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 1계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_tuhon3"  name="vt_tuhon3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tuhon3_price" name="vt_tuhon3_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 2계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_tuhon4" name="vt_tuhon4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tuhon4_price" name="vt_tuhon4_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 1계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_gon_tujang2"  name="vt_gon_tujang2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_gon_tujang2_price"  name="vt_gon_tujang2_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 2계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id=vt_sun_tujang2  name="vt_sun_tujang2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_sun_tujang2_price"  name="vt_sun_tujang2_price" class="writeprice" placeholder="금액">
					</div>
							
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 1계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_gon_tuji2"  name="vt_gon_tuji2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt_gon_tuji2_price" name="vt_gon_tuji2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 2계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_sun_tuji2"  name="vt_sun_tuji2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt_sun_tuji2_price" name="vt_sun_tuji2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 1계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_gon_tuhon2"  name="vt_gon_tuhon2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt_gon_tuhon2_price" name="vt_gon_tuhon2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 2계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="vt_sun_tuhon2" name="vt_sun_tuhon2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt_sun_tuhon2_price" name="vt_sun_tuhon2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2" >
						<div class="sale-item-name" >
							<a> 신공석</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="singongsuk"  name="singongsuk" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="singongsuk_price" name="singongsuk_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2" >
						<div class="sale-item-name" style="height:26px;">
						</div>
					</div>

					
					<!-- 태천왕릉 3네임드 -->
					
		     		<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tujang_ring3"  name="tw_tujang_ring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tujang_ring3_price"  name="tw_tujang_ring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tujang_ring4" name="tw_tujang_ring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="tw_tujang_ring4_price" name="tw_tujang_ring4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuji_ring3" name="tw_tuji_ring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tuji_ring3_price"  name="tw_tuji_ring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuji_ring4" name="tw_tuji_ring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="tw_tuji_ring4_price" name="tw_tuji_ring4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuhon_ring3" name="tw_tuhon_ring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tuhon_ring3_price"  name="tw_tuhon_ring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuhon_ring4" name="tw_tuhon_ring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="tw_tuhon_ring4_price" name="tw_tuhon_ring4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tujang_earring3" name="tw_tujang_earring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tujang_earring3_price"  name="tw_tujang_earring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tujang_earring4" name="tw_tujang_earring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="tw_tujang_earring4_price"  name="tw_tujang_earring4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuji_earring3" name="tw_tuji_earring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tuji_earring3_price"  name="tw_tuji_earring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuji_earring4" name="tw_tuji_earring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="tw_tuji_earring4_price"  name="tw_tuji_earring4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuhon_earring3" name="tw_tuhon_earring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tuhon_earring3_price"  name="tw_tuhon_earring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"id="tw_tuhon_earring4"  name="tw_tuhon_earring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="tw_tuhon_earring4_price"  name="tw_tuhon_earring4_price" class="writeprice" placeholder="금액">
					</div>
					
				


					
					<!-- 적몽의 비원 3네임드 -->
					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"name="" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="u0" name="" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"name="" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="v0" name="" class="writeprice" placeholder="금액">
							
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
					
					
					
					<!-- 검은마천루 4네임드 -->
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 촉마왕의 흑린</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="hukrin" name="hukrin" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="hukrin_price" name="hukrin_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 촉마왕의 격골</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="gyukgol" name="gyukgol" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="gyukgol_price" name="gyukgol_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 촉마왕의 진기</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ginki"name="ginki" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="ginki_price" name="ginki_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 촉마강</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_gang"name="bs_gang" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_gang_price" name="bs_gang_price" class="writeprice" placeholder="금액">
					</div>
				
					<!-- 소용돌이 사원  -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 흑풍마녀의 묵시</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="muksi"name="muksi" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="muksi_price" name="muksi_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 흑풍마녀의 흑참</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="hukcham"name="hukcham" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="hukcham_price"  name="hukcham_price" class="writeprice" placeholder="금액">
					</div>
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 흑풍마녀의 암각</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="amgak"name="amgak" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="amgak_price"  name="amgak_price" class="writeprice" placeholder="금액">
					</div>
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 흑풍강</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="vt_gang"name="vt_gang" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_gang_price"  name="vt_gang_price" class="writeprice" placeholder="금액">
					</div>
					
					<!-- 태천왕릉 4네임드 -->
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 태천명왕의 시익</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="siik"name="siik" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="siik_price" name="siik_price" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 태천명왕의 늑골</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="nukgol"name="nukgol" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="nukgol_price" name="nukgol_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 태천명왕의 광배</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="gwangbae"name="gwangbae" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="gwangbae_price" name="gwangbae_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 태천강</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_gang"name="tw_gang" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_gang_price" name="tw_gang_price" class="writeprice" placeholder="금액">
					</div>

	
					
					<!-- 적몽의 비원 4네임드 미구현인듯  -->
			<!-- 		<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  name="" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"name="" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  name="" class="writeprice" placeholder="금액">
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