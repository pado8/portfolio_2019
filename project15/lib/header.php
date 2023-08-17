		<div id="header">
			<div class="head_info"></div>
			<div class="phone_talmenu"><a href="#" class="btnMenu"><img src="../img/phone_talmenu.png" alt="폰 전체메뉴"/></a></div>
			<a href="../index.php"><h1><span class="hide">kfc</span></h1></a>
			<dl id="util_menu">
				<dt class="hide">유틸메뉴</dt>
				<dd class="util_first">
					<ul>
						<?php
							if(!isset($_SESSION["userid"]))
							{
						?>	
						<li class="clickme fl DB_etc10_1" style="width:128px"><img src="../img/login_click.png" alt="로그인 클릭"/></li>
						<li class="login_wrap logtxt"><a href="#">로그인</a>
							<form  action="../login/login_result.php" method="post" name="login_form" id="login_f">
								<fieldset>
									<legend>로그인</legend>
									<p class="user_id">
										<label for="user_id"><img src="../img/login_title_id.gif" alt="아이디" class="guide"/></label>
										<input type="text" name="id" id="user_id" />
									</p>
									<p class="user_pw">
										<label for="user_pw"><img src="../img/login_title_pw.gif" alt="패스워드" class="guide"/></label>
										<input type="password" name="pass" id="user_pw" />
									</p>
									<p>
										<input type="checkbox" name="save_id" id="save_id" />
										<label for="save_id">비밀번호 저장</label>
									</p>
									<p class="log_btn">
										<input type="image" src="../img/login_btn.png" alt="login" onclick="document.member_form.submit()" />
									</p>
									<p class="join_btn_wrap">
										<a href="../member/insertForm.php">회원가입</a>
										<a href="#" class="sch_id_btn">아이디/비밀번호찾기</a>
									</p>
									<p class="login_close_btn"><a href="#"><img src="../img/login_close_btn.png" alt="닫기버튼" /></a></p>
								</fieldset>
							</form>
						</li>
						<li class="logtxt"><a href="../member/insertForm.php">|&nbsp;&nbsp;&nbsp;회원가입</a></li>			
						<?php
							}
							else
							{
						?>	
						<li class="logtxt"><?=$_SESSION["nick"]?> (level:<?=$_SESSION["level"]?>)</li>
						<li class="logtxt"><a href="../login/logout.php">|&nbsp;&nbsp;&nbsp;로그아웃</a></li>
						<li class="logtxt"><a href="../member/updateForm.php?id=<?=$_SESSION["userid"]?>">|&nbsp;&nbsp;&nbsp;정보수정</a></li>
						<?php
							}
						?>				
						<li class="logtxt"><a href="#">|&nbsp;&nbsp;&nbsp;주문내역확인</a></li>
						<li class="logtxt"><a href="#">|&nbsp;&nbsp;&nbsp;고객센터</a></li>
					</ul>
				</dd>
				<dd>
					<ul id="zoom">
						<li><img src="../img/util_zoom_1.gif"  alt="줌1"/></li>
						<li><a href="#" class="zoom_in"><img src="../img/util_zoom_2.gif" alt="줌2"/></a></li>
						<li><a href="#" class="zoom_return"><img src="../img/util_zoom_3.gif" alt="줌3"/></a></li>
						<li><a href="#" class="zoom_out"><img src="../img/util_zoom_4.gif" alt="줌4"/></a></li>
					</ul>
				</dd>
				<dd><a href="#" class="print_btn"><img src="../img/util_print.gif" alt="프린트버튼"/></a></dd>
			</dl>
			<form action="#" method="get" name="sch_f" id="sch_f">
				<fieldset>
					<legend>검색폼</legend>
					<p>
						<input type="text" name="keyword" id="keyword" title="검색어입력" />
						<input type="image" src="../img/search-button.png" class="sch_btn" alt="검색" />
					</p>
				</fieldset>
			</form>
			<h2 class="hide">메인메뉴</h2>
			<div id="gnb_wrap">
				<ul id="gnb">
					<li class="fir"><a href="../memo/memo.php">MENU<span class="line-cover"><span class="gnb-line"></span></span></a>
						<ul class="sub1">
							<li class="mfir"><a href="#">세트</a></li>
							<li><a href="#">치킨</a></li>
							<li><a href="#">버거</a></li>
							<li><a href="#">스낵&사이드</a></li>
							<li class="mlast"><a href="#">음료</a></li>
						</ul>
					</li>
					<li><a href="../greet/list.php">DELIVERY<span class="line-cover"><span class="gnb-line"></span></span></a>
						<ul class="sub2">
							<li class="mfir"><a href="../concert/list.php">추천메뉴</a></li>
							<li><a href="#">치킨&세트</a></li>
							<li><a href="#">버거&세트</a></li>
							<li><a href="#">스낵&사이드</a></li>
							<li class="mlast"><a href="#">음료</a></li>
						</ul>
					</li>
					<li><a href="../concert/list.php">STORE<span class="line-cover"><span class="gnb-line"></span></span></a>
						<ul class="sub3">
							<li class="mfir"><a href="#">매장찾기</a></li>
							<li><a href="#">신규 입점 문의</a></li>
							<li><a href="#">고객센터</a></li>
							<li><a href="#">영양정보&원산지</a></li>
							<li class="mlast"><a href="#">알레르기 유발물질</a></li>
						</ul>
					</li>
					<li><a href="../login/login_form.php">EVENT<span class="line-cover"><span class="gnb-line"></span></span></a>
						<ul class="sub4">
							<li class="mfir"><a href="#">프로모션</a></li>
							<li><a href="#">새소식</a></li>
							<li><a href="#">공지사항</a></li>
							<li><a href="#">멤버십</a></li>
							<li class="mlast"><a href="#">카드 & 상품권</a></li>
						</ul>
					</li>
					<li><a href="../member/insertForm.php">KFC SERVICE<span class="line-cover"><span class="gnb-line"></span></span></a>
						<ul class="sub5">
							<li class="mfir mlast"><a href="#">KFC APP 소개</a></li>
						</ul>
					</li>
					<li><a href="#" onclick="window.open('../survey/survey.php','','left=200, top=200, scrollbars=noe, toolbars=no, width=300, height=300')">KFC IS<span class="line-cover"><span class="gnb-line"></span></span></a>
						<ul class="sub6">
							<li class="mfir"><a href="#">KFC 소개</a></li>
							<li><a href="#">CF</a></li>
							<li><a href="#">회사소개</a></li>
							<li class="mlast"><a href="#">맛의비밀</a></li>
						</ul>
					</li>
					<li><a href="#">인재채용<span class="line-cover"><span class="gnb-line"></span></span></a>
						<ul class="sub7">
							<li class="mfir mlast"><a href="#">KFC 인재채용</a></li>
						</ul>
					</li>
					<li><a href="#">신규 입점 문의<span class="line-cover"><span class="gnb-line"></span></span></a>
						<ul class="sub8">
							<li class="mfir mlast"><a href="#">임대방식</a></li>
						</ul>
					</li>
					<li class="oneilst"><a href="#">KFC FANDOM<span class="line-cover"><span class="gnb-line"></span></span></a>
						<ul class="sub9">
							<li class="mfir"><a href="#">KFC Facebook</a></li>
							<li class="mlast"><a href="#">KFC Instagram</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<p id="total_btn">
				<a href="#"><img src="../img/btn_all_menu.png" alt="전체 메뉴" /></a>
			</p>
			<div id="total_menu">
				<dl>
					<dt>MENU</dt>
					<dd>
						<ul>
							<li><a href="#">세트</a></li>
							<li><a href="#">치킨</a></li>
							<li><a href="#">버거</a></li>
							<li><a href="#">스낵&사이드</a></li>
							<li><a href="#">음료</a></li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt>DELIVERY</dt>
					<dd>
						<ul>
							<li><a href="#">추천메뉴</a></li>
							<li><a href="#">치킨&세트</a></li>
							<li><a href="#">버거&세트</a></li>
							<li><a href="#">스낵&사이드</a></li>
							<li><a href="#">음료</a></li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt>STORE</dt>
					<dd>
						<ul>
							<li><a href="#">매장찾기</a></li>
							<li><a href="#">신규 입점 문의</a></li>
							<li><a href="#">고객센터</a></li>
							<li><a href="#">영양정보&원산지</a></li>
							<li><a href="#">알레르기 유발물질</a></li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt>EVENT</dt>
					<dd>
						<ul>
							<li><a href="#">프로모션</a></li>
							<li><a href="#">새소식</a></li>
							<li><a href="#">공지사항</a></li>
							<li><a href="#">멤버십</a></li>
							<li><a href="#">카드 & 상품권</a></li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt>KFC SERVICE</dt>
					<dd>
						<ul>
							<li><a href="#">KFC APP 소개</a></li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt>KFC IS</dt>
					<dd>
						<ul>
							<li><a href="#">KFC 소개</a></li>
							<li><a href="#">CF</a></li>
							<li><a href="#">회사소개</a></li>
							<li><a href="#">맛의비밀</a></li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt>인재채용</dt>
					<dd>
						<ul>
							<li><a href="#">KFC 인재채용</a></li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt>신규 입점 문의</dt>
					<dd>
						<ul>
							<li><a href="#">임대방식</a></li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt>KFC FANDOM</dt>
					<dd class="blast">
						<ul>
							<li><a href="#">KFC Facebook</a></li>
							<li><a href="#">KFC Instagram</a></li>
						</ul>
					</dd>
				</dl><!-- 총9개 -->
				<p id="total_close"><a href="#"><img src="../img/allmenu_close_btn.png" alt="전체메뉴 닫기" /></a></p>
			</div>
		</div><!-- id="header" -->	
		<script> 
		$('.DB_etc10_1').DB_springMove({
			key:'e24102',          //라이센스키
			dir:'x',               //방향축('x','y')
			mirror:1,              //반대방향이동(1,-1)
			radius:10,             //반경
			motionSpeed:0.1        //속도(0~1)
		})
		</script>	
