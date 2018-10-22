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
	href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css" />
<script src="${pageContext.request.contextPath}/resource/js/jquery/jquery.js"></script>

</head>
<body>
	
	<video autoplay loop id="background_video" muted>
		<source
			src="${pageContext.request.contextPath}/resource/assets/video/vi3.mp4"
			type="video/mp4">
	</video>
	<div class="container">
		<h1>Blade and Soul</h1>
		<p>Welcome to BNS BUS reservation guide</p>
		<br>
		
		<br> <input type="button" id="goblack"
			name="goblack" value="검은 마천루"
			onClick="location.href='./black.jsp';"> 
		
		<input type="button" id="goblack"
			name="goblack" value="소용돌이 사원"
			onClick="location.href='./vortex.jsp';">
			
		<input type="button" id="goblack"
			name="goblack" value="태천왕릉"
			onClick="location.href='./twilight.jsp';"> 			
	
	</div>

 	
</body>
</html>