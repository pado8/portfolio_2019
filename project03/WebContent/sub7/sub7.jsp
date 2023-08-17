<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<title>sub7(글목록 보기)</title>
	<link rel="stylesheet" href="/css/basic.css"/>
	<link rel="stylesheet" href="/css/common.css"/>
	<link rel="stylesheet" href="/sub7/css/substyle7.css"/>
    <script src="/js/jquery-1.9.1.min.js"></script>
    <script src="/js/menu.js"></script>
    <script src="/js/quickmenu.js"></script>
    <script src="/js/subscript.js"></script>
    <script src="/js/guide.js"></script>
    <script src="/sub7/js/script.js"></script>	
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
					<h2>전자민원</h2>
					<p>함께하는 변화 도약하는 포항</p>
				</div>
				<div class="leftsideMenu">
					<ul class="smOnedepthlist cf">
						<li class="smOneDepth"><a href="/sub1/sub1.jsp">종합안내</a>
							<div class="smtwoInner">
								<ul class="smtwoDepth cf cf">
									<li><a href="/sub1/sub1.jsp">분야별 안내</a></li>
									<li><a href="/sub1/sub1.jsp">민원 봉사실</a></li>
									<li><a href="/sub1/sub1.jsp">개별주택가격열람</a></li>
									<li><a href="/sub1/sub1.jsp">공시지가 정보</a></li>
									<li><a href="/sub1/sub1.jsp">민원편람서식</a></li>
									<li><a href="/sub1/sub1.jsp">현수막 지정게시판 접수</a></li>
									<li><a href="/sub7/sub7.jsp">옥외광고물</a></li>
									<li><a href="/sub1/sub1.jsp">자주묻는질문</a></li>
								</ul>
							</div>
						</li>
						<li class="smOneDepth"><a href="/sub2/sub2.jsp">신청 및 조회</a>
							<div class="smtwoInner">
								<ul class="smtwoDepth cf cf">
									<li><a href="/sub3/sub3.jsp">민원신청</a></li>
									<li><a href="/sub3/sub3.jsp">시정에 바란다</a></li>
									<li><a href="/sub3/sub3.jsp">나의 민원조회</a></li>
									<li><a href="/sub2/sub2.jsp">민원처리공개</a></li>
									<li><a href="/sub3/sub3.jsp">정보공개청구</a></li>
									<li><a href="/sub3/sub3.jsp">문서24</a></li>
									<li><a href="/sub3/sub3.jsp">정부24</a></li>
									<li><a href="/sub3/sub3.jsp">전자가족관계 등록</a></li>
									<li><a href="/sub3/sub3.jsp">분야별 신고센터</a></li>
								</ul>
							</div>
						</li>
						<li class="smOneDepth"><a href="/login.do">민원 콜센터</a>
							<div class="smtwoInner">
								<ul class="smtwoDepth cf">
									<li><a href="/login.do">포항시 빨리콜(8282)</a></li>
									<li><a href="/login.do">110정부 민원안내 콜센터</a></li>
								</ul>
							</div>
						</li>
						<li class="smOneDepth"><a href="/sub5/sub5.jsp">규제개혁</a>
							<div class="smtwoInner">
								<ul class="smtwoDepth cf">
									<li><a href="/sub5/sub5.jsp">행정규제란?</a></li>
									<li><a href="/sub5/sub5.jsp">포항시 핵심 추진과제</a></li>
									<li><a href="/sub5/sub5.jsp">규제신고센터</a></li>
									<li><a href="/sub5/sub5.jsp">전국규제지도</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div id="mainRight">
				<div id="mainTop">
					<h2>자유게시판</h2>
				</div>
				<div id="noticeBorad">
					<div class="nbContent">
						<div class="serchWrap">
							<div class="serchboxsize">
								<select name="serachOption" title="검색옵션" class="serachOption">
									<option value="제목">제목</option>
									<option value="내용">내용</option>
									<option value="작성자">작성자</option>
								</select>
								<input name="serchValue" class="serchBox guide" type="text" value="검색어를 입력하시오.">
								<button title="검색" class="serchBtn">검색</button>
							</div>
						</div>
						<div class="nbTitle cf fl">
							<div class="nbtNumber fl">번호</div>
							<div class="nbtTitle">제목</div>
							<div class="nbtDivision fl">작성자</div>
							<div class="nbtDate fl">작성일</div>
							<div class="nbtCount fl">조회수</div>
						</div>
						<c:if test="${articlePage.hasNoArticles()}">
							<div>
								<div>게시글이 없습니다.</div>
							</div>
						</c:if>
						<c:forEach var="article" items="${articlePage.content}">
						  <div class="contentTit">
						    <div>${article.number}</div>
						    <div class="title">
						    	<a href="read.do?no=${article.number}&pageNo=${articlePage.currentPage}">
						    		<c:out value="${article.title}"/>
						    	</a>
						    </div>
						    <div>${article.writer.name}</div>
						   	<div><fmt:formatDate value="${article.regDate}" pattern="yyyy.MM.dd" /></div>
						    <div>${article.readCount}</div>
						  </div>
						</c:forEach>  
					</div>
				</div>
				<c:if test="${articlePage.hasArticles()}">
				  <div class="pageNavicen">
				    <div class="pageNavi">
				    	<c:if test="${articlePage.startPage > 5 }">
				    		<a href="list.do?pageNo=${articlePage.startPage - 5}">[이전]</a>
				    	</c:if>
				    	<c:forEach 	var="pNo"
				    				begin="${articlePage.startPage }"
				    				end="${articlePage.endPage }">
				    		<a href="list.do?pageNo=${pNo}">[${pNo}]</a>			
						</c:forEach>
						<c:if test="${articlePage.endPage < articlePage.totalPages}">
							<a href="list.do?pageNo=${articlePage.startPage + 5 }">[다음]</a>
						</c:if>
					</div>
					<div class="writebtn"><a href="/article/write.do">[글쓰기]</a></div>
				  </div>
				</c:if>					
			</div>
		</div>
	</div>
	<jsp:include page="/footer.jsp" flush="false"/>	
</div>	
</body>
</html>