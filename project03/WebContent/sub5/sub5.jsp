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
<!DOCTYPE HTML>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="Generator" content="Notepad++"/>
	<meta name="Author" content="노태효"/>
	<meta name="Keywords" content="포트폴리오, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생포트폴리오, 웹게시판"/>
	<meta name="Description" content="노태효의 첫번째 포트폴리오 페이지 입니다."/>
	<!-- <meta http-equiv="Expires" content="-1">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Cache-Control" content="No-Cache"> -->	
	<title>sub5(달력)</title>
	<link rel="stylesheet" href="/css/basic.css"/>
	<link rel="stylesheet" href="/css/common.css"/>
	<link rel="stylesheet" href="/sub5/css/substyle5.css"/>
    <script src="/js/jquery-1.9.1.min.js"></script>
    <script src="/js/menu.js"></script>
    <script src="/js/quickmenu.js"></script>
    <script src="/js/subscript.js"></script>
</head>
<body>
	<div id="wrap">
		<jsp:include page="/header.jsp" flush="false"/>
		<div class="quickmenuBox">
			<span class="quick_toggle"><span class="indent"></span></span>
			<div class="quickmenu">
				<ul class="quick_icon">
					<li class="quick01"><a href="#"><span class="icon"></span>전체메뉴</a></li>
					<li class="quick02"><a href="#"><span class="icon"></span>청사안내</a></li>
					<li class="quick03"><a href="#"><span class="icon"></span>직원안내</a></li>
					<li class="quick04"><a href="#"><span class="icon"></span>민원신청</a></li>
					<li class="quick05"><a href="#"><span class="icon"></span>문화관광</a></li>
					<li class="quick06"><a href="#"><span class="icon"></span>버스정보</a></li>
					<li class="quick07"><a href="#"><span class="icon"></span>문화행사</a></li>
				</ul>
			</div>
		</div>
		<div id="mainVisual">
				<div id="mainLeft">
					<div class="leftmenuTit">
						<h2>분야별 정보</h2>
						<p>함께하는 변화 도약하는 포항</p>
					</div>
					<div class="leftsideMenu">
						<ul class="smOnedepthlist cf">
							<li class="smOneDepth"><a href="/sub1/sub1.jsp">복지</a>
								<div class="smtwoInner">
									<ul class="smtwoDepth cf cf">
										<li><a href="/sub5/sub5.jsp">일반</a></li>
										<li><a href="/sub5/sub5.jsp">청소년</a></li>
										<li><a href="/sub5/sub5.jsp">어린이</a></li>
										<li><a href="/sub5/sub5.jsp">여성</a></li>
										<li><a href="/sub5/sub5.jsp">노인</a></li>
										<li><a href="/sub5/sub5.jsp">장애인</a></li>
										<li><a href="/sub5/sub5.jsp">복지소식</a></li>
									</ul>
								</div>
							</li>
							<li class="smOneDepth"><a href="/sub2/sub2.jsp">건강</a>
								<div class="smtwoInner">
									<ul class="smtwoDepth cf cf">
										<li><a href="/sub5/sub5.jsp">건강도시포항</a></li>
										<li><a href="/sub5/sub5.jsp">좋은식단,건강음식</a></li>
										<li><a href="/sub5/sub5.jsp">야간병원,당번약국</a></li>
										<li><a href="/sub5/sub5.jsp">식품위생</a></li>
										<li><a href="/sub5/sub5.jsp">건강소식</a></li>
									</ul>
								</div>
							</li>
							<li class="smOneDepth"><a href="/sub5/sub5.jsp">교통</a>
								<div class="smtwoInner">
									<ul class="smtwoDepth cf">
										<li><a href="/sub3/sub3.jsp">자동차</a></li>
										<li><a href="/sub3/sub3.jsp">주차</a></li>
										<li><a href="/sub3/sub3.jsp">시내버스</a></li>
										<li><a href="/sub3/sub3.jsp">공항</a></li>
										<li><a href="/sub3/sub3.jsp">조종면허시험</a></li>
										<li><a href="/sub3/sub3.jsp">교통소식</a></li>
										<li><a href="/sub5/sub5.jsp">투자</a></li>
										<li><a href="/sub3/sub3.jsp">투자환경</a></li>
										<li><a href="/sub3/sub3.jsp">산업단지</a></li>
									</ul>
								</div>
							</li>
							<li class="smOneDepth"><a href="/sub5/sub5.jsp">농축수산</a>
								<div class="smtwoInner">
									<ul class="smtwoDepth cf">
										<li><a href="/sub5/sub5.jsp">농정</a></li>
										<li><a href="/sub5/sub5.jsp">수산</a></li>
										<li><a href="/sub5/sub5.jsp">축산</a></li>
										<li><a href="/sub5/sub5.jsp">구룡포 과메기 문화관</a></li>
										<li><a href="/sub5/sub5.jsp">농축수산소식</a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>												
				</div>
			<div id="mainRight">
				<div id="mainTop">
					<h2>방 명 록</h2>
				</div>
				<div id="guestbookWrap">
					<!-- 신규 메세지 -->
					<form class="writeform" action="/check/writeMessage.jsp" method="post">
						<div class="gbwTit">방명록 남기기</div>
						<div class="namebox">
							<span>이름:</span> <input type="text" name="guestName">
						</div> <br>
						<div class="passbox">
							<span>암호:</span> <input type="password" name="password">
						</div> <br>
						<div class="writebox">
							<span class="fl">메세지:</span> <textarea name="message" cols="130" rows="8"></textarea>
						</div> <br>
						<div class="writebtn">
							<input type="submit" value="메세지 남기기" />
						</div>
					</form>
					<!-- 메세지가 없는 경우 안내 문구를 출력한다. -->
					<c:if test="${viewData.isEmpty()}">
					등록된 메세지가 없습니다.
					</c:if>
				
					<!-- 메세지가 존재할 경우 c:forEach를 이용하여 메세지를 차례대로 출력 -->
					<c:if test="${!viewData.isEmpty()}">
					
					<div class="nbContent">
						<div class="nbTitle cf fl">
							<div class="nbtNumber fl">번호</div>
							<div class="nbtDivision fl">이름</div>
							<div class="nbtTitle">내용</div>
							<div class="nbtDate fl">삭제</div>
						</div>
						<c:forEach var="message" items="${viewData.messageList}">
						  <div class="contentTit">
						    <div  class="nbtNumber">${message.id}</div>
						    <div>${message.guestName}</div>
   						    <div class="title">${message.message}</div>
						   	<div><a href="/check/confirmDeletion.jsp?messageId=${message.id}">[삭제하기]</a></div>
						  </div>						
						</c:forEach>
					</div>
					<!-- 전체 페이지 목록을 출력한다. -->
					<div class="pageNumbox">
						<c:forEach var="pageNum" begin="1" end="${viewData.pageTotalCount}">
							<a href="/sub5/sub5.jsp?page=${pageNum}">[${pageNum}]</a>
						</c:forEach>
					</div>
					</c:if>
				</div>
			</div>
		</div>
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>