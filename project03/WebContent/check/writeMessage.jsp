<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page errorPage="errorView.jsp" %>
<%@ page import="guestbook.model.Message" %>
<%@ page import="guestbook.service.WriteMessageService" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="message" class="guestbook.model.Message">
	<jsp:setProperty name="message" property="*" />
</jsp:useBean>
<%
	WriteMessageService writeService = WriteMessageService.getInstance();
	writeService.write(message);
%>
<html>
<head>
<title>방명록에 메시지 남김</title>
</head>
<body>

<script type="text/javascript">
	alert("방명록에 메시지를 남겼습니다.");
	location.href="/sub5/sub5.jsp";
</script>
</body>
</html>