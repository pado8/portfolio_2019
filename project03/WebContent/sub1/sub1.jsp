<%@ page contentType="text/html; charset=UTF-8" %>
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
	<title>sub1(게시판)</title>
	<link rel="stylesheet" href="/css/basic.css"/>
	<link rel="stylesheet" href="/css/common.css"/>
	<link rel="stylesheet" href="/sub1/css/substyle1.css"/>
    <script src="/js/jquery-1.9.1.min.js"></script>
    <script src="/js/menu.js"></script>
    <script src="/js/quickmenu.js"></script>
    <script src="/js/subscript.js"></script>
</head>
<body>
	<div id="wrap">
		<jsp:include page="/subheader.jsp" flush="false"/>
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
					<h2>함께하는 포항</h2>
					<p>함께하는 변화 도약하는 포항</p>
				</div>
				<div class="leftsideMenu">
					<ul class="smOnedepthlist cf">
						<li class="smOneDepth"><a href="/sub1/sub1.jsp">공지사항</a>
							<div class="smtwoInner">
								<ul class="smtwoDepth cf">
									<li><a href="/sub1/sub1.jsp">공지사항</a></li>
									<li><a href="/sub1/sub1.jsp">구)기관단체 공지사항</a></li>
									<li><a href="/sub1/sub1.jsp">기관단체 공지사항</a></li>
								</ul>
							</div>
						</li>
						<li class="smOneDepth"><a href="/sub2/sub2.jsp">고시공고</a>
							<div class="smtwoInner">
								<ul class="smtwoDepth cf">
									<li><a href="/sub2/sub2.jsp">고시공고</a></li>
									<li><a href="/sub2/sub2.jsp">분묘개장공고</a></li>
									<li><a href="/sub2/sub2.jsp">타시군 공고</a></li>
									<li><a href="/sub2/sub2.jsp">이전고시공고</a></li>
								</ul>
							</div>
						</li>
						<li class="smOneDepth"><a href="/sub3/sub3.jsp">입찰정보</a>
							<div class="smtwoInner">
								<ul class="smtwoDepth cf">
									<li><a href="/sub3/sub3.jsp">입찰정보</a></li>
									<li><a href="/sub3/sub3.jsp">수의계약공개 </a></li>
									<li><a href="/sub3/sub3.jsp">계약공개(재정관리과)</a></li>
									<li><a href="/sub3/sub3.jsp">계약공개(맑은물사업본부)</a></li>
								</ul>
							</div>
						</li>
						<li class="smOneDepth"><a href="/login.do">시민참여</a>
							<div class="smtwoInner">
								<ul class="smtwoDepth cf">
									<li><a href="/login.do">온라인설문</a></li>
									<li><a href="/login.do">시민아이디어 제안 </a></li>
									<li><a href="/login.do">민원모니터</a></li>
									<li><a href="/login.do">이런모습좋아요</a></li>
									<li><a href="/login.do">무료홍보방</a></li>
									<li><a href="/login.do">강우량(강수량)</a></li>
									<li><a href="/login.do">포항시 채용정보</a></li>
									<li><a href="/login.do">포항시 퀴즈이벤트</a></li>
								</ul>
							</div>
						</li>
						<li class="smOneDepth"><a href="/sub5/sub5.jsp">법율상담</a>
							<div class="smtwoInner">
								<ul class="smtwoDepth cf">
									<li><a href="/sub5/sub5.jsp">무료법률상담안내</a></li>
									<li><a href="/sub5/sub5.jsp">찾기쉬운생활법령정보</a></li>
									<li><a href="/sub5/sub5.jsp">사이버상담</a></li>
									<li><a href="/sub5/sub5.jsp">경북도무료법률상담 </a></li>
									<li><a href="/sub5/sub5.jsp">대한법률구조공단 </a></li>
									<li><a href="/sub5/sub5.jsp">온라인행정심판</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div id="mainRight">
				<div id="mainTop">
					<h2>게시판</h2>
				</div>
				<div id="noticeBorad">
					<div id="nbWrap">
						<div class="nbContent">
							<div class="nbTitle cf fl">
								<div class="nbtNumber fl">번호</div>
								<div class="nbtDivision">구분</div>
								<div class="nbtTitle fl">제목</div>
								<div class="nbtCount fl">조회수</div>
								<div class="nbtDate fl">등록일</div>
							</div>
							<div>
								<input type="radio" id="nbClick1" name="nbClick"/>
								<div>1</div>
								<div>공지</div>
								<label for="nbClick1"><span class="nbcTitle">게시판 이용 주의 사항! (필독)</span></label>
								<div>281</div>
								<div>2019-06-13</div>
								<div class="contentWrap">
									<div class="subject">
										게시판 이용 주의 사항! (필독)
									</div>
									<div class="content">
										<p>이 게시판은 자유 게시판이며 아무나 이용가능하다 노태효의 포트폴리오 게시판이며 임의대로 복사 및 배포가 불가능하며 보는것은 자유롭다 피드백이 있으면 pado_8@naver.com으로 피드백을 보내주고 이제 css를 마쳤으니 다음 제이쿼리 등을 다보고 피드백을 주면 좋을것 같다</p><br/>
									</div>
								</div>
							</div>
							<div>
								<input type="radio" id="nbClick2" name="nbClick"/>
								<div>2</div>
								<div>공지</div>
								<label for="nbClick2"><span>게시판 작성 요령 (필독)</span></label>
								<div>298</div>
								<div>2019-06-17</div>
								<div class="contentWrap">
									<div class="subject">
										게시판 작성 요령 (필독)
									</div>
									<div class="content">
										<p>법률안에 이의가 있을 때에는 대통령은 제1항의 기간내에 이의서를 붙여 국회로 환부하고, 그 재의를 요구할 수 있다. 국회의 폐회중에도 또한 같다. 이 헌법시행 당시의 대법원장과 대법원판사가 아닌 법관은 제1항 단서의 규정에 불구하고 이 헌법에 의하여 임명된 것으로 본다.</p><br/>
									</div>
								</div>
							</div>
							<div>
								<input type="radio" id="nbClick3" name="nbClick"/>
								<div>3</div>
								<div>자유</div>
								<label for="nbClick3"><span>안녕하세요! 오늘 가입했습니다.</span></label>
								<div>75</div>
								<div>2019-06-04</div>
								<div class="contentWrap">
									<div class="subject">
										안녕하세요! 오늘 가입했습니다.
									</div>
									<div class="content">
										<p>언론·출판에 대한 허가나 검열과 집회·결사에 대한 허가는 인정되지 아니한다. 중앙선거관리위원회는 법령의 범위안에서 선거관리·국민투표관리 또는 정당사무에 관한 규칙을 제정할 수 있으며, 법률에 저촉되지 아니하는 범위안에서 내부규율에 관한 규칙을 제정할 수 있다.</p><br/>
									</div>
								</div>
							</div>
							<div>
								<input type="radio" id="nbClick4" name="nbClick"/>
								<div>4</div>
								<div>자유</div>
								<label for="nbClick4"><span>헌법재판소 재판관</span></label>
								<div>29</div>
								<div>2019-06-24</div>
								<div class="contentWrap">
									<div class="subject">
										헌법재판소 재판관
									</div>
									<div class="content">
										<p>헌법재판소 재판관은 탄핵 또는 금고 이상의 형의 선고에 의하지 아니하고는 파면되지 아니한다. 공공필요에 의한 재산권의 수용·사용 또는 제한 및 그에 대한 보상은 법률로써 하되, 정당한 보상을 지급하여야 한다.</p><br/>
									</div>
								</div>
							</div>
							<div>
								<input type="radio" id="nbClick5" name="nbClick"/>
								<div>5</div>
								<div>자유</div>
								<label for="nbClick5"><span>대통령관련 법률정보</span></label>
								<div>49</div>
								<div>2019-06-04</div>
								<div class="contentWrap">
									<div class="subject">
										대통령관련 법률정보
									</div>
									<div class="content">
										<p>대통령은 내란 또는 외환의 죄를 범한 경우를 제외하고는 재직중 형사상의 소추를 받지 아니한다. 광물 기타 중요한 지하자원·수산자원·수력과 경제상 이용할 수 있는 자연력은 법률이 정하는 바에 의하여 일정한 기간 그 채취·개발 또는 이용을 특허할 수 있다.</p><br/>
									</div>
								</div>
							</div>
							<div>
								<input type="radio" id="nbClick6" name="nbClick"/>
								<div>6</div>
								<div>자유</div>
								<label for="nbClick6"><span>국가와 민족문화</span></label>
								<div>171</div>
								<div>2019-06-09</div>
								<div class="contentWrap">
									<div class="subject">
										국가와 민족문화
									</div>
									<div class="content">
										<p>국가는 전통문화의 계승·발전과 민족문화의 창달에 노력하여야 한다. 피고인의 자백이 고문·폭행·협박·구속의 부당한 장기화 또는 기망 기타의 방법에 의하여 자의로 진술된 것이 아니라고 인정될 때 또는 정식재판에 있어서 피고인의 자백이 그에게 불리한 유일한 증거일 때에는 이를 유죄의 증거로 삼거나 이를 이유로 처벌할 수 없다.</p><br/>
									</div>
								</div>
							</div>
							<div>
								<input type="radio" id="nbClick7" name="nbClick"/>
								<div>7</div>
								<div>자랑</div>
								<label for="nbClick7"><span>국가의 농수산물 수급균형</span></label>
								<div>428</div>
								<div>2019-06-01</div>
								<div class="contentWrap">
									<div class="subject">
										국가의 농수산물 수급균형
									</div>
									<div class="content">
										<p>국가는 농수산물의 수급균형과 유통구조의 개선에 노력하여 가격안정을 도모함으로써 농·어민의 이익을 보호한다. 정당의 설립은 자유이며, 복수정당제는 보장된다.</p><br/>
									</div>
								</div>
							</div>
							<div>
								<input type="radio" id="nbClick8" name="nbClick"/>
								<div>8</div>
								<div>자랑</div>
								<label for="nbClick8"><span>대통령이 취임 후 하는것</span></label>
								<div>647</div>
								<div>2019-06-13</div>
								<div class="contentWrap">
									<div class="subject">
										대통령이 취임 후 하는것
									</div>
									<div class="content">
										<p>대통령은 취임에 즈음하여 다음의 선서를 한다. 선거에 있어서 최고득표자가 2인 이상인 때에는 국회의 재적의원 과반수가 출석한 공개회의에서 다수표를 얻은 자를 당선자로 한다.</p><br/>
									</div>
								</div>
							</div>
							<div>
								<input type="radio" id="nbClick9" name="nbClick"/>
								<div>9</div>
								<div>자랑</div>
								<label for="nbClick9"><span>계엄령의 기초 정보</span></label>
								<div>557</div>
								<div>2019-06-05</div>
								<div class="contentWrap">
									<div class="subject">
										계엄령의 기초 정보
									</div>
									<div class="content">
										<p>계엄을 선포한 때에는 대통령은 지체없이 국회에 통고하여야 한다. 언론·출판에 대한 허가나 검열과 집회·결사에 대한 허가는 인정되지 아니한다. 정당의 설립은 자유이며, 복수정당제는 보장된다.</p><br/>
									</div>
								</div>
							</div>
							<div id="nbfooter">
								<div class="pageNavicen">
									<div class="pageNavi">
										<a href="#"><span>&lang;</span></a>
										<a href="#" class="firstnv nbul"><span>1</span></a>
										<a href="#" class="nbul"><span>2</span></a>
										<a href="#" class="nbul"><span>3</span></a>
										<a href="#" class="nbul"><span>4</span></a>
										<a href="#" class="nbul"><span>5</span></a>
										<a href="#"><span>&rang;</span></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> <!-- id="mainVisual" end -->
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>