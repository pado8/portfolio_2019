<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 완료</title>
</head>
<body>
<script type="text/javascript">
	var txt;
	var r = confirm("글쓰기가 완료되었습니다.\n 글내용을 보고싶으면 확인버튼을 눌러주세요.\n 취소를 누루시면 글목록으로 갑니다.");
	if (r == true) {
		location.href="/article/read.do?no=${newArticleNo}";
	} else {
		location.href="/article/list.do";
	}
</script>
</body>
</html>