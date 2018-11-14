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
		
				<%=  session.getAttribute("id") %>
				<%= session.getAttribute("nickname") %> 님 환영합니다.
			
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
						type="radio" name="raid_type" value="검은 마천루"> <i class="icon-radio"></i>
					</label> 소용돌이 사원 <label class="radio"> <input type="radio"
						name="raid_type" value="소용돌이 사원"> <i class="icon-radio"></i>
					</label> 태천왕릉 <label class="radio"> <input type="radio"
						name="raid_type" value="태천왕릉"> <i class="icon-radio"></i>
					</label> 적몽의 비원 <label class="radio"> <input type="radio"
						name="raid_type" value="적몽의 비원" disabled="disabled"> <i
						class="icon-radio"></i>
					</label>

				</div>
				<hr>

				<h3 style="margin:10px;">판매할 아이템</h3>
				<hr>
				<div class="sales">
					<a class="named"> 천독룡 </a> <br>


					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" placeholder="금액">
					</div>

					<br>


					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독반지(바람)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독반지(바람)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독반지(암흑)</a>
						</div>
						 <label class="checkbox">
								<input type="checkbox" value="천독반지(암흑)"> <i
								class="icon-checkbox"></i>
						</label>
						 <input type="text" placeholder="금액">
					</div>
					<a class="named"> 사안장군 </a> <br>


						<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" placeholder="금액">
					</div>

					<br>


					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독반지(바람)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독반지(바람)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독반지(암흑)</a>
						</div>
						 <label class="checkbox">
								<input type="checkbox" value="천독반지(암흑)"> <i
								class="icon-checkbox"></i>
						</label>
						 <input type="text" placeholder="금액">
					</div>

					<a class="named"> 모순장군 </a> <br>


						<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" placeholder="금액">
					</div>

					<br>


					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독반지(바람)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독반지(바람)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독반지(암흑)</a>
						</div>
						 <label class="checkbox">
								<input type="checkbox" value="천독반지(암흑)"> <i
								class="icon-checkbox"></i>
						</label>
						 <input type="text" placeholder="금액">
					</div>

					<a class="named"> 촉마왕 </a> <br>


					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(번개)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(번개)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독귀걸이(화염)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독귀걸이(화염)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" placeholder="금액">
					</div>

					<br>


					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독반지(바람)</a>
						</div>
						<label class="checkbox">
								<input type="checkbox" value="천독반지(바람)"> <i
								class="icon-checkbox"></i>
						</label> <input type="text" placeholder="금액">
					</div>

					<div class="sale-item">
						<div class="sale-item-name">
							<a> 천독반지(암흑)</a>
						</div>
						 <label class="checkbox">
								<input type="checkbox" value="천독반지(암흑)"> <i
								class="icon-checkbox"></i>
						</label>
						 <input type="text" placeholder="금액">
					</div>
					<br>
					<br>
					<br> <input type="submit" value="팀등록하기">
				</div>

			</div>


		</div>

	</div>
</form>
</body>
</html>