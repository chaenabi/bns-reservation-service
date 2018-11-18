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
						
					<div class="team_raid"> 레이드종류 : 검은 마천루 <label class="radio"> <input
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
								<input type="checkbox" value="bs_tujang_ring1"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="e"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tujang_ring2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="f" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tuji_ring1"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="e"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tuji_ring2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="f" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tuhon_ring1"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="e"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tuhon_ring2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="f" class="writeprice" placeholder="금액">
					</div>
					

					<!-- 소용돌이 사원  -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 1계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_gon_tujang" > <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="c"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 2계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_sun_tujang"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="d"  class="writeprice" placeholder="금액">
					</div>
							
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 1계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_gon_tuji"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="k" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 2계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_sun_tuji"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="k" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 1계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_gon_tuhon"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="k" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 2계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_sun_tuhon"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="k" class="writeprice" placeholder="금액">
					</div>
					
					<!-- 태천왕릉  -->
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tujang_ring1"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="e"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tujang_ring2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="f" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tuji_ring1"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="e"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tuji_ring2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="f" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tuhon_ring1"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="e"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tuhon_ring2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="f" class="writeprice" placeholder="금액">
					</div>
					
					
					<!-- 적몽의 비원  -->
					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="g" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="h"  class="writeprice" placeholder="금액">
					</div>
					
					




					<!-- 적몽의 비원  -->
					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="o"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="p" class="writeprice" placeholder="금액">
					</div>	

					
					
					<div class="info">
							<a> 등록할 팀의 레이드 종류를 선택해주세요 !</a>
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
								<input type="checkbox" value="bs_tujang_earring1"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="u"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tujang_earring2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="v"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tuji_earring1"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="u"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tuji_earring2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="v"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tuhon_earring1"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="u"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tuhon_earring2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="v"  class="writeprice" placeholder="금액">
					</div>

					<!-- 소용돌이 사원  -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 1계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_tujang1"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="s" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 2계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_tujang2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="t" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 1계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_tuji1"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="t" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 2계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_tuji2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="t" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 1계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_tuhon1"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="t" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 2계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_tuhon2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="t" class="writeprice" placeholder="금액">
					</div>
					
			
					
					<!-- 태천왕릉  -->
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tujang_earring1"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="u"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tujang_earring2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="v"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tuji_earring1"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="u"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tuji_earring2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="v"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tuhon_earring1"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="u"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tuhon_earring2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="v"  class="writeprice" placeholder="금액">
					</div>
					
					<!-- 적몽의 비원  -->
					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="w" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="x"  class="writeprice" placeholder="금액">
					</div>
					
					




					
					<!-- 적몽의 비원  -->
					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="e0"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="f0" class="writeprice" placeholder="금액">
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
								<input type="checkbox" value="bs_tujang_ring3"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="e"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tujang_ring4"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="f" class="writeprice" placeholder="금액">
					</div>
				
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tuji_ring3"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="e"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tuji_ring4"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="f" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tuhon_ring3"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="e"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tuhon_ring4"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="f" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tujang_earring3"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="u"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tujang_earring4"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="v"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tuji_earring3"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="u"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투지귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tuji_earring4"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="v"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tuhon_earring3"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="u"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 투혼귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_tuhon_earring4"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="v"  class="writeprice" placeholder="금액">
					</div>

					<!-- 소용돌이 사원  -->
									<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 1계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_tujang3"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="s" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 2계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_tujang4"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="t" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 1계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_tuji3"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="t" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 2계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_tuji4"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="t" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 1계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_tuhon3"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="t" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 2계열 악세</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_tuhon4"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="t" class="writeprice" placeholder="금액">
					</div>
										<!-- 소용돌이 사원  -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 1계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_gon_tujang2" > <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="c"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투쟁 2계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_sun_tujang2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="d"  class="writeprice" placeholder="금액">
					</div>
							
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 1계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_gon_tuji2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="k" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투지 2계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_sun_tuji2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="k" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 1계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_gon_tuhon2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="k" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 투혼 2계열 비공패</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_sun_tuhon2"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="k" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item2" >
						<div class="sale-item-name" >
							<a> 신공석</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="singongsuk"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="t" class="writeprice" placeholder="금액">
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
								<input type="checkbox" value="tw_tujang_ring3"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="e"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tujang_ring4"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="f" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tuji_ring3"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="e"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tuji_ring4"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="f" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tuhon_ring3"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="e"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tuhon_ring4"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="f" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tujang_earring3"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="u"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투쟁귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tujang_earring4"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="v"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tuji_earring3"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="u"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투지귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tuji_earring4"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="v"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tuhon_earring3"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="u"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 투혼귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_tuhon_earring4"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="v"  class="writeprice" placeholder="금액">
					</div>
					
				


					
					<!-- 적몽의 비원  -->
					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="u0" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
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
								<input type="checkbox" value="hukrin"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="w0" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 촉마왕의 격골</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="gyukgol"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="x0" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 촉마왕의 진기</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="ginki"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="x0" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 촉마강</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="bs_gang"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="x0" class="writeprice" placeholder="금액">
					</div>
				
					<!-- 소용돌이 사원  -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 흑풍마녀의 묵시</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="muksi"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="y0" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 흑풍마녀의 흑참</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="hukcham"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="z0"  class="writeprice" placeholder="금액">
					</div>
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 흑풍마녀의 암각</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="amgak"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="z0"  class="writeprice" placeholder="금액">
					</div>
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 흑풍강</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="vt_gang"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="z0"  class="writeprice" placeholder="금액">
					</div>
					
					<!-- 태천왕릉  -->
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 태천명왕의 시익</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="siik"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="a1" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 태천명왕의 늑골</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="nukgol"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="b1" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 태천명왕의 광배</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="gwangbae"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="b1" class="writeprice" placeholder="금액">
					</div>
					
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 태천강</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="tw_gang"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="b1" class="writeprice" placeholder="금액">
					</div>

	
					
					<!-- 적몽의 비원 4네임드 미구현인듯  -->
			<!-- 		<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  class="writeprice" placeholder="금액">
					</div>	 -->

					
						<div class="info2" style="display:none;">
							<a> 등록할 팀의 레이드 종류를 선택해주세요 !</a>
						</div>
						
					<br>
					<br>
					<br> 
					
					<input type="submit" value="팀등록하기">
				</div>

			</div>


		</div>

	</div>
</form>


<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/sale_register.js"></script>

</body>
</html>