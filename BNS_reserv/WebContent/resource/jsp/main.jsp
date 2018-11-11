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
	href="${pageContext.request.contextPath}/resource/css/bootstrap/bootstrap.min.css" />
<script
	src="${pageContext.request.contextPath}/resource/js/jquery/jquery.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

<!-- <script>

</script>	 -->


</head>

<body>

	<video autoplay loop id="intro_video" muted>
		<source
			src="${pageContext.request.contextPath}/resource/assets/video/vi2.mp4"
			type="video/mp4">
	</video>


	<div class="container">
		<h1>Blade and Soul</h1>
		<p>Welcome to BNS BUS reservation guide</p>
		<br>
		<form action="${pageContext.request.contextPath}/servlet/KakaoServ"
			method="post" id="kakao-login"
			onsubmit="alert('폼 작동하는지 테스트. : 성공!');">

			<div class="kakao">
				<input type="hidden" name="action" value="kakao-login" /> <a
					id="kakao-login-btn"></a> <a
					href="http://developers.kakao.com/logout"></a> <input type="hidden"
					id="id" name="id" value="0"> <input type="hidden"
					id="email" name="email" value="0"> <input type="hidden"
					id="nickname" name="nickname" value="0"> <input type="hidden"
					id="access_token" name="access_token" value="0">

				<script>
				Kakao.init("70009e108e4f5d8b1b0fa8759b63dc8f");
				Kakao.Auth.createLoginButton({
					container : '#kakao-login-btn',
					success : function(authObj) {
						Kakao.API.request({
							url : '/v1/user/me',
							success : function(res) {
								
								// json형태로 출력되는 로그인 정보들을 변수에 담는다.
								var id =JSON.stringify(res.id);
								var email = JSON.stringify(res.kaccount_email);
								var nickname = JSON.stringify(res.properties['nickname']);
																				 //res.properties.nickname으로도 접근 가능.
								var access_token = JSON.stringify(authObj.access_token);
								
								// 변수에 정보가 담겼는지 확인한다.												 
								console.log("id: " + id);
								console.log("email: " + email);
								console.log("nickname: " + nickname);
								console.log("access_token: " + access_token);
							
								$(function() {
									
									//로그인 정보들을 input 태그의 value 에 담는다.
									$('#id').val(id);
									$('#email').val(email);
									$('#nickname').val(nickname);
									$('#access_token').val(access_token);
									
									//서브밋 한다.
									 var form = document.getElementById("kakao-login");  
									  form.submit();
								});
								
								//alert("res: "+ JSON.stringify(res)); 
								//kakao.api.request 에서 불러온 결과값을 json형태로 출력
								//id, email, nickname은 res안에 있으므로, res.id 등으로 호출가능.

								//alert("authObj: "+ JSON.stringify(authObj));
								//Kakao.Auth.createLoginButton에서 불러온 결과값을 json형태로 출력
							}
								});
							

					},

					fail : function(error) {
						alert(JSON.stringify(error));
						alert("로그인 실패!");
					}
				});
				</script>


			</div>
		</form>
		<br> <br> <input type="button" class="btn btn-danger"
			id="onlydev" name="onlydev" value="개발자전용: 무시하고 다음 페이지로 이동"
			onClick="location.href='./menu.jsp';"> <br> <br>


	</div>

</body>


</html>