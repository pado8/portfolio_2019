<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정완료</title>
</head>
<body>
<script type="text/javascript">
	var txt;
	var r = confirm("글수정이 완료되었습니다.\n 글내용을 보고싶으면 확인버튼을 눌러주세요.\n 취소를 누루시면 글목록으로 갑니다.");
	if (r == true) {
		location.href="/article/read.do?no=${modReq.articleNumber}";
	} else {
		location.href="/article/list.do";
	}
</script>
</body>
</html>