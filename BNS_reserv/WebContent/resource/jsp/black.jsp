<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/default.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/component.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/css/black.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css" />
<script
	src="${pageContext.request.contextPath}/resource/js/jquery/jquery.js"></script>

<script src="${pageContext.request.contextPath}/resource/js/modernizr.custom.js"></script>

</head>
<body>

	<video autoplay loop id="background_video">
		<source
			src="${pageContext.request.contextPath}/resource/assets/video/skyscraper.mp4"
			type="video/mp4">
	</video>
	<div class="container">
		<h1>Blade and Soul</h1>
		<p>Welcome to BNS BUS reservation guide</p>
		<br>
		<div id="left_index" style="display: none;">
		<button id="showLeft">Show/Hide Left Slide Menu</button>
		</div>
	</div>



	<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left"
		id="cbp-spmenu-s1">
		<!-- <h3>Server</h3> -->
		<a>경국지색</a>
		<a>절세미인</a>
		<a>명불허전</a>
		<a>일확천금</a>
		<a>신검합일</a>
		<a>이심전심</a>
		<a>금강불괴</a>
		<a>화룡점정</a>
	</nav>


	<script src="${pageContext.request.contextPath}/resource/js/classie.js"></script>
	<script src="${pageContext.request.contextPath}/resource/js/black.js"></script>
	

</body>
</html>