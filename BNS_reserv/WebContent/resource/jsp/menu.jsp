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
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
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
	
			<!-- 카카오톡 로그아웃 버튼 만들어 줄것 -->
		<a class="kakao-logout-btn" >로그아웃</a>
			
				<!--  또는-->
				<script>
				function createKakaotalkLogout(){
					var logoutBtn = $("<a/>",{"class":"kakao-logout-btn","text":"로그아웃"});
					logoutBtn.click(function(){
						Kakao.Auth.logout();
						
					
					});
					</script>
		
	
	</div>
	
		
		<!--보안상의 이유로 더이상 지원되지 않음.
				따라서 main.jsp에서 작성한 oath는 json 형태로 반환되므로 이 것을 파싱하여 사용할것.
		<script>
			$(document).ready(function(){
				Kakao.init("70009e108e4f5d8b1b0fa8759b63dc8f");
				function getKakaotalkUserProfile(){
					Kakao.API.request({
						url: '/v1/user/me',
						success: function(res) {
							$("#kakao-profile").append(res.properties.nickname);
							$("#kakao-profile").append($("<img/>",{"src":res.properties.profile_image,"alt":res.properties.nickname+"님의 프로필 사진"}));
						},
						fail: function(error) {
							console.log(error);
						}
					});
				}
				function createKakaotalkLogin(){
					$("#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();
					var loginBtn = $("<a/>",{"class":"kakao-login-btn","text":"로그인"});
					loginBtn.click(function(){
						Kakao.Auth.login({
							persistAccessToken: true,
							persistRefreshToken: true,
							success: function(authObj) {
								getKakaotalkUserProfile();
								createKakaotalkLogout();
							},
							fail: function(err) {
								console.log(err);
							}
						});
					});
					$("#kakao-logged-group").prepend(loginBtn)
				}
				function createKakaotalkLogout(){
					$("#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();
					var logoutBtn = $("<a/>",{"class":"kakao-logout-btn","text":"로그아웃"});
					logoutBtn.click(function(){
						Kakao.Auth.logout();
						createKakaotalkLogin();
						$("#kakao-profile").text("");
					});
					$("#kakao-logged-group").prepend(logoutBtn);
				}
				if(Kakao.Auth.getRefreshToken()!=undefined&&Kakao.Auth.getRefreshToken().replace(/ /gi,"")!=""){
					createKakaotalkLogout();
					getKakaotalkUserProfile();
				}else{
					createKakaotalkLogin();
				}
			});
		</script> -->



 	
</body>
</html>