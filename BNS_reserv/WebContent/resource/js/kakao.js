window.onload = function() {
Kakao.init('676167b04a4a8d2a5d1fcbf8b1c0cabb');
function loginWithKakao() {
			// 로그인 창을 띄웁니다.
			Kakao.Auth.login({
				success : function(authObj) {
					alert(JSON.stringify(authObj));
				},
				fail : function(err) {
					alert(JSON.stringify(err));
				}
			});
		};
		//]]>
		$(document)
				.ready(
						function() {
							Kakao.init('9a167b0b0fe46f0910b7a8927142928c');
							function getKakaotalkUserProfile() {
								Kakao.API
										.request({
											url : '/v1/user/me',
											success : function(res) {
												$("#kakao-profile")
														.append(
																res.properties.nickname);
												$("#kakao-profile")
														.append(
																$(
																		"<img/>",
																		{
																			"src" : res.properties.profile_image,
																			"alt" : res.properties.nickname
																					+ "님의 프로필 사진"
																		}));
											},
											fail : function(error) {
												console.log(error);
											}
										});
							}
							function createKakaotalkLogin() {
								$(
										"#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn")
										.remove();
								var loginBtn = $("<a/>", {
									"class" : "kakao-login-btn",
									"text" : "로그인"
								});
								loginBtn.click(function() {
									Kakao.Auth.login({
										persistAccessToken : true,
										persistRefreshToken : true,
										success : function(authObj) {
											getKakaotalkUserProfile();
											createKakaotalkLogout();
										},
										fail : function(err) {
											console.log(err);
										}
									});
								});
								$("#kakao-logged-group").prepend(loginBtn)
							}
							function createKakaotalkLogout() {
								$(
										"#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn")
										.remove();
								var logoutBtn = $("<a/>", {
									"class" : "kakao-logout-btn",
									"text" : "로그아웃"
								});
								logoutBtn.click(function() {
									Kakao.Auth.logout();
									createKakaotalkLogin();
									$("#kakao-profile").text("");
								});
								$("#kakao-logged-group").prepend(logoutBtn);
							}
							if (Kakao.Auth.getRefreshToken() != undefined
									&& Kakao.Auth.getRefreshToken().replace(
											/ /gi, "") != "") {
								createKakaotalkLogout();
								getKakaotalkUserProfile();
							} else {
								createKakaotalkLogin();
							}
						});
}
