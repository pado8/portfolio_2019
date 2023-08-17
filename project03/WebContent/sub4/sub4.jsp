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
	<title>sub4(로그인)</title>
	<link rel="stylesheet" href="/css/basic.css"/>
	<link rel="stylesheet" href="/css/common.css"/>
	<link rel="stylesheet" href="/sub4/css/substyle4.css"/>	
    <script src="/js/jquery-1.9.1.min.js"></script>
    <script src="/js/menu.js"></script>
    <script src="/js/quickmenu.js"></script>
    <script src="/js/subscript.js"></script>
    <script src="/js/guide.js"></script>
    <script src="/sub4/js/script.js"></script>	
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
									<li><a href="/sub1/sub1.jsp">시정목표</a></li>
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
					<h2>통합 로그인</h2>
				</div>
				<div id="loginWrap">
					<div class="loginBox">
						<div class="loginIp">
							<div class="loginTit">
								<h3>LOGIN</h3>
							</div>
							<form action="/login.do" class="loginForm" method="post">
								<c:if test="${errors.idOrPwNotMatch}">
									<script type="text/javascript">
									alert("아이디와 암호가 일치하지 않습니다.");
									location.href="/login.do";
									</script>
								</c:if>								
								<div class="loginId">
									<label for="userId" class="labelStyle"><img src="/images/ico_id.png" alt=""/></label>
									<input type="text" id="userId" name="id" value="아이디를 입력하세요" class="guide"/>
									<c:if test="${errors.id}">ID를 입력하세요.</c:if>
								</div>
								<div class="loginPw">
									<label for="userPWD" class="labelStyle"><img src="/images/ico_pw.png" alt=""/></label>
									<input type="password" id="userPW" name="password" class="guide" value="비밀번호"/>
									<c:if test="${errors.password}">암호를 입력하세요.</c:if>
								</div>
								<button type="submit" value="로그인">로그인</button>
							</form>							
							<u:notLogin>
								<div class="loginbtn">
									<p><a href="/join.do">회원 가입</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">아이디 찾기</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">비밀번호 찾기</a></p>
								</div>
							</u:notLogin>			
						</div>
						<div class="loginSns">
							<p>통합인증센터에서 sns계정을 등록하셧나요?<a href="#"><img class="snsinfo"src="/images/ico_info.png" alt=""/></a></p>
							<h3>SNS 간편로그인</h3>
							<div class="snsIconbtn">
								<a href="#"><img src="/images/sns_facebook_o.png" alt=""/></a>
								<a href="#"><img src="/images/sns_naver_o.png" alt=""/></a>
								<a href="#"><img src="/images/sns_kakao_o.png" alt=""/></a>
							</div>
							<div class="snsIcontext">
								<a href="#">페이스북</a>
								<a href="#">네이버</a>
								<a href="#">카카오톡</a>
							</div>
						</div>
						<div class="loginVisit">
							<h3>비회원로그인</h3>
							<div class="visitButton fl">
								<a href="#"><button type="submit">비회원  인증 바로가기</button></a>
							</div>
							<span class="fl"></span>
						</div>
					</div>
				</div>
			</div>
		</div> <!-- id="mainVisual" end -->
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>