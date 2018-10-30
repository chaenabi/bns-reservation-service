<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/css/black.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="${pageContext.request.contextPath}/resource/js/jquery/jquery.js"></script>

<style>
.sidenav {
	height: 100%;
	width: 90px;
	position: fixed;
	z-index: 0;
	top: 0;
	left: 0;
	background-color: rgba(0, 0, 0, 0.5);
	overflow: hidden;
	transition: 0.5s;
	padding-top: 10px;
}

.sidenav a {
	padding: 8px;
	text-decoration: none;
	font-size: 20px;
	color: white;
	display: block;
	transition: 0.3s;
}

.sidenav a:hover {
	background: rgba(0, 0, 0, 1.0);
	color: #1EA4FF;
}
</style>
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

	<!-- 사이드바 열림 애니메이션 (클릭이벤트) -->
	<input type="hidden" id="nav" onclick="openNav();" />



	<!-- 사이드바 -->
	<div class="sidenav" id="sidenav">
		<!-- Server -->
		<a id="geongguk">경국지색</a> <a id="jeolse">절세미인</a> <a id="myungbul">명불허전</a>
		<a id="ilhwak">일확천금</a> <a id="singum">신검합일</a> <a id="isim">이심전심</a>
		<a id="gumgang">금강불괴</a> <a id="hwalyung">화룡점정</a>
	</div>




</body>

<script>
<!-- 사이드바 열림 애니메이션 (클릭이벤트) -->
	var nav = document.getElementById('nav');
	window.onload = function() {
		nav.onclick();
	}
	function openNav() {
		document.getElementById("sidenav").style.width = "95px";
	}
	
	<!-- -->
</script>
</html>