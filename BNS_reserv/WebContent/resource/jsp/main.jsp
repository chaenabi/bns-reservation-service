<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css" />
<script src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/js/kakao.js"></script>
</head>

<body>
	<div class="background-wrap">
		<video id="video-bg-elem" preload="auto" autoplay loop>
			<source
				src="${pageContext.request.contextPath}/resource/assets/video/vi2.mp4"
				type="video/mp4">
		</video>

	</div>

	<div class="content">
		<h1>Blade and Soul</h1>
		<p>Welcome to BNS BUS reservation guide</p>
		<br>
					
					<img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="300" id="upup"/>
					<a id="kakao-login-btn"> </a>
					<a href="http://developers.kakao.com/logout"> </a>
					<div id="kakao-logged-group"></div>
					<div id="kakao-profile"></div><br>
		
		<input type="button" class="btn btn-danger" id="onlydev" name="onlydev"
			value="개발자전용: 무시하고 다음 페이지로 이동" onClick="location.href='./menu.jsp';">
	</div>
	
	
	


</body>
</html>