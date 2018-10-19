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
<script src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>

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

<div style="position: relative" class="left_index" id="left_index">
			
		<script>
			var left_index = document.getElementById("left_index");
			
			left_index.style.width = "0px";
			left_index.style.height = "900px";
			left_index.style.background = "rgba(0, 0, 0, 0.5)";
			var startTime = new Date().getTime();
			var makeItBigger = function() {
				var currTime = new Date().getTime();
				var newWidth = (((currTime - startTime) / 1000) * 40);
				left_index.style.width = newWidth + "px";

				if (newWidth < 100) {
					window.requestAnimationFrame(makeItBigger);
				}

			};
			makeItBigger();
			
		</script>
	</div>


</body>
</html>