<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Insert title here</title>

<script>
function backpage() {
	
	<%response.sendRedirect("./menu.jsp");%>
	
}


</script>

</head>
<body>

공사중~

<input type="button" value="뒤로가기" onclick="backpage();"/>



</body>
</html>