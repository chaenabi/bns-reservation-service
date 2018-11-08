<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="import"
	href="${pageContext.request.contextPath}/resource/jsp/common/header.jsp">
</head>
</head>
<body>
<video autoplay loop id="background_video" muted>
		<source
			src="${pageContext.request.contextPath}/resource/assets/video/reddream.mp4"
			type="video/mp4">
	</video>
		<div
		style="position: absolute; text-align: center; right: 0; bottom: 0; min-width: 100%; min-height: 100%;">
		<h1
			style="font-weight: bold; text-align: center; margin-top: 50px; margin-bottom: 10px;background: #fff; color: #f00;">
			공사중.</h1>
	</div>
</body>
</html>