<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <% session.invalidate(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>log out</title>
</head>
<body>

	<%response.sendRedirect("main.jsp");%>

</body>
</html>