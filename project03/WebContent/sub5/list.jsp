<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="guestbook.model.Message" %>
<%@ page import="guestbook.service.MessageListView" %>
<%@ page import="guestbook.service.GetMessageListService" %>
<!-- 코어 태그 라이브러리를 사용하려면 JSP 페이지에 다음과 같이 taglib 디렉티브를 추가해야 한다. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	//page 파라미터 값을 이용해서 읽어올 페이지 번호를 생성
	String pageNumberStr = request.getParameter("page");
	int pageNumber = 1;
	if (pageNumberStr != null) {
		pageNumber = Integer.parseInt(pageNumberStr);
	}
	
	GetMessageListService messageListService =
			GetMessageListService.getInstance();
	//GetMessageListService.getMessageList() 메소드를 이용해서 지정한 페이지에 해당하는 메시지 목록을 구한다.
	MessageListView viewData = 
			messageListService.getMessageList(pageNumber);
%>
<!-- viewData를 EL에서 사용할 수 있도록 변수로 지정한다. -->
<c:set var="viewData" value="<%= viewData %>"/>
<!DOCTYPE html>
<html>
<head>
<title>방명록 메시지 목록</title>
</head>
<body>
<!-- 신규 메세지 -->
<form action="writeMessage.jsp" method="post">
이름: <input type="text" name="guestName"> <br>
암호: <input type="password" name="password"> <br>
메세지: <textarea name="message" cols="30" rows="3"></textarea> <br>
<input type="submit" value="메세지 남기기" />
</form>
<hr/>
<!-- 메세지가 없는 경우 안내 문구를 출력한다. -->
<c:if test="${viewData.isEmpty()}">
등록된 메세지가 없습니다.
</c:if>

<!-- 메세지가 존재할 경우 c:forEach를 이용하여 메세지를 차례대로 출력 -->
<c:if test="${!viewData.isEmpty()}">
<table border="1">
	<c:forEach var="message" items="${viewData.messageList}">
	<tr>
		<td>
		메세지 번호: ${message.id} <br/>
		손님 이름: ${message.guestName} <br/>
		메세지: ${message.message} <br/>
		<a href="confirmDeletion.jsp?messageId=${message.id}">[삭제하기]</a>
		</td>
	</tr>
	</c:forEach>
</table>

<!-- 전체 페이지 목록을 출력한다. -->
<c:forEach var="pageNum" begin="1" end="${viewData.pageTotalCount}">
<a href="list.jsp?page=${pageNum}">[${pageNum}}]</a>
</c:forEach>		

</c:if>
</body>
</html>