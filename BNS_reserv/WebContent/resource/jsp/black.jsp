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

.sidenav .inner {
	display: none;
}

.sidenav ul {
	margin: 0px;
	padding: 0px;
}

.sidenav .d1 {
	padding: 8px;
	text-decoration: none;
	font-size: 20px;
	color: white;
	display: block;
	transition: 0.3s;
	text-decoration: none;
}

.sidenav .d1:hover {
	background: rgba(0, 0, 0, 1.0);
	color: #1EA4FF;
}

.sidenav .dl:active a {
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
		<!-- 서버 -->
		<ul>
			<!-- 경국지색 -->
			<li class="d1"><a href="#" class="d1"><span>경국지색</span></a>
				<div class="inner">
					<div class="core">

						<strong>경국지색</strong>
						<ul>
							<li id="a"><a><span>경국1팀</span></a></li>
							<li id="b"><a><span>경국2팀</span></a></li>
							<li id="c"><a><span>경국3팀</span></a></li>
							<li id="d"><a><span>경국4팀</span></a></li>
							<li id="e"><a><span>경국5팀</span></a></li>
							<li id="f"><a><span>경국6팀</span></a></li>
							<li id="g"><a><span>경국7팀</span></a></li>
							<li id="h"><a><span>경국8팀</span></a></li>
						</ul>
					</div>
				</div></li>

			<!-- 절세미인 -->
			<li class="d1"><a href="#" class="d1"><span>절세미인</span></a>
				<div class="inner">
					<div class="core">

						<strong>절세미인</strong>
						<ul>
							<li id="i"><a><span>절세1팀</span></a></li>
							<li id="j"><a><span>절세2팀</span></a></li>
							<li id="k"><a><span>절세3팀</span></a></li>
							<li id="l"><a><span>절세4팀</span></a></li>
							<li id="m"><a><span>절세5팀</span></a></li>
							<li id="n"><a><span>절세6팀</span></a></li>
							<li id="o"><a><span>절세7팀</span></a></li>
							<li id="p"><a><span>절세8팀</span></a></li>
						</ul>
					</div>
				</div></li>

			<!-- 금강불괴 -->
			<li class="d1"><a href="#" class="d1"><span>금강불괴</span></a>
				<div class="inner">
					<div class="core">

						<strong>금강불괴</strong>
						<ul>
							<li id="q"><a><span>절세1팀</span></a></li>
							<li id="r"><a><span>절세2팀</span></a></li>
							<li id="s"><a><span>절세3팀</span></a></li>
							<li id="t"><a><span>절세4팀</span></a></li>
							<li id="u"><a><span>절세5팀</span></a></li>
							<li id="v"><a><span>절세6팀</span></a></li>
							<li id="w"><a><span>절세7팀</span></a></li>
							<li id="x"><a><span>절세8팀</span></a></li>
						</ul>
					</div>
				</div></li>

			<!-- 명불허전 -->
			<li class="d1"><a href="#" class="d1"><span>명불허전</span></a>
				<div class="inner">
					<div class="core">

						<strong>명불허전</strong>
						<ul>
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

						<strong>신검합일</strong>
						<ul>
							<li id="gg"><a><span>절세1팀</span></a></li>
							<li id="hh"><a><span>절세2팀</span></a></li>
							<li id="hh"><a><span>절세3팀</span></a></li>
							<li id="ii"><a><span>절세4팀</span></a></li>
							<li id="jj"><a><span>절세5팀</span></a></li>
							<li id="kk"><a><span>절세6팀</span></a></li>
							<li id="ll"><a><span>절세7팀</span></a></li>
							<li id="mm"><a><span>절세8팀</span></a></li>
						</ul>
					</div>
				</div></li>

			<!-- 일확천금 -->
			<li class="d1"><a href="#" class="d1"><span>일확천금</span></a>
				<div class="inner">
					<div class="core">

						<strong>일확천금</strong>
						<ul>
							<li id="nn"><a><span>절세1팀</span></a></li>
							<li id="oo"><a><span>절세2팀</span></a></li>
							<li id="pp"><a><span>절세3팀</span></a></li>
							<li id="qq"><a><span>절세4팀</span></a></li>
							<li id="rr"><a><span>절세5팀</span></a></li>
							<li id="ss"><a><span>절세6팀</span></a></li>
							<li id="tt"><a><span>절세7팀</span></a></li>
							<li id="uu"><a><span>절세8팀</span></a></li>
						</ul>
					</div>
				</div></li>

			<!-- 이심전심 -->
			<li class="d1"><a href="#" class="d1"><span>이심전심</span></a>
				<div class="inner">
					<div class="core">

						<strong>이심전심</strong>
						<ul>
							<li id="vv"><a><span>절세1팀</span></a></li>
							<li id="ww"><a><span>절세2팀</span></a></li>
							<li id="xx"><a><span>절세3팀</span></a></li>
							<li id="yy"><a><span>절세4팀</span></a></li>
							<li id="zz"><a><span>절세5팀</span></a></li>
							<li id="aaa"><a><span>절세6팀</span></a></li>
							<li id="bbb"><a><span>절세7팀</span></a></li>
							<li id="ccc"><a><span>절세8팀</span></a></li>
						</ul>
					</div>
				</div></li>
			<!-- 이심전심 -->
			<li class="d1"><a href="#" class="d1"><span>이심전심</span></a>
				<div class="inner">
					<div class="core">

						<strong>이심전심</strong>
						<ul>
							<li id="ddd"><a><span>절세1팀</span></a></li>
							<li id="eee"><a><span>절세2팀</span></a></li>
							<li id="fff"><a><span>절세3팀</span></a></li>
							<li id="ggg"><a><span>절세4팀</span></a></li>
							<li id="hhh"><a><span>절세5팀</span></a></li>
							<li id="iii"><a><span>절세6팀</span></a></li>
							<li id="jjj"><a><span>절세7팀</span></a></li>
							<li id="kkk"><a><span>절세8팀</span></a></li>
						</ul>
					</div>
				</div></li>
				<!-- 화룡점정 -->
			<li class="d1"><a href="#" class="d1"><span>화룡점정</span></a>
				<div class="inner">
					<div class="core">

						<strong>화룡점정</strong>
						<ul>
							<li id="lll"><a><span>절세1팀</span></a></li>
							<li id="mmm"><a><span>절세2팀</span></a></li>
							<li id="nnn"><a><span>절세3팀</span></a></li>
							<li id="ooo"><a><span>절세4팀</span></a></li>
							<li id="ppp"><a><span>절세5팀</span></a></li>
							<li id="qqq"><a><span>절세6팀</span></a></li>
							<li id="rrr"><a><span>절세7팀</span></a></li>
							<li id="sss"><a><span>절세8팀</span></a></li>
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
		<!--경국지색-->
		$(".d1").mouseover(function(){
			
					
				});
		
	}
	function openNav() {
		document.getElementById("sidenav").style.width = "110px";
	}

	
</script>
</html>