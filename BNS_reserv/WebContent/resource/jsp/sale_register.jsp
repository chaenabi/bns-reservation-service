<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/sale_register.css">
<script type="text/javascript" src="jquery.js"></script>

</head>
<body>

	<div class="container">
		<div class="content">

			<div class="mainform">

				<h2>등록</h2>
				<hr>
				<div class="">
					<a>팀명</a> : <input type="text" value=""> <input
						type="button" value="중복체크"> <br> 레이드종류 : 검은 마천루 <input
						type="radio" name="raid"> 소용돌이 사원 <input type="radio"
						name="raid"> 태천왕릉 <input type="radio" name="raid">
					적몽의 비원 <input type="radio" name="raid" disabled="disabled">
				</div>
				<hr>

				<h3>판매할 아이템</h3>
				<hr>
				<div class="sales">
					<a> 천독룡 </a> <br>


					<div class="sale-item">
						<span class="sale-item-name"> <a> 천독귀걸이(번개)</a>
						</span> <span> <input type="checkbox" name="bs-1stitem">
						</span> <input type="text" placeholder="금액">
					</div>

					<div class="sale-item">
						<span class="sale-item-name"> <a> 천독귀걸이(화염)</a>
						</span> <span> <input type="checkbox" name="bs-1stitem">
						</span> <input type="text" placeholder="금액">
					</div>

					<br>


					<div class="sale-item">
						<span class="sale-item-name"> <a> 천독반지(바람)</a>
						</span> <span class="sale-item-check"> <input type="checkbox"
							name="bs-1stitem">
						</span> <input type="text" placeholder="금액">
					</div>

					<div class="sale-item">
						<span class="sale-item-name"> <a> 천독반지(암흑)</a>
						</span> <span class="sale-item-check"> <input type="checkbox"
							name="bs-1stitem">
						</span> <input type="text" placeholder="금액">
					</div>
					<a> 천독룡 </a> <br>


					<div class="sale-item">
						<a> 천독귀걸이(번개)</a> <span class="sale-item-check"> <input
							type="checkbox" name="bs-1stitem">
						</span> <input type="text" placeholder="금액">
					</div>

					<div class="sale-item">
						<a> 천독귀걸이(화염)</a> <span class="sale-item-check"> <input
							type="checkbox" name="bs-1stitem">
						</span> <input type="text" placeholder="금액">
					</div>

					<br>


					<div class="sale-item">
						<span class="sale-item-name"> <a> 천독반지(바람)</a>
						</span> <span class="sale-item-check"> <input type="checkbox"
							name="bs-1stitem">
						</span> <input type="text" placeholder="금액">
					</div>

					<div class="sale-item">
						<span class="sale-item-name"> <a> 천독반지(암흑)</a>
						</span> <span class="sale-item-check"> <input type="checkbox"
							name="bs-1stitem">
						</span> <input type="text" placeholder="금액">
					</div>

					<a> 천독룡 </a> <br>


					<div class="sale-item">
						<a> 천독귀걸이(번개)</a> <span class="sale-item-check"> <input
							type="checkbox" name="bs-1stitem">
						</span> <input type="text" placeholder="금액">
					</div>

					<div class="sale-item">
						<a> 천독귀걸이(화염)</a> <span class="sale-item-check"> <input
							type="checkbox" name="bs-1stitem">
						</span> <input type="text" placeholder="금액">
					</div>

					<br>


					<div class="sale-item">
						<span class="sale-item-name"> <a> 천독반지(바람)</a>
						</span> <span class="sale-item-check"> <input type="checkbox"
							name="bs-1stitem">
						</span> <input type="text" placeholder="금액">
					</div>

					<div class="sale-item">
						<span class="sale-item-name"> <a> 천독반지(암흑)</a>
						</span> <span class="sale-item-check"> <input type="checkbox"
							name="bs-1stitem">
						</span> <input type="text" placeholder="금액">
					</div>


					<a> 천독룡 </a> <br>


					<div class="sale-item">
						<a> 천독귀걸이(번개)</a> <span class="sale-item-check"> <input
							type="checkbox" name="bs-1stitem">
						</span> <input type="text" placeholder="금액">
					</div>

					<div class="sale-item">
						<a> 천독귀걸이(화염)</a> <span class="sale-item-check"> <input
							type="checkbox" name="bs-1stitem">
						</span> <input type="text" placeholder="금액">
					</div>

					<br>


					<div class="sale-item">
						<span class="sale-item-name"> <a> 천독반지(바람)</a>
						</span> <span class="sale-item-check"> <input type="checkbox"
							name="bs-1stitem">
						</span> <input type="text" placeholder="금액">
					</div>

					<div class="sale-item">
						<span class="sale-item-name"> <a> 천독반지(암흑)</a>
						</span> <span class="sale-item-check"> <input type="checkbox"
							name="bs-1stitem">
						</span> <input type="text" placeholder="금액">
					</div>

				</div>

			</div>

			<div class="mainform">

				<input type="button" value="팀등록하기">

			</div>

		</div>

	</div>

</body>
</html>