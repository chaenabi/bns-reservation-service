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
<script src="${pageContext.request.contextPath}/resource/js/jquery/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resource/js/black.js"></script>

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

	</div>

	<div class="LeftIndex" id="leftIndex">
		
			<div class="LeftIndex" id="leftlist_1st"></div>
			<br> <br>
			<div class="LeftIndex" id="leftlist_2nd"></div>

		
	</div>



	
	


</body>
</html>