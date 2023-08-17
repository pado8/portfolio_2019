<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="guestbook.service.DeleteMessageService" %>
<%@ page import="guestbook.service.InvalidPassowrdException" %>
<%
	int messageId = Integer.parseInt(request.getParameter("messageId"));
	String password = request.getParameter("password");
	boolean invalidPassowrd = false;
	try{
		DeleteMessageService deleteService = DeleteMessageService.getInstance();
		deleteService.deleteMessage(messageId,password);
	} catch(InvalidPassowrdException ex) {
		invalidPassowrd = true;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 메시지 삭제함</title>
</head>
<body>
<% if(!invalidPassowrd) { %>
<script type="text/javascript">
	alert("메시지를 삭제하였습니다.");
	location.href="/sub5/sub5.jsp";
</script>
<%} else { %>
<script type="text/javascript">
	alert("입력한 암호가 올바르지 않습니다. 암호를 확인해주세요.");
	 history.back(-1);
</script>
<% } %>
</body>
</html>