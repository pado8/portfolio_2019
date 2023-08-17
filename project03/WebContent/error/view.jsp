<%@ page contentType = "text/html; charset=utf-8" %>  
<%@ page isErrorPage = "true" %>  
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>viewErrormessage.jsp</title>
	
</head>
<body>
	오청 처리 과정에서 에러가 발생하였습니다 <br/>
	빠른 시간내에 문제를 해결하도록 하겠습니다.
	<p>
		에러타입:<%= exception.getClass().getName() %> <br/>
		에러메세지:<%= exception.getMessage() %> <br/>
	
	</p>
</body>
</html>
<!--
만약 에러페이지의 길이가 512바이ㅐ트보다 작다면, 인터넥 익스플로러는 이페이지가 출력하는 에러페이지를 출력하지 않고 자체적으로 제공하는 http오류메세지를 화면에 출력한다. 인터넥익스플로러에서도 에러 페이지 내용을 올바르게 출력하려면 응답 결과에 이주석과 같은 내용을 포함시켜서 에러 데이터가 512바이트를 넘도록 해야한다
-->