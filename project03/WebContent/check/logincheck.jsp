<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 체크</title>
</head>
<body>
<u:isLogin>
<script type="text/javascript">
	alert("로그인 성공 메인페이지로 이동합니다.");
	location.href="/index.jsp";
</script>
</u:isLogin>
<u:notLogin>
<script type="text/javascript">
	alert("로그인 해주세요.");
	location.href="/login.do";
</script>
</u:notLogin>
</body>
</html>