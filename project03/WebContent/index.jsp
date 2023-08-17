<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="Generator" content="Notepad++"/>
	<meta name="Author" content="노태효"/>
	<meta name="Keywords" content="포트폴리오, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생포트폴리오, 웹게시판"/>
	<meta name="Description" content="노태효의 첫번째 포트폴리오 페이지 입니다."/>
	<!-- <meta http-equiv="Expires" content="-1">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Cache-Control" content="No-Cache"> -->
	<title>포항시청</title>
	<link rel="stylesheet" href="/css/basic.css"/>
	<link rel="stylesheet" href="/css/common.css"/>
	<link rel="stylesheet" href="/css/style.css"/>
	<link rel="shortcut icon" href="images/phfavicon.ico"/>
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="/js/balloon.js"></script><!--말풍선 플러그인-->
	<script src="/js/guide.js"></script><!--가이드텍스트 플러그인-->
	<script src="/js/menu.js"></script><!--상단메뉴애니메이트 플러그인-->
	<script src="/js/quickmenu.js"></script><!--퀵메뉴바 플러그인-->
	<script src="/js/jquery.bxslider.min.js"></script><!--박스슬라이더 플러그인-->
	<script src="/js/script.js"></script>
	<!--<script src="/js/popubrun.js"></script>-->
