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
/* 서버 목록 div 제어문 */
.sidenav {
	height: 100%;
	width: 105px;
	position: fixed;
	z-index: 0;
	top: 0;
	left: 0;
	background-color: rgba(0, 0, 0, 0.5);
	overflow: hidden;
	transition: 0.5s;
	padding-top: 10px;
}
/* 서버 목록 ul 제어문  */
.sidenav .sidemenu {
	margin: 0px;
	padding: 0px;
}
/* 서버목록 기본세팅(div가 보이지 않음)  */
.sidenav .inner {
	display: none;
}

/* 서버 목록 li 제어문  */
.sidenav .d1 {
	padding: 8px;
	text-decoration: none;
	font-size: 20px;
	color: white;
	display: block;
	transition: 0.3s;
}

/* 두번째 목록의 시작  */
/* 서버 목록에 마우스 오버시 생성되는 첫번째 div 제어문  */
.sidenav .d1:hover .inner, .d1:active .inner {
	background: rgba(0, 0, 0, 0.7);
	display: block;
	height: 100%;
	width: 180px;
	position: fixed;
	z-index: 0;
	top: 0;
	left: 110px;
	overflow: hidden;
	transition: 0.5s;
	color: white;
	padding-left: 10px;
	padding-top: 10px;
}

.sidenav .d1:hover, .d1:active {
	background: rgba(0, 0, 0, 0.7);
	color: #1EA4FF;
}

/*  두번째 목록의 div 추가세팅 */
.sidenav .inner .core {
	margin: 0px;
	padding: 0px;
	display: block;
	padding-top: 14px;
}

strong {
	color: red;
}

/* 두번째 목록 ul 제어문  */
.sidenav .inner .list, .sidenav .inner .list {
	padding-left: 0px;
	padding-top: 20px;
	text-decoration: none;
	list-style: none;
	color: white;
	transition: 0.3s;
	overflow: hidden;
}

