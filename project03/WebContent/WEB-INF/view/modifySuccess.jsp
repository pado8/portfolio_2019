<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modifySuccessSuccess.jsp</title>
</head>
<body>
	게시글을 수정했습니다.
	<br>
	<a href="${ctxPath}/article/list.do">[게시글목록보기]</a>
	<a href="${ctxPath}/article/read.do?no=${modReq.articleNumber}">[게시글내용보기]</a>
</body>
</html>