</head>
<body>
	<div id="wrap">
		<jsp:include page="header.jsp" flush="false"/>
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
		<div id="mainVisual" class="cf">
			<div id="mvTop">
				<div class="mvButton1 fl"><a href="#" class="showBalloon" title="문화관광 페이지로 이동합니다."><img src="/images/main_culture_tour_link_ico.png" alt="문화관광"/></a><a href="#" class="showBalloon" title="문화관광 페이지로 이동합니다."><span>문화관광</span></a></div>
				<div class="mvButton2 fl"><a href="#" class="showBalloon" title="스마트 실시간 주차안내"><img src="/images/main_smart_parking_link_ico.png" alt="스마트주차"/></a><a href="#" class="showBalloon" title="스마트 실시간 주차안내"><span>스마트 주차</span></a></div>
				<div class="mvSearch fl">
					<div class="searchBox">
						<input type="text" name="searchWord" id="searchWord" class="searchWord fl" value="검색어를 입력하시오."> 
						<img class="fr" src="/images/search_btn_ico.png" alt="검색버튼">
					</div>
					<div class="searchkeyWord"><img src="/images/popular_search_ico.png" width="17" height="21" alt=""/><span> <a href="#">포항시청 조직도</a> &nbsp; <a href="#">채용공고</a> &nbsp; <a href="#">조직도</a> &nbsp; <a href="#">행정인턴</a> &nbsp; <a href="#">대학생</a></span></div>
				</div>
				<div class="mvWeather fl"><a href="#"><img src="/images/sunny.png" alt="태양"/><span class="Temper">25℃</span><span class="Dust">미세먼지</span><span class="Normal">보통</span><img class="Link" src="/images/weather_link_btn.png" alt="날씨링크"/></a></div>
			</div>
			<div id="mvCenter">
				<div class="mvPosts fl">
					<div class="mvPtit">최근게시물 <img src="/images/bg_select_arr.png" alt="최근게시물"/></div>
					<div class="postList">
						<ul>
							<li><span class="new">new</span><a href="#">포항시청 최근게시물 리스트</a>	<img src="/images/faq_latest_list_arr.png" alt="listArr"/></li>
							<li><span class="new">new</span><a href="#">다자녀/ 영유아/ 대가족 전기세 할인</a><img src="/images/faq_latest_list_arr.png" alt="listArr"/></li>
							<li><span class="new">new</span><a href="#">1인 자영업자 고용보험</a><img src="/images/faq_latest_list_arr.png" alt="listArr"/></li>
							<li><span class="new">new</span><a href="#">광역알뜰교통카드 체험단 모집</a><img src="/images/faq_latest_list_arr.png" alt="listArr"/></li>
							<li><span class="new">new</span><a href="#">포항시 생활 폐기물 처리 수수료 인상 안내</a><img src="/images/faq_latest_list_arr.png" alt="listArr"/></li>
							<li><span class="new">new</span><a href="#">포항시 재난(지진)정보알림서비스 신청 안내</a><img src="/images/faq_latest_list_arr.png" alt="listArr"/></li>
							<li><span class="new">new</span><a href="#">에너지바우처 신청 안내</a><img src="/images/faq_latest_list_arr.png" alt="listArr"/></li>
							<li><span class="new">new</span><a href="#">포항시 북구 흥해읍</a><img src="/images/faq_latest_list_arr.png" alt="listArr"/></li>
						</ul>
					</div>
				</div> <!-- id="mvCenter" end -->
				<div class="mvEvent fl">
					<div id="brandVisual">
						<span class="left"><a href="#" onclick="return false"><img src="/images/left_arr.png" alt="이전"/></a></span>
						<ul class="slider_panel">
							<li class="visual_0"><a href="#">배너 이미지1</a></li>
							<li class="visual_1"><a href="#">배너 이미지2</a></li>
							<li class="visual_2"><a href="#">배너 이미지3</a></li>
							<li class="visual_3"><a href="#">배너 이미지4</a></li>
							<li class="visual_4"><a href="#">배너 이미지5</a></li>
						</ul>
						<span class="right"><a href="#" onclick="return false"><img src="/images/right_arr.png" alt="다음"/></a></span>	
						<ul id="buttonList">
							<li class="on"><a href="#">배너1</a></li>
							<li><a href="#">배너2</a></li>
							<li><a href="#">배너3</a></li>
							<li><a href="#">배너4</a></li>
							<li><a href="#">배너5</a></li>
						</ul>
					</div>	
					<div id="footer_notice_inner" class="fl">
						<span class="blue fl">행사·축제</span> 
						<ul>
							<li style="top:0"><a href="#"><strong>[ 2019-07-23 15:00 ]</strong>&nbsp;제14회 불빛미술대전 시상식 (포항문화예술회관 소공연장)</a></li>
							<li><a href="#"><strong>[ 2019-07-23 19:30 ]</strong>&nbsp;포항시립교향악단 제169회 정기연주회 (포항문화에술회관 대공연장) </a></li>
							<li><a href="#"><strong>[ 2019-07-24 19:00 ]</strong>&nbsp;2019 포항 벤토머드 페스티벌(PBMF) (포항 영일대 해수욕장) </a></li>
							<li><a href="#"><strong>[ 2019-07-25 13:00 ]</strong>&nbsp;제3회 3대 어울림 문화축제 (영일대해수욕장 일원)</a></li>
							<li><a href="#"><strong>[ 2019-07-26 14:00 ]</strong>&nbsp;제6회 포항 영일만 검은 돌장어축제 (도구해수욕장 일원)</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div id="mvBottom">
				<div class="mvNotice fl">
					<div class="mvNoticetit">
						<ul class="tabs">
							<li><a href="#noticeWrap1-1" class="on">공지사항</a></li>
							<li><a href="#noticeWrap1-2">고시공고</a></li>
							<li><a href="#noticeWrap1-3">입법예고</a></li>
							<li><a href="#noticeWrap1-4">입찰정보</a></li>
							<li><a href="#noticeWrap1-5">기관단체</a></li>
						</ul>
					</div>
					<div class="mvNoticewrap">
						<div class="noticeWrap" id="noticeWrap1-1">
							<ul>
								<li><span class="green">생활경제</span> &nbsp; <a href="#">포항시 일자리정보(2019-48)</a> <span class="date">2019.06.20</span></li>
								<li><span class="green">농축수산</span> &nbsp; <a href="#">2019년 하반기 귀농 농업창업 및 주택구입 지원사업</a> <span class="date">2019.06.19</span></li>
								<li><span class="green">문화관광</span> &nbsp; <a href="#">구룡포생활문화센터 ‘아라예술촌’ 3/4분기 정규프로그램</a> <span class="date">2019.06.19</span></li>
								<li><span class="green">기타사항</span> &nbsp; <a href="#">6월 정례 반상회 홍보자료</a> <span class="date">2019.06.19</span></li>
								<li><span class="green">문화관광</span> &nbsp; <a href="#">(재)포항문화재단 생활문화팀 기간제근로자 채용 공고</a> <span class="date">2019.06.18</span></li>
								<li><span class="green">생활경제</span> &nbsp; <a href="#">2019년 찾아가는 마을세무사 상담서비스 운영</a> <span class="date">2019.06.17</span></li>
							</ul>
						</div>
						<div class="noticeWrap" id="noticeWrap1-2">
							<ul>
								<li><span class="green">공고</span> &nbsp; <a href="#">거주불명등록자 행정상 관리주소 이전 2차 공고</a><span class="date">2019.07.13</span></li>
								<li><span class="green">공고</span> &nbsp; <a href="#">2019년 제3회 포항시 지방임기제공무원 채용시험 최종</a><span class="date">2019.07.12</span></li>
								<li><span class="green">공고</span> &nbsp; <a href="#">2019년 6월 정기분 및 수시분 자동차세고지서 공시송</a><span class="date">2019.07.12</span></li>
								<li><span class="green">공고</span> &nbsp; <a href="#">주민등록 신고의무지연자에 대한 직권조치결과 공고</a><span class="date">2019.07.11</span></li>
								<li><span class="green">공고</span> &nbsp; <a href="#">도로점용[굴착]허가 내용 공고</a><span class="date">2019.07.10</span></li>
								<li><span class="green">공고</span> &nbsp; <a href="#">건물주 신고에 의한 주민등록 거주불명등록자 직권조치결과</a><span class="date">2019.07.09</span></li>
							</ul>
						</div>
						<div class="noticeWrap" id="noticeWrap1-3">
							<ul>
								<li><span class="green">공고</span> &nbsp; <a href="#">포항시 지방공무원 수당 등 지급 조례 일부개정안 입법예고</a><span class="date">2019.07.13</span></li>
								<li><span class="green">공고</span> &nbsp; <a href="#">「포항시 사무전결처리 규칙」 일부개정규칙안 입법예고</a><span class="date">2019.07.12</span></li>
								<li><span class="green">공고</span> &nbsp; <a href="#">포항시 환경관리원 복무규칙 전부개정규칙안 입법예고</a><span class="date">2019.07.12</span></li>
								<li><span class="green">공고</span> &nbsp; <a href="#">포항시 지방세 세무조사 운영 규칙 전부개정규칙안 입법예고</a><span class="date">2019.07.11</span></li>
								<li><span class="green">공고</span> &nbsp; <a href="#">포항시 출산장려 등 지원에 관한 조례 시행규칙안 입법예고</a><span class="date">2019.07.10</span></li>
								<li><span class="green">공고</span> &nbsp; <a href="#">포항시 출산장려금 및 출생아건강보험료 등의 지원에 관한</a><span class="date">2019.07.09</span></li>
							</ul>
						</div>
						<div class="noticeWrap" id="noticeWrap1-4">
							<ul>
								<li><span class="green">공고</span> &nbsp; <a href="#">신창1리항 어항시설사업(2차) 수의견적 제출안내 공고</a><span class="date">2019.07.08</span></li>
								<li><span class="green">공고</span> &nbsp; <a href="#">2019년도 벼 병해충 항공방제 실시에 따른 헬기임차</a><span class="date">2019.07.08</span></li>
								<li><span class="green">공고</span> &nbsp; <a href="#">용흥동 주택지 산림재해 예방공사 수의견적(전자)제출 안내공고</a><span class="date">2019.07.07</span></li>
								<li><span class="green">공고</span> &nbsp; <a href="#">덕수공원 등산로 정비공사 수의견적(전자)제출 안내공고</a><span class="date">2019.07.06</span></li>
								<li><span class="green">공고</span> &nbsp; <a href="#">신광 냉수1리 농로확장공사 수의견적(전자)제출 안내공고</a><span class="date">2019.07.06</span></li>
								<li><span class="green">공고</span> &nbsp; <a href="#">신광 만석2리 농로정비공사 수의견적(전자)제출 안내공고</a><span class="date">2019.07.05</span></li>
							</ul>
						</div>
						<div class="noticeWrap" id="noticeWrap1-5">
							<ul>
								<li><span class="green">경제·일자리</span> &nbsp; <a href="#">양덕 굴마을낙지촌 7/13(토) 낮시간 주방보조</a><span class="date">2019.07.12</span></li>
								<li><span class="green">경제·일자리</span> &nbsp; <a href="#">풍기한방삼계탕 7/13(토) 홀서빙하실 분</a><span class="date">2019.07.11</span></li>
								<li><span class="green">경제·일자리</span> &nbsp; <a href="#">황장군 7/12(금) 홀서빙하실 분</a><span class="date">2019.07.10</span></li>
								<li><span class="green">경제·일자리</span> &nbsp; <a href="#">만세회센터 7/12(금)~14(일)주방보조</a><span class="date">2019.07.10</span></li>
								<li><span class="green">경제·일자리</span> &nbsp; <a href="#">등촌샤브칼국수 7/12(금) 홀서빙하실 분</a><span class="date">2019.07.10</span></li>
								<li><span class="green">경제·일자리</span> &nbsp; <a href="#">황장군 7/10(수)부터 한동안 계속 홀서빙하실 분</a><span class="date">2019.07.08</span></li>
							</ul>
						</div>
					</div>
					<div class="mvNoticeft">
						<a href="#"><span>전체보기 ></span></a>
					</div>
				</div>
				<div class="mvBanner fl">
					<p><span class="Bablue">포항시민의 행복</span>을 위해<br/> 발로 뛰는 시장 <br/><strong>노태효 입니다.</strong></p>
					<div class="mayorBox">
						<ul>
							<li><a href="#">인사말</a></li>
							<li><a href="#">민선7기 공략</a></li>
							<li><a href="#">시민청원</a></li>
							<li><a href="#">시정에 바란다</a></li>
						</ul>
					</div>
				</div>
				<div class="mvJobinfo fl">
					<span class="jobMore">일자리 정보<a href="#"><img src="/images/main_job_more.png" alt="일자리정보"/></a></span>
					<span class="jobImg"></span>
					<p>영광기업 | 북구 청하면 | 제조업 경리 | 사무원 1명 | 학력무관 | 월급 1,800,000원 이상 | 4대 보험</p>
				</div>
			</div> <!-- id="mvBottom" end -->
		</div>
		<div id="iconbutton">
			<div class="iconBg"></div>
			<div class="iconbuttonMenu">
				<ul>
					<li><a href="#" class="rollover"><img src="/images/main_ico01_off.png" alt="복지버튼"/><span>복지</span></a></li>
					<li><a href="#" class="rollover"><img src="/images/main_ico02_off.png" alt="건강버튼"/><span>건강</span></a></li>
					<li><a href="#" class="rollover"><img src="/images/main_ico03_off.png" alt="교통버튼"/><span>교통</span></a></li>
					<li><a href="#" class="rollover"><img src="/images/main_ico04_off.png" alt="투자버튼"/><span>투자</span></a></li>
					<li><a href="#" class="rollover"><img src="/images/main_ico05_off.png" alt="농축수산버튼"/><span>농축수산</span></a></li>
					<li><a href="#" class="rollover"><img src="/images/main_ico06_off.png" alt="건설도시버튼"/><span>건설도시</span></a></li>
					<li><a href="#" class="rollover"><img src="/images/main_ico07_off.png" alt="환경버튼"/><span>환경</span></a></li>
					<li><a href="#" class="rollover"><img src="/images/main_ico08_off.png" alt="생활경제버튼"/><span>생활경제</span></a></li>
				</ul>
			</div>
		</div>
		<div id="eventWrapbg" class="cf">
			<div class="eventWrap">
				<div class="ewVisit fl">
					<div class="ewvisitTit">
						<span class="potoImg"><img src="/images/main_pwv_tit_ico.png" alt="가볼만한곳"/>가볼만한곳</span>
						<span class="evArrow"><a href="#" class="ewvrigth"></a></span>
					</div>
					<div class="ewvisitImg">
						<a href="#" class="alt ewvon"><img src="/images/visit1.jpg" alt="등대박물관"/></a>
						<a href="#" class="alt"><img src="/images/visit2.jpg" alt="독수리바위"/></a>
						<a href="#" class="alt"><img src="/images/visit3.jpg" alt="문화커뮤니티"/></a>
						<a href="#" class="alt"><img src="/images/visit4.jpg" alt="사방기념공원"/></a>
						<a href="#" class="alt"><img src="/images/visit5.jpg" alt="한국로봇융합연구원"/></a>
					</div>
				</div>
				<div class="ewShowevent fl">
					<div class="ewshowTit">
						<span class="calImg"><img src="/images/main_pms_tit_ico.png" alt="공연전시행사"/>공연·전시·행사</span>
						<span class="evshArrow"><a href="#"></a><a href="#"></a><a href="#"></a><a href="#">전체보기</a></span>
					</div>
					<div class="ewshowImg">
						<div class="show1 fl"><a href="#"><img src="/images/show_on1.png" alt="쇼이미지1"/></a></div>
						<div class="show2 fl"><a href="#"><img src="/images/show_on2.png" alt="쇼이미지2"/></a></div>
						<div class="show3 fl"><a href="#"><img src="/images/show_on3.png" alt="쇼이미지3"/></a></div>
					</div>
					<div class="ewshowText">
						<span>영상으로 만나는 예술의 전당 (지젤)</span>
						<span class="show2">시립합창단 제108회 정기연주회 - 포레 레퀴엠</span>
						<span class="show3">2019 패러글라이딩 월드컵 대회</span>
					</div>
					<div class="ewshowDate">
						<span><a href="#">기간 : 2019.06.26</a></span>
						<span class="show2"><a href="#">기간 : 2019.06.29</a></span>
						<span class="show3"><a href="#">기간 : 2019.06.20</a></span>
					</div>
				</div>
			</div>
			<div class="ewBtmenu cb">
				<ul>
					<li class="blueBg"><a href="#" class="showBalloon" title="포항축제 관련 안내"><img src="/images/main_ph_tour_btn_ico01.png" alt="버튼01"/><span>가자!포항축제</span></a></li>
					<li class="blueBg"><a href="#" class="showBalloon" title="포항맛집 관련 안내"><img src="/images/main_ph_tour_btn_ico02.png" alt="버튼02"/><span>먹자!포항맛집</span></a></li>
					<li class="blueBg"><a href="#" class="showBalloon" title="포항여행 꿀팁 안내"><img src="/images/main_ph_tour_btn_ico03.png" alt="버튼03"/><span>포항 여행 꿀팁</span></a></li>
					<li class="blueBg"><a href="#" class="showBalloon" title="행사일정 관련 안내"><img src="/images/main_ph_tour_btn_ico04.png" alt="버튼04"/><span>행사일정 안내</span></a></li>
					<li class="greenBg"><a href="#" class="showBalloon" title="숙박정보 관련 안내"><img src="/images/main_ph_tour_btn_ico05.png" alt="버튼05"/><span>포항 숙박정보</span></a></li>
					<li class="greenBg"><a href="#" class="showBalloon" title="교통정보 관련 안내"><img src="/images/main_ph_tour_btn_ico06.png" alt="버튼06"/><span>교통 정보안내</span></a></li>
				</ul>
			</div>
		</div> <!-- id="eventWrap" end -->
		<div id="best_bg">
			<ul>
				<li><a href="#"><span>함께하는 포항</span></a></li>
				<li><a href="#"><span>전자민원</span></a></li>
				<li><a href="#"><span>행정정보</span></a></li>
				<li><a href="#"><span>도약하는포항</span></a></li>
				<li><a href="#"><span>분야별 정보</span></a></li>
				<li><a href="#"><span>포항70주년</span></a></li>
				<li><a href="#"><span>포항시청 리뉴얼</span></a></li>
			</ul>
			<p class="prev_btn"><a href="#"><img src="/images/main_ctrl_prev_b.png" alt="이전으로 이동" /></a></p>
			<p class="next_btn"><a href="#"><img src="/images/main_ctrl_next_b.png" alt="다음으로 이동" /></a></p>
		</div>
		<jsp:include page="/footer.jsp" flush="false"/>
	</div>
</body>
</html>