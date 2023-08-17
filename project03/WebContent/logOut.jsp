<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "util.Cookies" %>
<%
	response.addCookie(
		Cookies.createCookie("AUTH","","/",0)
	);
	session.invalidate();
%>
<html>
<head><title>로그아웃</title></head>
<body>
<script>
	alert("로그아웃 하였습니다..");
	location.href="index.jsp";
</script>
</body>
</html>