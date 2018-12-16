<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/bootstrap/bootstrap.css"/>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/css/sale_register.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/checkbox/checkbox_radio_img_sprite.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${pageContext.request.contextPath}/resource/css/datetimepicker/bootstrap-datetimepicker.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/jquery/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resource/js/datetimepicker/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/js/datetimepicker/ko.js"></script>
<script src="${pageContext.request.contextPath}/resource/js/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
</head>
<body>

	<video autoplay loop id="background_video" muted>
		<source
			src="${pageContext.request.contextPath}/resource/assets/video/vi3.mp4"
			type="video/mp4">
	</video>
	<form action="../../TeamServ" method="post" id="sale_register">
	 <input type="hidden" name="action" value="team_reg"/> 
	<div class="container">
		<div class="content">

			<div class="mainform">

				<h2>등록</h2>
				<hr>
				<div class="team_register">
					<input type="hidden" id="id"  name="id" 
					value="<%=session.getAttribute("id")%>"/>
					<a>팀명 : </a> <input type="text" id="team_name" name="team_name" placeholder="6글자이내">
					<input type="button" id="multi_ck" value="중복체크"> &nbsp; 
				<label for="go_date" class="col-xs-2 control-label">출발 날짜</label>
				<div class="col-xs-8" style="display: inline-block;">
					<input type="text" class="form-control" id="go_date"
						name="go_date">
					<script>
						$("#go_date").datetimepicker({
							locale : 'ko',
							format : 'YY/MM/DD',
							showClose : true,
							showClear : true,
							showTodayButton : true,
							stepping : 30,
							//defaultDate : new Date(),
							sideBySide : true
						});
					</script>
				</div>
			
					

			
					<label for="go_time" class="col-xs-2 control-label">출발 시간</label>
				
				<div class="col-xs-8" style="display: inline-block;">
					<input type="text" class="form-control" id="go_time"
						name="go_time">
					<script>
						$("#go_time").datetimepicker({
							locale : 'ko',
							format : 'HH:mm'
						});
					</script>
				</div>

			</div>
									
									
									
									
					<div class="team_raid">
					레이드 종류 : 검은 마천루
					<label class="radio">
					<input type="radio" name="raid_type" id="black" value="검은 마천루"  required> <i class="icon-radio"></i>
					</label>
					
					 소용돌이 사원 <label class="radio"> <input type="radio"
						name="raid_type" id="vortex"  value="소용돌이 사원"  required> <i class="icon-radio"></i>
					</label> 태천왕릉 <label class="radio" > <input type="radio"
						name="raid_type"  id="twilight"  value="태천왕릉" required> <i class="icon-radio"></i>
					</label> 적몽의 비원 <label class="radio" > <input type="radio"
						name="raid_type"  id="reddream"  value="적몽의 비원" required> <i
						class="icon-radio"></i>
					</label>

				</div>
				<hr class="hr">
				<h5>판매할 아이템</h5>
				<br>
				<div class="sales">
				
				
					<div class="named_class">
						<a class="named"> 천독룡 
							<label class="checkbox">
								<input type="checkbox" id="bs_1st" name="bs_1st"value="1"> <i class="icon-checkbox"></i>
							</label> </a>
					</div>
					<div class="named_class">
					<a class="named2"> 초열혹한검
							<label class="checkbox">
								<input type="checkbox" id="vt_1st" name="vt_1st"value="1"> <i class="icon-checkbox"></i>
							</label> </a>
					</div>
					<div class="named_class">
					<a class="named3"> 결계천수 
							<label class="checkbox">
								<input type="checkbox" id="tw_1st" name="tw_1st"value="1"> <i class="icon-checkbox"></i>
							</label> </a>	
					</div>
					<div class="named_class">
					<a class="named4"> 기미접수 
							<label class="checkbox">
								<input type="checkbox" id="rd_1st" name="rd_1st"value="1"> <i class="icon-checkbox"></i>
							</label> </a>	
					</div>
					
					
					<!-- 검은마천루 1네임드  -->
				
					<div class="bs-sale-item1">
						<div class="sale-item-name">
							<a>투쟁반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tujang_ring1" name="bs_tujang_ring1"value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tujang_ring1_price"  name="bs_tujang_ring1_price" class="writeprice" placeholder="금액">
						
					</div>

					<div class="bs-sale-item1">
						<div class="sale-item-name">
							<a>투쟁반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tujang_ring2" name="bs_tujang_ring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tujang_ring2_price" name="bs_tujang_ring2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="bs-sale-item1">
						<div class="sale-item-name">
							<a>투지반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuji_ring1"  name="bs_tuji_ring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tuji_ring1_price" name="bs_tuji_ring1_price"  class="writeprice" placeholder="금액">
					</div>

					<div class="bs-sale-item1">
						<div class="sale-item-name">
							<a>투지반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuji_ring2" name="bs_tuji_ring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="bs_tuji_ring2_price" name="bs_tuji_ring2_price"  class="writeprice" placeholder="금액">
					</div>
					
					<div class="bs-sale-item1">
						<div class="sale-item-name">
							<a>투혼반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuhon_ring1"  name="bs_tuhon_ring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tuhon_ring1_price"  name="bs_tuhon_ring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="bs-sale-item1">
						<div class="sale-item-name">
							<a>투혼반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuhon_ring2"name="bs_tuhon_ring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="bs_tuhon_ring2_price" name="bs_tuhon_ring2_price" class="writeprice" placeholder="금액">

					</div>

					<!-- 소용돌이 사원 1네임드 -->
					<div class="vt-sale-item1">
						<div class="sale-item-name">
							<a>곤륜비공패 투쟁</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_gon_tujang"name="vt_gon_tujang" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_gon_tujang_price"  name="vt_gon_tujang_price" class="writeprice" placeholder="금액">
					</div>

					<div class="vt-sale-item1">
						<div class="sale-item-name">
							<a>선륜비공패 투쟁</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_sun_tujang"name="vt_sun_tujang" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_sun_tujang_price"  name="vt_sun_tujang_price" class="writeprice" placeholder="금액">
					</div>
							
					<div class="vt-sale-item1">
						<div class="sale-item-name">
							<a>곤륜비공패 투지</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_gon_tuji"name="vt_gon_tuji" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt_gon_tuji_price" name="vt_gon_tuji_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="vt-sale-item1">
						<div class="sale-item-name">
							<a>선륜비공패 투지</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_sun_tuji"name="vt_sun_tuji" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt_sun_tuji_price" name="vt_sun_tuji_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="vt-sale-item1">
						<div class="sale-item-name">
							<a>곤륜비공패 투혼</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_gon_tuhon"name="vt_gon_tuhon" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt_gon_tuhon_price" name="vt_gon_tuhon_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="vt-sale-item1">
						<div class="sale-item-name">
							<a>선륜비공패 투혼</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_sun_tuhon"name="vt_sun_tuhon" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt_sun_tuhon_price" name="vt_sun_tuhon_price" class="writeprice" placeholder="금액">
					</div>
					
					<!-- 태천왕릉 1네임드 -->
					<div class="tw-sale-item1">
						<div class="sale-item-name">
							<a>투쟁반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"id="tw_tujang_ring1"name="tw_tujang_ring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tujang_ring1_price"  name="tw_tujang_ring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="tw-sale-item1">
						<div class="sale-item-name">
							<a>투쟁반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tujang_ring2"name="tw_tujang_ring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="tw_tujang_ring2_price" name="tw_tujang_ring2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="tw-sale-item1">
						<div class="sale-item-name">
							<a>투지반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuji_ring1"name="tw_tuji_ring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tuji_ring1_price"  name="tw_tuji_ring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="tw-sale-item1">
						<div class="sale-item-name">
							<a>투지반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="tw_tuji_ring2" name="tw_tuji_ring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="tw_tuji_ring2_price" name="tw_tuji_ring2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="tw-sale-item1">
						<div class="sale-item-name">
							<a>투혼반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuhon_ring1"name="tw_tuhon_ring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tuhon_ring1_price"  name="tw_tuhon_ring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="tw-sale-item1">
						<div class="sale-item-name">
							<a>투혼반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuhon_ring2"name="tw_tuhon_ring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="tw_tuhon_ring2_price" name="tw_tuhon_ring2_price" class="writeprice" placeholder="금액">
					</div>
					
					
					<!-- 적몽의 비원 1네임드 -->
					<div class="rd-sale-item1">
						<div class="sale-item-name">
							<a>사화비공패 투쟁</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="rd_sa_tujang"  name="rd_sa_tujang" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="rd_sa_tujang_price" name="rd_sa_tujang_price" class="writeprice" placeholder="금액">
					</div>

					<div class="rd-sale-item1">
						<div class="sale-item-name">
							<a>몽화비공패 투쟁</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="rd_mo_tujang" name="rd_mo_tujang" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="rd_mo_tujang_price"  name="rd_mo_tujang_price" class="writeprice" placeholder="금액">
					</div>
					
					
					<div class="rd-sale-item1">
						<div class="sale-item-name">
							<a>사화비공패 투지</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="rd_sa_tuji" name="rd_sa_tuji" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="rd_sa_tuji_price"  name="rd_sa_tuji_price" class="writeprice" placeholder="금액">
					</div>

					<div class="rd-sale-item1">
						<div class="sale-item-name">
							<a>몽화비공패 투지</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="rd_mo_tuji" name="rd_mo_tuji" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="rd_mo_tuji_price" name="rd_mo_tuji_price" class="writeprice" placeholder="금액">
					</div>	

					<div class="rd-sale-item1">
						<div class="sale-item-name">
							<a>사화비공패 투혼</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="rd_sa_tuhon" name="rd_sa_tuhon" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="rd_sa_tuhon_price"  name="rd_sa_tuhon_price" class="writeprice" placeholder="금액">
					</div>

					<div class="rd-sale-item1">
						<div class="sale-item-name">
							<a>몽화비공패 투혼</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="rd_mo_tuhon" name="rd_mo_tuhon" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="rd_mo_tuhon_price" name="rd_mo_tuhon_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="named_class">
					<a class="named"> 사안장군 <label class="checkbox">
								<input type="checkbox" id="bs_2nd" name="bs_2nd"value="2"> <i class="icon-checkbox"></i>
							</label> </a>
					</div>
					<div class="named_class">
					<a class="named2"> 초마령 <label class="checkbox">
								<input type="checkbox" id="vt_2nd" name="vt_2nd"value="2"> <i class="icon-checkbox"></i>
							</label></a>
					</div>
					
					<div class="named_class">
					<a class="named3"> 섬천대장군<label class="checkbox">
								<input type="checkbox" id="tw_2nd" name="tw_2nd"value="2"> <i class="icon-checkbox"></i>
							</label> </a>
					</div>
					<div class="named_class">	
					<a class="named4"> 진교악<label class="checkbox">
								<input type="checkbox" id="rd_2nd" name="rd_2nd"value="2"> <i class="icon-checkbox"></i>
							</label> </a>	
					</div>
					
					
					<!-- 검은마천루 2네임드 -->
					
					<div class="bs-sale-item2">
						<div class="sale-item-name">
							<a>투쟁귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tujang_earring1"name="bs_tujang_earring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tujang_earring1_price"  name="bs_tujang_earring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="bs-sale-item2">
						<div class="sale-item-name">
							<a>투쟁귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tujang_earring2"name="bs_tujang_earring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="bs_tujang_earring2_price"  name="bs_tujang_earring2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="bs-sale-item2">
						<div class="sale-item-name">
							<a>투지귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuji_earring1"name="bs_tuji_earring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tuji_earring1_price"  name="bs_tuji_earring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="bs-sale-item2">
						<div class="sale-item-name">
							<a>투지귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuji_earring2" name="bs_tuji_earring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="bs_tuji_earring2_price"  name="bs_tuji_earring2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="bs-sale-item2">
						<div class="sale-item-name">
							<a>투혼귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuhon_earring1"name="bs_tuhon_earring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tuhon_earring1_price"  name="bs_tuhon_earring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="bs-sale-item2">
						<div class="sale-item-name">
							<a>투혼귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuhon_earring2"name="bs_tuhon_earring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="bs_tuhon_earring2_price"  name="bs_tuhon_earring2_price" class="writeprice" placeholder="금액">
					</div>

					<!-- 소용돌이 사원 2네임드 -->
					<div class="vt-sale-item2">
						<div class="sale-item-name">
							<a>투쟁 목걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_tujang1"name="vt_tujang1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tujang1_price" name="vt_tujang1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="vt-sale-item2">
						<div class="sale-item-name">
							<a>투쟁 목걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="vt_tujang2"name="vt_tujang2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tujang2_price" name="vt_tujang2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="vt-sale-item2">
						<div class="sale-item-name">
							<a>투지 목걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="vt_tuji1"name="vt_tuji1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tuji1_price" name="vt_tuji1_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="vt-sale-item2">
						<div class="sale-item-name">
							<a>투지 목걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_tuji2" name="vt_tuji2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tuji2_price" name="vt_tuji2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="vt-sale-item2">
						<div class="sale-item-name">
							<a>투혼 목걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="vt_tuhon1"name="vt_tuhon1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tuhon1_price" name="vt_tuhon1_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="vt-sale-item2">
						<div class="sale-item-name">
							<a>투혼 목걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="vt_tuhon2" name="vt_tuhon2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tuhon2_price" name="vt_tuhon2_price" class="writeprice" placeholder="금액">
					</div>
					
			
					
					<!-- 태천왕릉  2네임드-->
					<div class="tw-sale-item2">
						<div class="sale-item-name">
							<a>투쟁귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="tw_tujang_earring1"name="tw_tujang_earring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tujang_earring1_price"  name="tw_tujang_earring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="tw-sale-item2">
						<div class="sale-item-name">
							<a>투쟁귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tujang_earring2"name="tw_tujang_earring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="tw_tujang_earring2_price"  name="tw_tujang_earring2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="tw-sale-item2">
						<div class="sale-item-name">
							<a>투지귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuji_earring1"name="tw_tuji_earring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tuji_earring1_price"  name="tw_tuji_earring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="tw-sale-item2">
						<div class="sale-item-name">
							<a>투지귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuji_earring2"name="tw_tuji_earring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="tw_tuji_earring2_price"  name="tw_tuji_earring2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="tw-sale-item2">
						<div class="sale-item-name">
							<a>투혼귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuhon_earring1"name="tw_tuhon_earring1" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tuhon_earring1_price"  name="tw_tuhon_earring1_price" class="writeprice" placeholder="금액">
					</div>

					<div class="tw-sale-item2">
						<div class="sale-item-name">
							<a>투혼귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuhon_earring2"name="tw_tuhon_earring2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="tw_tuhon_earring2_price"  name="tw_tuhon_earring2_price" class="writeprice" placeholder="금액">
					</div>
					
					<!-- 적몽의 비원 2네임드 -->
					<div class="rd-sale-item2">
						<div class="sale-item-name">
							<a>투쟁목걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="rd_tujang1_neck" name="rd_tujang1_neck" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="rd_tujang1_neck_price" name="rd_tujang1_neck_price" class="writeprice" placeholder="금액">
					</div>

					<div class="rd-sale-item2">
						<div class="sale-item-name">
							<a>투쟁목걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="rd_tujang2_neck" name="rd_tujang2_neck" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="rd_tujang2_neck_price"  name="rd_tujang2_neck_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="rd-sale-item2">
						<div class="sale-item-name">
							<a>투지목걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="rd_tuji1_neck" name="rd_tuji1_neck" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="rd_tuji1_neck_price"  name="rd_tuji1_neck_price" class="writeprice" placeholder="금액">
					</div>

					<div class="rd-sale-item2">
						<div class="sale-item-name">
							<a>투지목걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="rd_tuji2_neck" name="rd_tuji2_neck" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="rd_tuji2_neck_price" name="rd_tuji2_neck_price" class="writeprice" placeholder="금액">
					</div>	
					
					<div class="rd-sale-item2">
						<div class="sale-item-name">
							<a>투혼목걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="rd_tuhon1_neck" name="rd_tuhon1_neck" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="rd_tuhon1_neck_price"  name="rd_tuhon1_neck_price" class="writeprice" placeholder="금액">
					</div>

					<div class="rd-sale-item2">
						<div class="sale-item-name">
							<a>투혼목걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="rd_tuhon2_neck" name="rd_tuhon2_neck" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="rd_tuhon2_neck_price" name="rd_tuhon2_neck_price" class="writeprice" placeholder="금액">
					</div>	
					

						<div class="info" style="padding-top: 30px;">
							<a> 먼저 등록할 팀의 레이드 종류를 선택해주세요 !</a>
						</div>

					<div class="named_class">
					<a class="named">모순장군<label class="checkbox">
								<input type="checkbox" id="bs_3rd" name="bs_3rd"value="3"> <i class="icon-checkbox"></i>
							</label> </a>
					</div>
					<div class="named_class">
					<a class="named2">적패왕<label class="checkbox">
								<input type="checkbox" id="vt_3rd" name="vt_3rd"value="3"> <i class="icon-checkbox"></i>
							</label></a>
					</div>
					<div class="named_class">
					<a class="named3">폭염갈기<label class="checkbox">
								<input type="checkbox" id="tw_3rd" name="tw_3rd"value="3"> <i class="icon-checkbox"></i>
							</label> </a>
					</div>
					<div class="named_class">	
					<a class="named4">사화마녀<label class="checkbox">
								<input type="checkbox" id="rd_3rd" name="rd_3rd"value="3"> <i class="icon-checkbox"></i>
							</label></a>		
					</div>
				
					
					<!-- 검은마천루 3네임드  -->
					<div class="bs-sale-item3">
						<div class="sale-item-name">
							<a>투쟁반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tujang_ring3"name="bs_tujang_ring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tujang_ring3_price"  name="bs_tujang_ring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="bs-sale-item3">
						<div class="sale-item-name">
							<a>투쟁반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tujang_ring4" name="bs_tujang_ring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="bs_tujang_ring4_price" name="bs_tujang_ring4_price" class="writeprice" placeholder="금액">
					</div>
				
					<div class="bs-sale-item3">
						<div class="sale-item-name">
							<a>투지반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuji_ring3" name="bs_tuji_ring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tuji_ring3_price"  name="bs_tuji_ring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="bs-sale-item3">
						<div class="sale-item-name">
							<a>투지반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="bs_tuji_ring4" name="bs_tuji_ring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="bs_tuji_ring4_price" name="bs_tuji_ring4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="bs-sale-item3">
						<div class="sale-item-name">
							<a>투혼반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuhon_ring3" name="bs_tuhon_ring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tuhon_ring3_price"  name="bs_tuhon_ring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="bs-sale-item3">
						<div class="sale-item-name">
							<a>투혼반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuhon_ring4" name="bs_tuhon_ring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="bs_tuhon_ring4_price" name="bs_tuhon_ring4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="bs-sale-item3">
						<div class="sale-item-name">
							<a>투쟁귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tujang_earring3" name="bs_tujang_earring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tujang_earring3_price"  name="bs_tujang_earring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="bs-sale-item3">
						<div class="sale-item-name">
							<a>투쟁귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"id="bs_tujang_earring4"  name="bs_tujang_earring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="bs_tujang_earring4_price"  name="bs_tujang_earring4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="bs-sale-item3">
						<div class="sale-item-name">
							<a>투지귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuji_earring3" name="bs_tuji_earring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tuji_earring3_price"  name="bs_tuji_earring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="bs-sale-item3">
						<div class="sale-item-name">
							<a>투지귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuji_earring4" name="bs_tuji_earring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="bs_tuji_earring4_price"  name="bs_tuji_earring4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="bs-sale-item3">
						<div class="sale-item-name">
							<a>투혼귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuhon_earring3" name="bs_tuhon_earring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_tuhon_earring3_price"  name="bs_tuhon_earring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="bs-sale-item3">
						<div class="sale-item-name">
							<a>투혼귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_tuhon_earring4" name="bs_tuhon_earring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="bs_tuhon_earring4_price"  name="bs_tuhon_earring4_price" class="writeprice" placeholder="금액">
					</div>

					<!-- 소용돌이 사원  3네임드-->
					<div class="vt-sale-item3">
						<div class="sale-item-name">
							<a>투쟁 목걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_tujang3" name="vt_tujang3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tujang3_price" name="vt_tujang3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="vt-sale-item3">
						<div class="sale-item-name">
							<a>투쟁 목걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_tujang4"  name="vt_tujang4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tujang4_price" name="vt_tujang4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="vt-sale-item3">
						<div class="sale-item-name">
							<a>투지 목걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_tuji3"  name="vt_tuji3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tuji3_price" name="vt_tuji3_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="vt-sale-item3">
						<div class="sale-item-name">
							<a>투지 목걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_tuji4" name="vt_tuji4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tuji4_price" name="vt_tuji4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="vt-sale-item3">
						<div class="sale-item-name">
							<a>투혼 목걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_tuhon3"  name="vt_tuhon3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tuhon3_price" name="vt_tuhon3_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="vt-sale-item3">
						<div class="sale-item-name">
							<a>투혼 목걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_tuhon4" name="vt_tuhon4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_tuhon4_price" name="vt_tuhon4_price" class="writeprice" placeholder="금액">
					</div>

					<div class="vt-sale-item3">
						<div class="sale-item-name">
							<a>곤륜비공패 투쟁</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_gon_tujang2"  name="vt_gon_tujang2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_gon_tujang2_price"  name="vt_gon_tujang2_price" class="writeprice" placeholder="금액">
					</div>

					<div class="vt-sale-item3">
						<div class="sale-item-name">
							<a>선륜비공패 투쟁</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id=vt_sun_tujang2  name="vt_sun_tujang2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_sun_tujang2_price"  name="vt_sun_tujang2_price" class="writeprice" placeholder="금액">
					</div>
							
					<div class="vt-sale-item3">
						<div class="sale-item-name">
							<a>곤륜비공패 투지</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_gon_tuji2"  name="vt_gon_tuji2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt_gon_tuji2_price" name="vt_gon_tuji2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="vt-sale-item3">
						<div class="sale-item-name">
							<a>선륜비공패 투지</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_sun_tuji2"  name="vt_sun_tuji2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt_sun_tuji2_price" name="vt_sun_tuji2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="vt-sale-item3">
						<div class="sale-item-name">
							<a>곤륜비공패 투혼</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="vt_gon_tuhon2"  name="vt_gon_tuhon2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt_gon_tuhon2_price" name="vt_gon_tuhon2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="vt-sale-item3">
						<div class="sale-item-name">
							<a>선륜비공패 투혼</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="vt_sun_tuhon2" name="vt_sun_tuhon2" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="vt_sun_tuhon2_price" name="vt_sun_tuhon2_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="vt-sale-item3" >
						<div class="sale-item-name" >
							<a> 신공석</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="singongsuk"  name="singongsuk" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="singongsuk_price" name="singongsuk_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="vt-sale-item3" >
						<div class="sale-item-name" style="height:26px;">
						</div>
					</div>

					
					<!-- 태천왕릉 3네임드 -->
		     		<div class="tw-sale-item3">
						<div class="sale-item-name">
							<a>투쟁반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tujang_ring3"  name="tw_tujang_ring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tujang_ring3_price"  name="tw_tujang_ring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="tw-sale-item3">
						<div class="sale-item-name">
							<a>투쟁반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tujang_ring4" name="tw_tujang_ring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="tw_tujang_ring4_price" name="tw_tujang_ring4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="tw-sale-item3">
						<div class="sale-item-name">
							<a>투지반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuji_ring3" name="tw_tuji_ring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tuji_ring3_price"  name="tw_tuji_ring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="tw-sale-item3">
						<div class="sale-item-name">
							<a>투지반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuji_ring4" name="tw_tuji_ring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="tw_tuji_ring4_price" name="tw_tuji_ring4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="tw-sale-item3">
						<div class="sale-item-name">
							<a>투혼반지 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuhon_ring3" name="tw_tuhon_ring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tuhon_ring3_price"  name="tw_tuhon_ring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="tw-sale-item3">
						<div class="sale-item-name">
							<a>투혼반지 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuhon_ring4" name="tw_tuhon_ring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="tw_tuhon_ring4_price" name="tw_tuhon_ring4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="tw-sale-item3">
						<div class="sale-item-name">
							<a>투쟁귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tujang_earring3" name="tw_tujang_earring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tujang_earring3_price"  name="tw_tujang_earring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="tw-sale-item3">
						<div class="sale-item-name">
							<a>투쟁귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tujang_earring4" name="tw_tujang_earring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="tw_tujang_earring4_price"  name="tw_tujang_earring4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="tw-sale-item3">
						<div class="sale-item-name">
							<a>투지귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuji_earring3" name="tw_tuji_earring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tuji_earring3_price"  name="tw_tuji_earring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="tw-sale-item3">
						<div class="sale-item-name">
							<a>투지귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuji_earring4" name="tw_tuji_earring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="tw_tuji_earring4_price"  name="tw_tuji_earring4_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="tw-sale-item3">
						<div class="sale-item-name">
							<a>투혼귀걸이 1계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_tuhon_earring3" name="tw_tuhon_earring3" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_tuhon_earring3_price"  name="tw_tuhon_earring3_price" class="writeprice" placeholder="금액">
					</div>

					<div class="tw-sale-item3">
						<div class="sale-item-name">
							<a>투혼귀걸이 2계열</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"id="tw_tuhon_earring4"  name="tw_tuhon_earring4" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="tw_tuhon_earring4_price"  name="tw_tuhon_earring4_price" class="writeprice" placeholder="금액">
					</div>
					
					
					<!-- 적몽의 비원 3네임드 -->
					<div class="rd-sale-item3">
						<div class="sale-item-name">
							<a>사화마녀의 포엽</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="poyup" name="poyup" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="poyup_price" name="poyup_price" class="writeprice" placeholder="금액">
					</div>

					<div class="rd-sale-item3">
						<div class="sale-item-name">
							<a>사화마녀의 자모</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="jamo" name="jamo"  value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="jamo_price" name="jamo_price" class="writeprice" placeholder="금액">				
					</div>	
					
					<div class="rd-sale-item3">
						<div class="sale-item-name">
							<a>사화마녀의 잎맥</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ipmak" name="ipmak" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="ipmak_price" name="ipmak_price" class="writeprice" placeholder="금액">
					</div>

					<div class="rd-sale-item3">
						<div class="sale-item-name">
							<a>사화강</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="rd_gang" name="rd_gang" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="rd_gang_price" name="rd_gang_price" class="writeprice" placeholder="금액">				
					</div>	
					
					<div class="named_class">
					<a class="named"> 촉마왕 <label class="checkbox">
								<input type="checkbox" id="bs_4th" name="bs_4th"value="4"> <i class="icon-checkbox"></i>
							</label></a>
					</div>
					<div class="named_class">
					<a class="named2"> 흑풍마녀<label class="checkbox">
								<input type="checkbox" id="vt_4th" name="vt_4th"value="4"> <i class="icon-checkbox"></i>
							</label></a>
					</div>
					<div class="named_class">
					<a class="named3"> 태천명왕<label class="checkbox">
								<input type="checkbox" id="tw_4th" name="tw_4th"value="4"> <i class="icon-checkbox"></i>
							</label> </a>	
					</div>
					
					
					
					<!-- 검은마천루 4네임드 -->
					<div class="bs-sale-item4">
						<div class="sale-item-name">
							<a>촉마왕의 흑린</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="hukrin" name="hukrin" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="hukrin_price" name="hukrin_price" class="writeprice" placeholder="금액">
					</div>

					<div class="bs-sale-item4">
						<div class="sale-item-name">
							<a>촉마왕의 격골</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="gyukgol" name="gyukgol" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="gyukgol_price" name="gyukgol_price" class="writeprice" placeholder="금액">
					</div>

					<div class="bs-sale-item4">
						<div class="sale-item-name">
							<a>촉마왕의 진기</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="ginki"name="ginki" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="ginki_price" name="ginki_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="bs-sale-item4">
						<div class="sale-item-name">
							<a>촉마강</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="bs_gang"name="bs_gang" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="bs_gang_price" name="bs_gang_price" class="writeprice" placeholder="금액">
					</div>
				
					<!-- 소용돌이 사원  -->
					<div class="vt-sale-item4">
						<div class="sale-item-name">
							<a>흑풍마녀의 묵시</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="muksi"name="muksi" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="muksi_price" name="muksi_price" class="writeprice" placeholder="금액">
					</div>
					<div class="vt-sale-item4">
						<div class="sale-item-name">
							<a>흑풍마녀의 흑참</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="hukcham"name="hukcham" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="hukcham_price"  name="hukcham_price" class="writeprice" placeholder="금액">
					</div>
					<div class="vt-sale-item4">
						<div class="sale-item-name">
							<a>흑풍마녀의 암각</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="amgak"name="amgak" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="amgak_price"  name="amgak_price" class="writeprice" placeholder="금액">
					</div>
					<div class="vt-sale-item4">
						<div class="sale-item-name">
							<a>흑풍강</a>
						</div>
						<label class="checkbox">
								<input type="checkbox"  id="vt_gang"name="vt_gang" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="vt_gang_price"  name="vt_gang_price" class="writeprice" placeholder="금액">
					</div>
					
					<!-- 태천왕릉 4네임드 -->
					<div class="tw-sale-item4">
						<div class="sale-item-name">
							<a>태천명왕의 시익</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="siik"name="siik" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="siik_price" name="siik_price" class="writeprice" placeholder="금액">
					</div>

					<div class="tw-sale-item4">
						<div class="sale-item-name">
							<a>태천명왕의 늑골</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="nukgol"name="nukgol" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="nukgol_price" name="nukgol_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="tw-sale-item4">
						<div class="sale-item-name">
							<a>태천명왕의 광배</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="gwangbae"name="gwangbae" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="gwangbae_price" name="gwangbae_price" class="writeprice" placeholder="금액">
					</div>
					
					<div class="tw-sale-item4">
						<div class="sale-item-name">
							<a>태천강</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" id="tw_gang"name="tw_gang" value="0"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="tw_gang_price" name="tw_gang_price" class="writeprice" placeholder="금액">
					</div>

	

					
						<div class="info2" style="display:none;">
							<a>등록할 팀의 레이드 종류를 선택해주세요 !</a>
						</div>
						
				
					<div style=" height: 40px; padding-top: 20px; display: inline-block;" >
					<input type="button" class="btn_submit" id="btn_submit" value="팀등록하기">
					</div>
				</div>

			</div>


		</div>

	</div>
</form>


<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/sale_register.js"></script>

</body>
</html>

