<%@page import="java.util.List"%>
<%@page import="vo.KakaoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/css/menu.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/bootstrap/bootstrap.min.css" />
<script
	src="${pageContext.request.contextPath}/resource/js/jquery/jquery.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- 내역 클릭 이벤트 
<script>
	function btn_history() {
		var history = document.getElementById(".history_reserv");
		history.style.visibility = "visible";
	}
</script> -->

</head>
<body>


	<video autoplay loop id="background_video" muted>
		<source
			src="${pageContext.request.contextPath}/resource/assets/video/vi3.mp4"
			type="video/mp4">
	</video>
	<div class="container">
		<div class="content">
			<div class="aside">
				<input type="button" class="btn btn-danger" id="register"
					style="font-weight: bold;" value="판매등록" onclick="location.href='./sale_register.jsp';"> &emsp;
				<input type="button" class="btn btn-default" id="history"
					style="font-weight: bold;" value="주문내역" onclick="btn_history();">
				&emsp; <img
					src="${pageContext.request.contextPath}/resource/assets/image/Klogout.png"
					class="kakao-logout-btn" style="width: 100px; height: 100px" onclick="Logout(); return false;"/> 
			</div>
	
			
			<h1>Blade and Soul</h1>
			<p>Welcome to BNS BUS reservation guide</p>
			
			
			<p style="margin: 0; padding: 0; font-size:10px;">
			
				${kvo.getNickname}님 환영합니다.
			
				</p>

			
			
			<br> <br> <input type="button" id="goblack" value="검은 마천루"
				onClick="location.href='${pageContext.request.contextPath}/resource/jsp/black.jsp';"> <input type="button"
				id="govortex" value="소용돌이 사원" onClick="alert('준비중입니다.')"> <input
				type="button" id="gotwilight" value="태천왕릉"
				onClick="location.href='${pageContext.request.contextPath}/resource/jsp/twilight.jsp';">
				<input type="button" id="gored"
				value="적몽의 비원" onClick="location.href='${pageContext.request.contextPath}/resource/jsp/reddream.jsp';">

		</div>
		<!-- 내역에 대한 프레임  -->
		<div class="history_reserv">
			<div class="history_frame">
				<div class="history_summary">

					<div class="history_sum">
						<p>날짜</p>
						<p>2018. 03. 29</p>
					</div>
					<div class="history_sum">
						<p>시각</p>
						<p>오후 10시</p>
					</div>
					<div class="history_sum">
						<p>팀명</p>
						<p>룩덕호룩덕호</p>
					</div>
					<div class="history_sum">
						<p>팀장명</p>
						<p>기공사초보</p>
					</div>
					<hr>
				</div>
				<br>
				<div class="history_items">
					<div class="summary_items">
						<p>주문아이템</p>
					</div>

					<div class="summary_items">
						<p>금액</p>
					</div>

					<hr>

					<br>
					<div class="ordered_history_item">

						<div class="history_item">
							<p>화염귀걸이</p>
						</div>
						<div class="item_price">
							<p>3000금</p>
						</div>

					</div>
					<br>
					<div class="ordered_history_item">
						<div class="history_item">
							<p>냉기귀걸이</p>
						</div>
						<div class="item_price">
							<p>2000금</p>
						</div>
					</div>
					<br>

					<div class="ordered_history_item">
						<div class="history_item">
							<p>초마령의 심장</p>
						</div>
						<div class="item_price">
							<p>5000금</p>
						</div>
					</div>
					<br>
					<div class="ordered_history_item">
						<div class="history_item">
							<p>대지목걸이</p>
						</div>
						<div class="item_price">
							<p>3000금</p>
						</div>
					</div>

					<br>

					<div class="ordered_history_item">
						<hr>
						<div class="history_item">

							<p>합계 :</p>
						</div>
						<div class="item_price">
							<p>13000금</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="team_summary">

			<div class="s_team_name">
				<p>팀장명</p>
				<p>기공사초보</p>

			</div>
			<div class="s_team_date">
				<p>날짜</p>
				<p>2018. 03. 29</p>

			</div>
			<div class="s_team_time">
				<p>출발시각</p>
				<p>오후 10시</p>
			</div>
		</div>

	</div>



</body>



</html>