<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
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
	<title>sub9(비밀번호 변경)</title>
	<link rel="stylesheet" href="/css/basic.css"/>
	<link rel="stylesheet" href="/css/common.css"/>
	<link rel="stylesheet" href="/sub9/css/substyle9.css"/>	
    <script src="/js/jquery-1.9.1.min.js"></script>
    <script src="/js/menu.js"></script>
    <script src="/js/quickmenu.js"></script>
    <script src="/js/subscript.js"></script>
    <script src="/js/guide.js"></script>
    <script src="/sub9/js/script.js"></script>	
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
					<h2>도약하는 포항</h2>
					<p>함께하는 변화 도약하는 포항</p>
				</div>
				<div class="leftsideMenu">
					<ul class="smOnedepthlist cf">
						<li class="smOneDepth"><a href="/sub1/sub1.jsp">포항비전</a>
							<div class="smtwoInner">
								<ul class="smtwoDepth cf cf">
									<li><a href="/sub9/sub9.jsp">시정목표</a></li>
									<li><a href="/sub1/sub1.jsp">2019 시정연설</a></li>
									<li><a href="/sub1/sub1.jsp">2019 시정방향</a></li>
									<li><a href="/sub1/sub1.jsp">시승격 70년 기념사업</a></li>
								</ul>
							</div>
						</li>
						<li class="smOneDepth"><a href="/sub2/sub2.jsp">포항소식</a>
							<div class="smtwoInner">
								<ul class="smtwoDepth cf cf">
									<li><a href="/sub2/sub2.jsp">열린포항</a></li>
									<li><a href="/sub2/sub2.jsp">포항뉴스</a></li>
									<li><a href="/sub2/sub2.jsp">주요일정</a></li>
									<li><a href="/sub2/sub2.jsp">행사·축제</a></li>
									<li><a href="/sub2/sub2.jsp">공연·전시</a></li>
								</ul>
							</div>
						</li>
						<li class="smOneDepth"><a href="/sub3/sub3.jsp">포항현황</a>
							<div class="smtwoInner">
								<ul class="smtwoDepth cf">
									<li><a href="/sub3/sub3.jsp">포항의상징</a></li>
									<li><a href="/sub3/sub3.jsp">기본현황</a></li>
									<li><a href="/sub3/sub3.jsp">포항 홍보영상</a></li>
									<li><a href="/sub3/sub3.jsp">역대 시장 소개</a></li>
									<li><a href="/sub3/sub3.jsp">포항시 중점과제</a></li>
									<li><a href="/sub3/sub3.jsp">시정현황 (E-BOOK)</a></li>
									<li><a href="/sub3/sub3.jsp">포항통계</a></li>
									<li><a href="/sub3/sub3.jsp">시정백서</a></li>
								</ul>
							</div>
						</li>
						<li class="smOneDepth"><a href="/login.do">포항안내</a>
							<div class="smtwoInner">
								<ul class="smtwoDepth cf">
									<li><a href="/login.do">포항시사</a></li>
									<li><a href="/sub5/sub5.jsp">시청사 안내</a></li>
									<li><a href="/sub5/sub5.jsp">시청 행정조직</a></li>
									<li><a href="/sub5/sub5.jsp">시청 찾아오시는길</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>								
			</div>
			<div id="mainRight">
				<div id="mainTop">
					<h2>비밀번호 변경</h2>
				</div>
				<div id="pwchWrap">
					<div class="pwchBox">
						<h3>비밀번호 변경</h3>
						<div class="pwchIp">
							<form action="/changePwd.do" method="post">
								<div>
									<span>비밀번호:</span><input type="password" name="curPwd" >
									<c:if test="${errors.curPwd}">암호를 입력하세요.</c:if>
									<c:if test="${errors.badCurPwd}">현재 암호가 일치하지 않습니다.</c:if>
								</div>
								<div>
									<span>비밀번호 확인:</span><input type="password" name="newPwd" >
									<c:if test="${errors.newPwd}">새 암호를 입력하세요.</c:if>
								</div>
								<div class="pwchBtn">
									<input type="submit" value="암호 변경">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div> <!-- id="mainVisual" end -->
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>