/* 두번째 목록 li 제어문 */
.core li a {
	padding: 8px;
	text-decoration: none;
	font-size: 20px;
	color: white;
	display: block;
	transition: 0.3s;
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

	<!-- 사이드바 열림 애니메이션 (onload click) -->
	<input type="hidden" id="nav" onclick="openNav();" />



	<!-- 사이드바 -->
	<div class="sidenav" id="sidenav">
		<!-- 서버 -->
		<ul class="sidemenu">
			<!-- 경국지색 -->
			<li class="d1"><a href="#" class="d1"><span>경국지색</span></a>
				<div class="inner">
					<div class="core">

						<strong class="datetime">월요일 오전 10시</strong>
						<ul class="list">
							<li id="a"><a href="#"><span>경국1팀</span></a></li>
							<li id="b"><a href="#"><span>경국2팀</span></a></li>
							<li id="c"><a href="#"><span>경국3팀</span></a></li>
							<li id="d"><a href="#"><span>경국4팀</span></a></li>
							<li id="e"><a href="#"><span>경국5팀</span></a></li>
							<li id="f"><a href="#"><span>경국6팀</span></a></li>
							<li id="g"><a href="#"><span>경국7팀</span></a></li>
							<li id="h"><a href="#"><span>경국8팀</span></a></li>
						</ul>
					</div>
				</div></li>

			<!-- 절세미인 -->
			<li class="d1"><a href="#" class="d1"><span>절세미인</span></a>
				<div class="inner">
					<div class="core">

						<strong class="datetime">절세미인</strong>
						<ul class="list">
							<li id="i"><a href="#"><span>절세1팀</span></a></li>
							<li id="j"><a href="#"><span>절세2팀</span></a></li>
							<li id="k"><a href="#"><span>절세3팀</span></a></li>
							<li id="l"><a href="#"><span>절세4팀</span></a></li>
							<li id="m"><a href="#"><span>절세5팀</span></a></li>
							<li id="n"><a href="#"><span>절세6팀</span></a></li>
							<li id="o"><a href="#"><span>절세7팀</span></a></li>
							<li id="p"><a href="#"><span>절세8팀</span></a></li>
						</ul>
					</div>
				</div></li>

			<!-- 금강불괴 -->
			<li class="d1"><a href="#" class="d1"><span>금강불괴</span></a>
				<div class="inner">
					<div class="core">

						<strong class="datetime">금강불괴</strong>
						<ul class="list">
							<li id="q"><a href="#"><span>절세1팀</span></a></li>
							<li id="r"><a href="#"><span>절세2팀</span></a></li>
							<li id="s"><a href="#"><span>절세3팀</span></a></li>
							<li id="t"><a href="#"><span>절세4팀</span></a></li>
							<li id="u"><a href="#"><span>절세5팀</span></a></li>
							<li id="v"><a href="#"><span>절세6팀</span></a></li>
							<li id="w"><a href="#"><span>절세7팀</span></a></li>
							<li id="x"><a href="#"><span>절세8팀</span></a></li>
						</ul>
					</div>
				</div></li>

			<!-- 명불허전 -->
			<li class="d1"><a href="#" class="d1"><span>명불허전</span></a>
				<div class="inner">
					<div class="core">

						<strong class="datetime">명불허전</strong>
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
			<li class="d1"><a href="#" class="d1"><span>신검합일</span></a>
				<div class="inner">
					<div class="core">

						<strong class="datetime">신검합일</strong>
						<ul class="list">
							<li id="gg"><a href="#"><span>절세1팀</span></a></li>
							<li id="hh"><a href="#"><span>절세2팀</span></a></li>
							<li id="hh"><a href="#"><span>절세3팀</span></a></li>
							<li id="ii"><a href="#"><span>절세4팀</span></a></li>
							<li id="jj"><a href="#"><span>절세5팀</span></a></li>
							<li id="kk"><a href="#"><span>절세6팀</span></a></li>
							<li id="ll"><a href="#"><span>절세7팀</span></a></li>
							<li id="mm"><a href="#"><span>절세8팀</span></a></li>
						</ul>
					</div>
				</div></li>

			<!-- 일확천금 -->
			<li class="d1"><a href="#" class="d1"><span>일확천금</span></a>
				<div class="inner">
					<div class="core">

						<strong class="datetime">일확천금</strong>
						<ul class="list">
							<li id="nn"><a href="#"><span>절세1팀</span></a></li>
							<li id="oo"><a href="#"><span>절세2팀</span></a></li>
							<li id="pp"><a href="#"><span>절세3팀</span></a></li>
							<li id="qq"><a href="#"><span>절세4팀</span></a></li>
							<li id="rr"><a href="#"><span>절세5팀</span></a></li>
							<li id="ss"><a href="#"><span>절세6팀</span></a></li>
							<li id="tt"><a href="#"><span>절세7팀</span></a></li>
							<li id="uu"><a href="#"><span>절세8팀</span></a></li>
						</ul>
					</div>
				</div></li>

			<!-- 이심전심 -->
			<li class="d1"><a href="#" class="d1"><span>이심전심</span></a>
				<div class="inner">
					<div class="core">

						<strong class="datetime">이심전심</strong>
						<ul class="list">
							<li id="vv"><a href="#"><span>절세1팀</span></a></li>
							<li id="ww"><a href="#"><span>절세2팀</span></a></li>
							<li id="xx"><a href="#"><span>절세3팀</span></a></li>
							<li id="yy"><a href="#"><span>절세4팀</span></a></li>
							<li id="zz"><a href="#"><span>절세5팀</span></a></li>
							<li id="aaa"><a href="#"><span>절세6팀</span></a></li>
							<li id="bbb"><a href="#"><span>절세7팀</span></a></li>
							<li id="ccc"><a href="#"><span>절세8팀</span></a></li>
						</ul>
					</div>
				</div></li>
			<!-- 이심전심 -->
			<li class="d1" class="datetime"><a href="#" class="d1"><span>화룡점정</span></a>
				<div class="inner">
					<div class="core">

						<strong>화룡점정</strong>
						<ul class="list">
							<li id="ddd"><a href="#"><span>절세1팀</span></a></li>
							<li id="eee"><a href="#"><span>절세2팀</span></a></li>
							<li id="fff"><a href="#"><span>절세3팀</span></a></li>
							<li id="ggg"><a href="#"><span>절세4팀</span></a></li>
							<li id="hhh"><a href="#"><span>절세5팀</span></a></li>
							<li id="iii"><a href="#"><span>절세6팀</span></a></li>
							<li id="jjj"><a href="#"><span>절세7팀</span></a></li>
							<li id="kkk"><a href="#"><span>절세8팀</span></a></li>
						</ul>
					</div>
				</div></li>
			<!-- test -->
			<li class="d1"><a href="#" class="d1"><span>test</span></a>
				<div class="inner">
					<div class="core">

						<strong class="datetime">test</strong>
						<ul>
							<li id="lll"><a href="#"><span>절세1팀</span></a></li>
							<li id="mmm"><a href="#"><span>절세2팀</span></a></li>
							<li id="nnn"><a href="#"><span>절세3팀</span></a></li>
							<li id="ooo"><a href="#"><span>절세4팀</span></a></li>
							<li id="ppp"><a href="#"><span>절세5팀</span></a></li>
							<li id="qqq"><a href="#"><span>절세6팀</span></a></li>
							<li id="rrr"><a href="#"><span>절세7팀</span></a></li>
							<li id="sss"><a href="#"><span>절세8팀</span></a></li>
						</ul>
					</div>
				</div></li>
		</ul>





	</div>



</body>

<script>
<!-- 사이드바 열림 애니메이션 (클릭이벤트) -->
	var nav = document.getElementById('nav');
	window.onload = function() {
		nav.onclick();

	}
	function openNav() {
		document.getElementById("sidenav").style.width = "110px";
	}
</script>
</html>