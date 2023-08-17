<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<div id="topHeader" class="cf">
	<div id="thtop">
		<div class="topWrap">
			<ul class="topLeft">
				<li class="homeBtwrap fl"><a href="/index.jsp" class="homeBt"><img src="/images/hdt_home_ico.png" alt="홈버튼"/></a></li>
				<li class="fl"><a href="/article/list.do">글목록<img src="/images/ico_new_win_white.png" alt="열린시장실"/></a></li>
				<li class="fl"><a href="/article/write.do">글쓰기<img src="/images/ico_new_win_white.png" alt="문화관광"/></a></li>
				<li class="fl"><a href="/sub3/sub3.jsp">포항시의회<img src="/images/ico_new_win_white.png" alt="포항시의회"/></a></li>
			</ul>
			<ul class="topRight">             
				<li class="snsImg fr"><a href="/sub3/sub3.jsp">
				<img src="/images/fb_ico.png" alt="페이스북"/>
				<img src="/images/tw_ico.png" alt="트위터"/>
				<img src="/images/blog_ico.png" alt="블로그"/>
				<img src="/images/npost.png" alt="npost"/></a></li>
				<u:notLogin>
					<li class="fr"><a href="/join.do">회원가입</a></li>
					<li class="fr"><a href="/login.do">로그인</a></li>
				</u:notLogin>
				<u:isLogin>
					<li class="fr"><a href="/changePwd.do">암호변경하기</a></li>
					<li class="fr"><a href="/logout.do">로그아웃</a></li>
					<li class="fr logonid"><p>${authUser.name}님<br>환영합니다.</p></li>
				</u:isLogin>						
			</ul>
		</div>
	</div> <!-- id="thtop" -->
	<div id="thmenu">
		<div class="menuAnimate">
			<div class="menuWrap cf">
				<div class="oneInner">
					<div class="phLogo">
						<a href="/sub3/sub3.jsp" class="showBalloon" title="포항시 70주년 로고 입니다. 누루면 메인홈페이지로 이동합니다."><img src="/images/phlogo(last).png" alt="포항70주년로고"/><h1>포항시청</h1></a>
					</div>
					<ul class="oneDepth">
						<li><a href="/sub1/sub1.jsp">함께하는 포항</a>
							<div class="twoInner">
								<div class="twoDep1400">
									<div class="menuLeft">
										<h2>함께하는 포항</h2><br/>
										<p>포항시에 관련된 소식과<br/> 정보를 제공합니다.</p>
									</div>
									<ul class="twoDepth cf">
										<li class="twoDepthitem"><a href="index.jsp">공지사항</a>
											<div class="threeInner11">
												<ul class="threeDepth cf cf">
													<li><a href="/sub1/sub1.jsp">공지사항</a></li>
													<li><a href="/sub1/sub1.jsp">구)기관단체 공지사항</a></li>
													<li><a href="/sub1/sub1.jsp">기관단체 공지사항</a></li>
												</ul>
											</div>
										</li>
										<li class="twoDepthitem"><a href="/sub1/sub1.jsp">고시공고</a>
											<div class="threeInner12">
												<ul class="threeDepth cf cf">
													<li><a href="/sub1/sub1.jsp">고시공고</a></li>
													<li><a href="/sub1/sub1.jsp">분묘개장공고</a></li>
													<li><a href="/sub1/sub1.jsp">타시군 공고</a></li>
													<li><a href="/sub1/sub1.jsp">이전고시공고</a></li>
												</ul>
											</div>
										</li>
										<li class="twoDepthitem"><a href="/sub1/sub1.jsp">입찰정보</a>
											<div class="threeInner13">
												<ul class="threeDepth cf">
													<li><a href="/sub1/sub1.jsp">입찰정보</a></li>
													<li><a href="/sub1/sub1.jsp">수의계약공개 </a></li>
													<li><a href="/sub1/sub1.jsp">계약공개(재정관리과)</a></li>
													<li><a href="/sub1/sub1.jsp">계약공개(맑은물사업본부)</a></li>
												</ul>
											</div>
										</li>
										<li class="twoDepthitem"><a href="/sub1/sub1.jsp">시민참여</a>
											<div class="threeInner14">
												<ul class="threeDepth cf">
													<li><a href="/sub1/sub1.jsp">온라인설문</a></li>
													<li><a href="/sub1/sub1.jsp">시민아이디어 제안 </a></li>
													<li><a href="/sub1/sub1.jsp">민원모니터</a></li>
													<li><a href="/sub1/sub1.jsp">이런모습좋아요</a></li>
													<li><a href="/sub1/sub1.jsp">무료홍보방</a></li>
													<li><a href="/sub1/sub1.jsp">강우량(강수량)</a></li>
													<li><a href="/sub1/sub1.jsp">포항시 채용정보</a></li>
													<li><a href="/sub1/sub1.jsp">포항시 퀴즈이벤트</a></li>
												</ul>
											</div>
										</li>
										<li class="twoDepthitem"><a href="/sub1/sub1.jsp">법율상담</a>
											<div class="threeInner15">
												<ul class="threeDepth cf">
													<li><a href="/sub1/sub1.jsp">무료법률상담안내</a></li>
													<li><a href="/sub1/sub1.jsp">찾기쉬운생활법령정보</a></li>
													<li><a href="/sub1/sub1.jsp">사이버상담</a></li>
													<li><a href="/sub1/sub1.jsp">경북도무료법률상담 </a></li>
													<li><a href="/sub1/sub1.jsp">대한법률구조공단 </a></li>
													<li><a href="/sub1/sub1.jsp">온라인행정심판</a></li>
												</ul>
											</div>
										</li>
									</ul>
								</div> <!-- class="twoDep1400" end -->
							</div> <!-- class="twoInner" end -->
						</li> <!-- 함께하는 포항 1번째 탑메뉴 end -->
						<li><a href="/sub2/sub2.jsp">전자민원</a>
							<div class="twoInner">
								<div class="twoDep1400">
									<div class="menuLeft">
										<h2>함께하는 포항</h2><br/>
										<p>포항시에 관련된 소식과<br/> 정보를 제공합니다.</p>
									</div>								
									<ul class="twoDepth cf">
										<li class="twoDepthitem"><a href="/sub2/sub2.jsp">종합안내</a>
											<div class="threeInner21">
												<ul class="threeDepth cf">
													<li><a href="/sub2/sub2.jsp">분야별 안내</a></li>
													<li><a href="/sub2/sub2.jsp">민원 봉사실</a></li>
													<li><a href="/sub2/sub2.jsp">개별주택가격열람</a></li>
													<li><a href="/sub2/sub2.jsp">공시지가 정보</a></li>
													<li><a href="/sub2/sub2.jsp">민원편람서식</a></li>
													<li><a href="/sub2/sub2.jsp">현수막 지정게시판 접수</a></li>
													<li><a href="/sub2/sub2.jsp">옥외광고물</a></li>
													<li><a href="/sub2/sub2.jsp">자주묻는질문</a></li>
												</ul>
											</div>
										</li>
										<li class="twoDepthitem"><a href="/sub2/sub2.jsp">신청 및 조회</a>
											<div class="threeInner22">
												<ul class="threeDepth cf">
													<li><a href="/sub2/sub2.jsp">민원신청</a></li>
													<li><a href="/sub2/sub2.jsp">시정에 바란다</a></li>
													<li><a href="/sub2/sub2.jsp">나의 민원조회</a></li>
													<li><a href="/sub2/sub2.jsp">민원처리공개</a></li>
													<li><a href="/sub2/sub2.jsp">정보공개청구</a></li>
													<li><a href="/sub2/sub2.jsp">문서24</a></li>
													<li><a href="/sub2/sub2.jsp">정부24</a></li>
													<li><a href="/sub2/sub2.jsp">전자가족관계 등록</a></li>
													<li><a href="/sub2/sub2.jsp">분야별 신고센터</a></li>
												</ul>
											</div>
										</li>
										<li class="twoDepthitem"><a href="/sub2/sub2.jsp">민원 콜센터</a>
											<div class="threeInner23">
												<ul class="threeDepth cf">
													<li><a href="/sub2/sub2.jsp">포항시 빨리콜(8282)</a></li>
													<li><a href="/sub2/sub2.jsp">110정부 민원안내 콜센터</a></li>
												</ul>
											</div>
										</li>
										<li class="twoDepthitem"><a href="/sub2/sub2.jsp">규제개혁</a>
											<div class="threeInner24">
												<ul class="threeDepth cf">
													<li><a href="/sub2/sub2.jsp">행정규제란?</a></li>
													<li><a href="/sub2/sub2.jsp">포항시 핵심 추진과제</a></li>
													<li><a href="/sub2/sub2.jsp">규제신고센터</a></li>
													<li><a href="/sub2/sub2.jsp">전국규제지도</a></li>
												</ul>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</li> <!-- 전자민원 2번째 탑메뉴 end -->
						<li><a href="/sub3/sub3.jsp">행정정보</a>
							<div class="twoInner">
								<div class="twoDep1400">
									<div class="menuLeft">
										<h2>함께하는 포항</h2><br/>
										<p>포항시에 관련된 소식과<br/> 정보를 제공합니다.</p>
									</div>
									<ul class="twoDepth cf">
										<li class="twoDepthitem"><a href="/sub3/sub3.jsp">정보공개</a>
											<div class="threeInner31">
												<ul class="threeDepth cf">
													<li><a href="/sub3/sub3.jsp">정보공개안내</a></li>
													<li><a href="/sub3/sub3.jsp">분야별 정보공개</a></li>
													<li><a href="/sub3/sub3.jsp">정책실명제</a></li>
													<li><a href="/sub3/sub3.jsp">정보공개목록</a></li>
													<li><a href="/sub3/sub3.jsp">사전공개 자료실</a></li>
													<li><a href="/sub3/sub3.jsp">비공개 대상정보 세부기준</a></li>
													<li><a href="/sub3/sub3.jsp">관련법령 및 서식</a></li>
												</ul>
											</div>
										</li>
										<li class="twoDepthitem"><a href="/sub3/sub3.jsp">청렴</a>
											<div class="threeInner32">
												<ul class="threeDepth cf">
													<li><a href="/sub3/sub3.jsp">청렴문화방</a></li>
													<li><a href="/sub3/sub3.jsp">감사결과</a></li>
													<li><a href="/sub3/sub3.jsp">민원부조리</a></li>
													<li><a href="/sub3/sub3.jsp">공직선거비리 익명신고</a></li>
													<li><a href="/sub3/sub3.jsp">공익신고센터</a></li>
													<li><a href="/sub3/sub3.jsp">부실공사 신고센터</a></li>
													<li><a href="/sub3/sub3.jsp">익명제보시스템(레드휘슬)</a></li>
												</ul>
											</div>
										</li>
										<li class="twoDepthitem"><a href="/sub3/sub3.jsp">법령정보</a>
											<div class="threeInner33">
												<ul class="threeDepth cf">
													<li><a href="/sub3/sub3.jsp">법제처</a></li>
													<li><a href="/sub3/sub3.jsp">자치법규(조례,규칙,규정)</a></li>
													<li><a href="/sub3/sub3.jsp">입법예고</a></li>
													<li><a href="/sub3/sub3.jsp">포항시보</a></li>
													<li><a href="/sub3/sub3.jsp">전자관보</a></li>
												</ul>
											</div>
										</li>
										<li class="twoDepthitem"><a href="/sub3/sub3.jsp">시정자료실</a>
											<div class="threeInner34">
												<ul class="threeDepth cf">
													<li><a href="/sub3/sub3.jsp">시정자료실</a></li>
													<li><a href="/sub3/sub3.jsp">위원회</a></li>
													<li><a href="/sub3/sub3.jsp">주요업무</a></li>
												</ul>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</li> <!-- 행정정보 3번째 탑메뉴 end -->
						<li><a href="/login.do">도약하는포항</a>
							<div class="twoInner">
								<div class="twoDep1400">
									<div class="menuLeft">
										<h2>함께하는 포항</h2><br/>
										<p>포항시에 관련된 소식과<br/> 정보를 제공합니다.</p>
									</div>
									<ul class="twoDepth cf">
										<li class="twoDepthitem"><a href="/login.do">포항비전</a>
											<div class="threeInner41">
												<ul class="threeDepth cf">
													<li><a href="/login.do">시정목표</a></li>
													<li><a href="/login.do">2019 시정연설</a></li>
													<li><a href="/login.do">2019 시정방향</a></li>
													<li><a href="/login.do">시승격 70년 기념사업</a></li>
												</ul>
											</div>
										</li>
										<li class="twoDepthitem"><a href="/login.do">포항소식</a>
											<div class="threeInner42">
												<ul class="threeDepth cf">
													<li><a href="/login.do">열린포항</a></li>
													<li><a href="/login.do">포항뉴스</a></li>
													<li><a href="/login.do">주요일정</a></li>
													<li><a href="/login.do">행사·축제</a></li>
													<li><a href="/login.do">공연·전시</a></li>
												</ul>
											</div>
										</li>
										<li class="twoDepthitem"><a href="/login.do">포항현황</a>
											<div class="threeInner43">
												<ul class="threeDepth cf">
													<li><a href="/login.do">포항의상징</a></li>
													<li><a href="/login.do">기본현황</a></li>
													<li><a href="/login.do">포항 홍보영상</a></li>
													<li><a href="/login.do">역대 시장 소개</a></li>
													<li><a href="/login.do">포항시 중점과제</a></li>
													<li><a href="/login.do">시정현황 (E-BOOK)</a></li>
													<li><a href="/login.do">포항통계</a></li>
													<li><a href="/login.do">시정백서</a></li>
												</ul>
											</div>
										</li>
										<li class="twoDepthitem"><a href="/login.do">포항안내</a>
											<div class="threeInner44">
												<ul class="threeDepth cf">
													<li><a href="/login.do">포항시사</a></li>
													<li><a href="/login.do">시청사 안내</a></li>
													<li><a href="/login.do">시청 행정조직</a></li>
													<li><a href="/login.do">시청 찾아오시는길</a></li>
												</ul>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</li> <!-- 도약하는포항 4번째 탑메뉴 end -->
						<li><a href="/sub5/sub5.jsp" class="last">분야별 정보</a>
							<div class="twoInner">
								<div class="twoDep1400">
									<div class="menuLeft">
										<h2>함께하는 포항</h2><br/>
										<p>포항시에 관련된 소식과<br/> 정보를 제공합니다.</p>
									</div>
									<ul class="twoDepth cf">
										<li class="twoDepthitem"><a href="/sub5/sub5.jsp">복지</a>
											<div class="threeInner51">
												<ul class="threeDepth cf">
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
										<li class="twoDepthitem"><a href="/sub5/sub5.jsp">건강</a>
											<div class="threeInner52">
												<ul class="threeDepth cf">
													<li><a href="/sub5/sub5.jsp">건강도시포항</a></li>
													<li><a href="/sub5/sub5.jsp">좋은식단,건강음식</a></li>
													<li><a href="/sub5/sub5.jsp">야간병원,당번약국</a></li>
													<li><a href="/sub5/sub5.jsp">식품위생</a></li>
													<li><a href="/sub5/sub5.jsp">건강소식</a></li>
												</ul>
											</div>
										</li>
										<li class="twoDepthitem"><a href="/sub5/sub5.jsp">교통</a>
											<div class="threeInner53">
												<ul class="threeDepth cf">
													<li><a href="/sub5/sub5.jsp">자동차</a></li>
													<li><a href="/sub5/sub5.jsp">주차</a></li>
													<li><a href="/sub5/sub5.jsp">시내버스</a></li>
													<li><a href="/sub5/sub5.jsp">공항</a></li>
													<li><a href="/sub5/sub5.jsp">조종면허시험</a></li>
													<li><a href="/sub5/sub5.jsp">교통소식</a></li>
													<li><a href="/sub5/sub5.jsp">투자</a></li>
													<li><a href="/sub5/sub5.jsp">투자환경</a></li>
													<li><a href="/sub5/sub5.jsp">산업단지</a></li>
													<li><a href="/sub5/sub5.jsp">기업지원</a></li>
													<li><a href="/sub5/sub5.jsp">공단현황</a></li>
													<li><a href="/sub5/sub5.jsp">투자소식</a></li>
												</ul>
											</div>
										</li>
										<li class="twoDepthitem"><a href="/sub5/sub5.jsp">농축수산</a>
											<div class="threeInner54">
												<ul class="threeDepth cf">
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
						</li> <!-- 분야별 정보 5번째 탑메뉴 end -->
						<li class="allMenu">
							<a href="/join.do" class="sideMenubt"><img src="/images/all_menu_btn_ico.png" alt="전체메뉴"/>
							<span class="caption">전체메뉴</span></a>
						</li>
						<li class="phSarang">
							<a href="/login.do" class="sideMenubt"><img src="/images/pohang_sarang_btn_ico.png" alt="포항사랑"/>
							<span class="caption">포항사랑</span></a>
						</li>
					</ul>
				</div>  <!-- id="oneInner" end -->
			</div> <!-- class="menuWrap" end -->
		</div>
	</div> <!-- id="thmenu" end -->
</div> <!-- id="topHeader" class="cf" end-->