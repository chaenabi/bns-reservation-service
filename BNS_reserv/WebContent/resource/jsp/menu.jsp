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


				<%=session.getAttribute("bns_id")%>님 환영합니다. &emsp;
				
				<input type="button"
					class="btn btn-danger" id="register" style="font-weight: bold;"
					value="판매등록" 
					onclick="location.href='${pageContext.request.contextPath}/resource/jsp/sale_register.jsp';" />
		
				&emsp; <input type="button" class="btn btn-default" id="history"
					style="font-weight: bold;" value="주문내역" /> &emsp; <a
					href="${pageContext.request.contextPath}/resource/jsp/main.jsp"
					onclick="logoutFromKakao();"> <img
					src="${pageContext.request.contextPath}/resource/assets/image/Klogout.png"
					class="kakao-logout-btn" style="width: 100px; height: 100px;" />
				</a>

			</div>
	

			<script>
				//카카오톡 로그아웃.
				function logoutFromKakao() {
					Kakao.init("031e33baa1e3d2a584c550bacf19c0a9");
					Kakao.Auth
							.logout(function() {

								location.href = '${pageContext.request.contextPath}/resource/jsp/menu.jsp';

							});
				};
			</script>

			<h1>Blade and Soul</h1>
			<p>Welcome to BNS BUS reservation guide</p>


			<br> <br> <input type="button" id="goblack" value="검은 마천루"
				onClick="location.href='${pageContext.request.contextPath}/resource/jsp/black.jsp';">
			<input type="button" id="govortex" value="소용돌이 사원"
				onClick="alert('준비중입니다.')"> <input type="button"
				id="gotwilight" value="태천왕릉"
				onClick="location.href='${pageContext.request.contextPath}/resource/jsp/twilight.jsp';">
			<input type="button" id="gored" value="적몽의 비원"
				onClick="location.href='${pageContext.request.contextPath}/resource/jsp/reddream.jsp';">

		</div>
		<!-- 내역에 대한 프레임  -->
		<div class="history_reserv" id="history_reserv">
			<div class="history_frame">
				<div class="history_summary">

					<br>
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
					<div style="float: right; padding-right: 10px;">
						<input type="button"
							style="border: none; background: black; color: white; border-radius: 5px; text-align: center; width: 30px;"
							id="hide_history" Value="X">
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

					<div class="ordered_history_item">

						<div class="history_item">
							<p>사화비공패 1계열</p>
						</div>
						<div class="item_price">
							<p>3000금</p>
						</div>

					</div>
					<br>
					<div class="ordered_history_item">
						<div class="history_item">
							<p>몽화비공패 2계열</p>
						</div>
						<div class="item_price">
							<p>2000금</p>
						</div>
					</div>
					<br>

					<div class="ordered_history_item">
						<div class="history_item">
							<p>투쟁반지 1계열</p>
						</div>
						<div class="item_price">
							<p>5000금</p>
						</div>
					</div>
					<br>
					<div class="ordered_history_item">
						<div class="history_item">
							<p>투지귀걸이 2계열</p>
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
	<script src="${pageContext.request.contextPath}/resource/js/menu.js"></script>
</body>



</html>