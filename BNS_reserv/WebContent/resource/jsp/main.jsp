<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/css/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css" />
<script src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/js/kakao.js"></script>



</head>

<body>

	<video autoplay loop id="intro_video">
		<source
			src="${pageContext.request.contextPath}/resource/assets/video/vi2.mp4"
			type="video/mp4">
	</video>


	<div class="container">
		<h1>Blade and Soul</h1>
		<p>Welcome to BNS BUS reservation guide</p>
		<br>
		
		<div class="kakao">
		<a id="kakao-login-btn"></a>  <a
			href="http://developers.kakao.com/logout"></a> 
		<script>
			Kakao.init('70009e108e4f5d8b1b0fa8759b63dc8f');
			Kakao.Auth.createLoginButton({
				container : '#kakao-login-btn',
				success : function(authObj) {
					alert("로그인 성공!");
				},
				fail : function(err) {
					alert("로그인 실패!");
				}
			});
		</script>
	
		
	</div> <br>
		<br> <input type="button" class="btn btn-danger" id="onlydev"
			name="onlydev" value="개발자전용: 무시하고 다음 페이지로 이동"
			onClick="location.href='./menu.jsp';"> <br> <br>
		<button id="Btn_video" onclick="myFunction()">Pause</button>

	</div>


	<script>
		var video = document.getElementById("intro_video");
		var btn = document.getElementById("Btn_video");
		btn.innerHTML = "Play";

		function myFunction() {
			if (video.paused) {
				video.play();
				btn.innerHTML = "Pause";
			} else {
				video.pause();
				btn.innerHTML = "Play";
			}
		}
	</script>


</body>


</html>