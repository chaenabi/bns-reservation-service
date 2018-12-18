<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resource/css/sale_register.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/checkbox/checkbox_radio_img_sprite.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${pageContext.request.contextPath}/resource/css/datetimepicker/bootstrap-datetimepicker.min.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resource/js/jquery/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/resource/js/datetimepicker/moment.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resource/js/datetimepicker/ko.js"></script>
<script
	src="${pageContext.request.contextPath}/resource/js/datetimepicker/bootstrap-datetimepicker.min.js"
	type="text/javascript"></script>
</head>
<body>

	<video autoplay loop id="background_video" muted>
		<source
			src="${pageContext.request.contextPath}/resource/assets/video/vi3.mp4"
			type="video/mp4">
	</video>
	<form action="../../servlet/TeamServ" method="post" id="sale_register">
		<input type="hidden" name="action" value="team_reg" />
		<div class="container">
			<div class="content">

				<div class="mainform">

					<h2>등록</h2>
					<hr>
					<div class="team_register">
						<input type="hidden" id="id" name="id"
							value="<%=session.getAttribute("id")%>" /> <a>팀명 : </a> <input
							type="text" id="team_name" name="team_name" placeholder="6글자이내">
						<input type="button" id="multi_ck" value="중복체크"> &nbsp; <label
							for="go_date" class="col-xs-2 control-label">출발 날짜</label>
						<div class="col-xs-8" style="display: inline-block;">
							<input type="text" class="form-control" id="go_date"
								name="go_date">
							<script>
								$("#go_date").datetimepicker({
									locale : 'ko',
									format : 'YY/MM/DD',
									showClose : true,
									showClear : true,
									showTodayButton : true,
									stepping : 30,
									//defaultDate : new Date(),
									sideBySide : true
								});
							</script>
						</div>

						<label for="go_time" class="col-xs-2 control-label">출발 시간</label>

						<div class="col-xs-8" style="display: inline-block;">
							<input type="text" class="form-control" id="go_time"
								name="go_time">
							<script>
								$("#go_time").datetimepicker({
									locale : 'ko',
									format : 'HH:mm'
								});
							</script>
						</div>

					</div>

					<div class="team_raid">
						레이드 종류 : 검은 마천루 <label class="radio"> <input type="radio"
							name="raid_type" id="black" value="검은 마천루" required> <i
							class="icon-radio"></i>
						</label> 소용돌이 사원 <label class="radio"> <input type="radio"
							name="raid_type" id="vortex" value="소용돌이 사원" required> <i
							class="icon-radio"></i>
						</label> 태천왕릉 <label class="radio"> <input type="radio"
							name="raid_type" id="twilight" value="태천왕릉" required> <i
							class="icon-radio"></i>
						</label> 적몽의 비원 <label class="radio"> <input type="radio"
							name="raid_type" id="reddream" value="적몽의 비원" required> <i
							class="icon-radio"></i>
						</label>

					</div>
					<hr class="hr">
					<h5>판매할 아이템</h5>
					<br>
					<div class="sales">

						<div class="named_class">
							<a class="named"> 천독룡 <label class="checkbox"> <input
									type="checkbox" id="bs_1st" name="bs_1st" value="1"> <i
									class="icon-checkbox"></i>
							</label>
							</a>
						</div>
						<div class="named_class">
							<a class="named2"> 초열혹한검 <label class="checkbox"> <input
									type="checkbox" id="vt_1st" name="vt_1st" value="1"> <i
									class="icon-checkbox"></i>
							</label>
							</a>
						</div>
						<div class="named_class">
							<a class="named3"> 결계천수 <label class="checkbox"> <input
									type="checkbox" id="tw_1st" name="tw_1st" value="1"> <i
									class="icon-checkbox"></i>
							</label>
							</a>
						</div>
						<div class="named_class">
							<a class="named4"> 기미접수 <label class="checkbox"> <input
									type="checkbox" id="rd_1st" name="rd_1st" value="1"> <i
									class="icon-checkbox"></i>
							</label>
							</a>
						</div>

						<!-- 검은마천루 1네임드  -->
						<div class="bs-sale-item1"></div>
						<div class="bs-sale-item1"></div>
						<div class="bs-sale-item1"></div>
						<div class="bs-sale-item1"></div>
						<div class="bs-sale-item1"></div>
						<div class="bs-sale-item1"></div>

						<!-- 소용돌이 사원 1네임드 -->
						<div class="vt-sale-item1"></div>
						<div class="vt-sale-item1"></div>
						<div class="vt-sale-item1"></div>
						<div class="vt-sale-item1"></div>
						<div class="vt-sale-item1"></div>
						<div class="vt-sale-item1"></div>

						<!-- 태천왕릉 1네임드 -->
						<div class="tw-sale-item1"></div>
						<div class="tw-sale-item1"></div>
						<div class="tw-sale-item1"></div>
						<div class="tw-sale-item1"></div>
						<div class="tw-sale-item1"></div>
						<div class="tw-sale-item1"></div>

						<!-- 적몽의 비원 1네임드 -->
						<div class="rd-sale-item1"></div>
						<div class="rd-sale-item1"></div>
						<div class="rd-sale-item1"></div>
						<div class="rd-sale-item1"></div>
						<div class="rd-sale-item1"></div>
						<div class="rd-sale-item1"></div>

						<div class="named_class">
							<a class="named"> 사안장군 <label class="checkbox"> <input
									type="checkbox" id="bs_2nd" name="bs_2nd" value="2"> <i
									class="icon-checkbox"></i>
							</label>
							</a>
						</div>
						<div class="named_class">
							<a class="named2"> 초마령 <label class="checkbox"> <input
									type="checkbox" id="vt_2nd" name="vt_2nd" value="2"> <i
									class="icon-checkbox"></i>
							</label></a>
						</div>

						<div class="named_class">
							<a class="named3"> 섬천대장군<label class="checkbox"> <input
									type="checkbox" id="tw_2nd" name="tw_2nd" value="2"> <i
									class="icon-checkbox"></i>
							</label>
							</a>
						</div>
						<div class="named_class">
							<a class="named4"> 진교악<label class="checkbox"> <input
									type="checkbox" id="rd_2nd" name="rd_2nd" value="2"> <i
									class="icon-checkbox"></i>
							</label>
							</a>
						</div>

						<!-- 검은마천루 2네임드 -->
						<div class="bs-sale-item2"></div>
						<div class="bs-sale-item2"></div>
						<div class="bs-sale-item2"></div>
						<div class="bs-sale-item2"></div>
						<div class="bs-sale-item2"></div>
						<div class="bs-sale-item2"></div>

						<!-- 소용돌이 사원 2네임드 -->
						<div class="vt-sale-item2"></div>
						<div class="vt-sale-item2"></div>
						<div class="vt-sale-item2"></div>
						<div class="vt-sale-item2"></div>
						<div class="vt-sale-item2"></div>
						<div class="vt-sale-item2"></div>

						<!-- 태천왕릉  2네임드-->
						<div class="tw-sale-item2"></div>
						<div class="tw-sale-item2"></div>
						<div class="tw-sale-item2"></div>
						<div class="tw-sale-item2"></div>
						<div class="tw-sale-item2"></div>
						<div class="tw-sale-item2"></div>

						<!-- 적몽의 비원 2네임드 -->
						<div class="rd-sale-item2"></div>
						<div class="rd-sale-item2"></div>
						<div class="rd-sale-item2"></div>
						<div class="rd-sale-item2"></div>
						<div class="rd-sale-item2"></div>
						<div class="rd-sale-item2"></div>


						<div class="info" style="padding-top: 30px;">
							<a> 먼저 등록할 팀의 레이드 종류를 선택해주세요 !</a>
						</div>

						<div class="named_class">
							<a class="named">모순장군<label class="checkbox"> <input
									type="checkbox" id="bs_3rd" name="bs_3rd" value="3"> <i
									class="icon-checkbox"></i>
							</label>
							</a>
						</div>
						<div class="named_class">
							<a class="named2">적패왕<label class="checkbox"> <input
									type="checkbox" id="vt_3rd" name="vt_3rd" value="3"> <i
									class="icon-checkbox"></i>
							</label></a>
						</div>
						<div class="named_class">
							<a class="named3">폭염갈기<label class="checkbox"> <input
									type="checkbox" id="tw_3rd" name="tw_3rd" value="3"> <i
									class="icon-checkbox"></i>
							</label>
							</a>
						</div>
						<div class="named_class">
							<a class="named4">사화마녀<label class="checkbox"> <input
									type="checkbox" id="rd_3rd" name="rd_3rd" value="3"> <i
									class="icon-checkbox"></i>
							</label></a>
						</div>

						<!-- 검은마천루 3네임드  -->
						<div class="bs-sale-item3"></div>
						<div class="bs-sale-item3"></div>
						<div class="bs-sale-item3"></div>
						<div class="bs-sale-item3"></div>
						<div class="bs-sale-item3"></div>
						<div class="bs-sale-item3"></div>
						<div class="bs-sale-item3"></div>
						<div class="bs-sale-item3"></div>
						<div class="bs-sale-item3"></div>
						<div class="bs-sale-item3"></div>
						<div class="bs-sale-item3"></div>
						<div class="bs-sale-item3"></div>

						<!-- 소용돌이 사원  3네임드-->
						<div class="vt-sale-item3"></div>
						<div class="vt-sale-item3"></div>
						<div class="vt-sale-item3"></div>
						<div class="vt-sale-item3"></div>
						<div class="vt-sale-item3"></div>
						<div class="vt-sale-item3"></div>
						<div class="vt-sale-item3"></div>
						<div class="vt-sale-item3"></div>
						<div class="vt-sale-item3"></div>
						<div class="vt-sale-item3"></div>
						<div class="vt-sale-item3"></div>
						<div class="vt-sale-item3"></div>
						<div class="vt-sale-item3"></div>
						<div class="vt-sale-item3"></div>

						<!-- 태천왕릉 3네임드 -->
						<div class="tw-sale-item3"></div>
						<div class="tw-sale-item3"></div>
						<div class="tw-sale-item3"></div>
						<div class="tw-sale-item3"></div>
						<div class="tw-sale-item3"></div>
						<div class="tw-sale-item3"></div>
						<div class="tw-sale-item3"></div>
						<div class="tw-sale-item3"></div>
						<div class="tw-sale-item3"></div>
						<div class="tw-sale-item3"></div>
						<div class="tw-sale-item3"></div>
						<div class="tw-sale-item3"></div>

						<!-- 적몽의 비원 3네임드 -->
						<div class="rd-sale-item3"></div>
						<div class="rd-sale-item3"></div>
						<div class="rd-sale-item3"></div>
						<div class="rd-sale-item3"></div>

						<div class="named_class">
							<a class="named"> 촉마왕 <label class="checkbox"> <input
									type="checkbox" id="bs_4th" name="bs_4th" value="4"> <i
									class="icon-checkbox"></i>
							</label></a>
						</div>
						<div class="named_class">
							<a class="named2"> 흑풍마녀<label class="checkbox"> <input
									type="checkbox" id="vt_4th" name="vt_4th" value="4"> <i
									class="icon-checkbox"></i>
							</label></a>
						</div>
						<div class="named_class">
							<a class="named3"> 태천명왕<label class="checkbox"> <input
									type="checkbox" id="tw_4th" name="tw_4th" value="4"> <i
									class="icon-checkbox"></i>
							</label>
							</a>
						</div>

						<!-- 검은마천루 4네임드 -->
						<div class="bs-sale-item4"></div>
						<div class="bs-sale-item4"></div>
						<div class="bs-sale-item4"></div>
						<div class="bs-sale-item4"></div>

						<!-- 소용돌이 사원  -->
						<div class="vt-sale-item4"></div>
						<div class="vt-sale-item4"></div>
						<div class="vt-sale-item4"></div>
						<div class="vt-sale-item4"></div>

						<!-- 태천왕릉 4네임드 -->
						<div class="tw-sale-item4"></div>
						<div class="tw-sale-item4"></div>
						<div class="tw-sale-item4"></div>
						<div class="tw-sale-item4"></div>

						<div class="info2" style="display: none;">
							<a>등록할 팀의 레이드 종류를 선택해주세요 !</a>
						</div>

						<div style="height: 40px; padding-top: 20px; display: inline-block;">
							<input type="button" class="btn_submit" id="btn_submit"
								value="팀등록하기">
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resource/js/sale_register.js"></script>

</body>
</html>

