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
						name="raid_type"  id="reddream"  value="적몽의 비원" disabled="disabled"> <i
						class="icon-radio"></i>
					</label>

				</div>
				<hr>
				
				<h3 style="margin:10px;">판매할 아이템</h3>
				<hr>
				
				
				
				<div class="sales">
				
				
				
					<a class="named"> 천독룡 </a>
					<a class="named2"> 초열혹한검</a>
					<a class="named3"> 결계천수 </a>	
					<a class="named4"> ??? </a>		 <br>
					
					
					
					<!-- 검은마천루  -->
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="a" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="b" class="writeprice" placeholder="금액">
					</div>

					<!-- 소용돌이 사원  -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)" > <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="c"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="d"  class="writeprice" placeholder="금액">
					</div>
					
					<!-- 태천왕릉  -->
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="e"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
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
					
					


					<br>

										<!-- 검은마천루  -->
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="i"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="j" class="writeprice" placeholder="금액">
					</div>

					<!-- 소용돌이 사원  -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="k" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"id="l"  class="writeprice" placeholder="금액">
					</div>
					
					<!-- 태천왕릉  -->
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="m" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="n"  class="writeprice" placeholder="금액">
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
					
					<a class="named"> 천독룡 </a>
					<a class="named2"> 초열혹한검</a>
					<a class="named3"> 결계천수 </a>	
					<a class="named4"> ??? </a>		 <br>
					
					
					
					<!-- 검은마천루  -->
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="q"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="r" class="writeprice" placeholder="금액">
					</div>

					<!-- 소용돌이 사원  -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="s" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="t" class="writeprice" placeholder="금액">
					</div>
					
					<!-- 태천왕릉  -->
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="u"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
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
					
					


					<br>

										<!-- 검은마천루  -->
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="y" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="z" class="writeprice" placeholder="금액">
					</div>

					<!-- 소용돌이 사원  -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="a0" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="b0" class="writeprice" placeholder="금액">
					</div>
					
					<!-- 태천왕릉  -->
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="c0" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="d0" class="writeprice" placeholder="금액">
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


					<a class="named"> 천독룡 </a>
					<a class="named2"> 초열혹한검</a>
					<a class="named3"> 결계천수 </a>	
					<a class="named4"> ??? </a>		 <br>
					
					
					
					<!-- 검은마천루  -->
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="g0" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="h0" class="writeprice" placeholder="금액">
					</div>

					<!-- 소용돌이 사원  -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="i0" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="j0" class="writeprice" placeholder="금액">
					</div>
					
					<!-- 태천왕릉  -->
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="k0" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="l0"  class="writeprice" placeholder="금액">
					</div>
					
					<!-- 적몽의 비원  -->
					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="m0" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="n0" class="writeprice" placeholder="금액">
					</div>
					
					


					<br>

										<!-- 검은마천루  -->
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="o0" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="p0" class="writeprice" placeholder="금액">
					</div>

					<!-- 소용돌이 사원  -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="q0" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="r0"  class="writeprice" placeholder="금액">
					</div>
					
					<!-- 태천왕릉  -->
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="s0" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="t0" class="writeprice" placeholder="금액">
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

	<a class="named"> 천독룡 </a>
					<a class="named2"> 초열혹한검</a>
					<a class="named3"> 결계천수 </a>	
					<a class="named4"> 사화마녀 </a>		 <br>
					
					
					
					<!-- 검은마천루  -->
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="w0" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="x0" class="writeprice" placeholder="금액">
					</div>

					<!-- 소용돌이 사원  -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="y0" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="z0"  class="writeprice" placeholder="금액">
					</div>
					
					<!-- 태천왕릉  -->
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="a1" class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="b1" class="writeprice" placeholder="금액">
					</div>
					
					<!-- 적몽의 비원  -->
					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="c1"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item4">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="d1"  class="writeprice" placeholder="금액">
					</div>
					
					


					<br>

										<!-- 검은마천루  -->
					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="e1"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="f1"  class="writeprice" placeholder="금액">
					</div>

					<!-- 소용돌이 사원  -->
					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="g1"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item2">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" id="h1"  class="writeprice" placeholder="금액">
					</div>
					
					<!-- 태천왕릉  -->
					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="i1"  class="writeprice" placeholder="금액">
					</div>

					<div class="sale-item3">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text"  id="j1"  class="writeprice" placeholder="금액">
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