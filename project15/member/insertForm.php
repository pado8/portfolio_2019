<?php
	session_start();
?>
<!DOCTYPE HTML>
<html lang="ko">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++"/>
	<meta name="Author" content="노태효"/>
	<meta name="keywords" content="KFC, 노태효, 포트폴리오, 노태효 포트폴리오, portfolio,kfc portfolio" />
	<meta name="Description" content="KFC 포트폴리오 페이지에 오신 것을 환영합니다"/>
	<link rel="shortcut icon" href="../favicon/favicon.ico"> <!-- 파비콘 -->
	<link rel="apple-touch-icon-precomposed" href="apple-icon.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="apple-icon-114x114.png">
	<title>회원가입</title>
	<link rel="stylesheet" type="text/css" href="../css/reset.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/base.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/main.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/join.css" media="all" />
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap&subset=korean" rel="stylesheet">
	<script src="../js/jquery-1.10.2.min.js"></script> <!-- 제이쿼리 라이이브러리 연동 -->
	<script src="../js/jquery.easing.1.3.min.js"></script> 
	<script src="../js/swipe.js"></script> <!-- 터치 슬라이드 플러그인 연동 -->
	<script src="../js/jquery.bxslider.min.js"></script>  <!-- bxSlider 플러그인 연동 -->
	<script src="../js/jquery-ui-1.10.4.custom.min.js"></script> <!-- UI 플러그인 연동 -->
	<script src="../js/jquery.cookie.js"></script>  <!-- 쿠키 플러그인 연동 -->
	<script src="../js/guide.js"></script>  <!-- 가이드 플러그인 연동 -->
	<script src="../js/common.js"></script>
	<script src="../js/main.js"></script>
	<script src="../js/DB_springMove_fn.js"></script>
<script>
	check1 = 0;
	check2 = 0;
	function check_id()
	{
		window.open("check_id.php?id="+document.member_form.id.value,"IDcheck","left=200,top=200,width=200,height=60,scrollbars=no,resizable=yes");
		
		check1 = 1;
	}

	function check_nick()
	{
		window.open("check_nick.php?nick="+document.member_form.nick.value,"NICKcheck","left=200,top=200,width=200,height=60,scrollbars=no,resizable=yes");
		
		check2 = 1;
	}
	function check_input() 	//필수 입력 속성  html5에서는 필수 입력값 만들어 놨음(required)
	{

		if(!document.member_form.hp2.value || !document.member_form.hp3.value )
		{
			alert("휴대폰 번호를 입력하세요");
			document.member_form.nick.focus();
			return;
		}
		if(document.member_form.pass.value !=
			document.member_form.pass_confirm.value)	//비밀번호가 같지 않으면..
		{
			alert("비밀번호가 일치하지 않습니다. \n 다시 입력해주세요.");	//\n 줄바꿈
			document.member_form.pass.focus();
			document.member_form.pass.select();
			return;
		}
		if(check1 == 1 && check2 ==1)
		{			
			document.member_form.submit();
		} else if (check1 == 1){
			alert("닉네임 중복확인을 해주세요.");
		} else if (check2 == 1){
			alert("아이디 중복확인을 해주세요.");
		} else {
			alert("닉네임과 아이디 중복확인을 해주세요.");
		}
	}
	function reset_form()	//취소 버튼을 누르면 내용 전부 삭제
	{
		document.member_form.id.value = "";					//DOM구조 document object model
		document.member_form.pass.value = "";				//PDO php database object
		document.member_form.pass.confirm.value = "";
		document.member_form.name.value = "";
		document.member_form.nick.value = "";
		document.member_form.hp2.value = "";
		document.member_form.hp3.value = "";
		document.member_form.email1.value = "";
		document.member_form.email2.value = "";
		
		document.member_form.id.focus();
		
		return;
	}
</script>
</head>
<body>
	<div id="wrap">
		<?php include "../lib/header.php"; ?>
		<div id="subtitle">
			<div class="subtitWrap">
				<h2>회원가입</h2>
				<ul>
					<li class="homeimg">home</li>
					<li>member</li>
					<li>join</li>
				</ul>
			</div>
		</div>
		<div id="content">
			<?php include "../lib/sub_left_menu.php"; ?>
			<div id="col2">
				<form name="member_form" method="post" action="insertPro.php">
					<div id="title">
						<h3>계정정보 입력</h3><span>필수 입력 표시입니다.</span>
					</div>
					<div id="form_join">
						<div id="join1">
							<ul>
								<li>아이디</li>
								<li>비밀번호</li>
								<li>비밀번호 확인</li>
								<li>이름</li>
								<li>닉네임</li>
								<li class="noreq">성별</li>
								<li>휴대폰</li>
								<li class="noreq">이메일</li>
							</ul>
						</div>
						<div id="join2">
							<ul>
								<li>
									<input type="text" name="id" required class="fl"/>
									<a href="#" onclick="check_id()" class="fl">중복확인</a>
									<span id="idtxt" class="fl">4~12자의 영문 소문자, 숫자와 특수기호(_)만 사용할 수 있습니다.</span>
								</li>
								<li><div><input type="password" name="pass" required /></div></li>
								<li><div><input type="password" name="pass_confirm" required /></div></li>
								<li><div><input type="text" name="name" required /></div></li>
								<li>
									<input type="text" name="nick" required  class="fl"/>
									<a href="#" onclick="check_nick()" class="fl">중복확인</a>
								</li>
								<li>
								<input type="radio" name="sex" id="sex" value="male" checked />
									<label for="sex" class="radiom">남자</label>
									<label>
										<input type="radio" name="sex" value="female" />여자
									</label>
								</li>
								<li>
									<input type="text" class="hp1" name="hp1" value="010" /> - 
									<input type="text" class="hp2" name="hp2" /> - 
									<input type="text" class="hp3" name="hp3" />
								</li>
								<li>
									<input type="text" id="email1" name="email1" class="mr"/> @ 
									<input type="text" name="email2" />
								</li>
							</ul>
						</div>
						<div class="clear"></div>
					</div>
					<div id="button">
						<a href="#" onclick="check_input()" class="joinbtn">가입하기</a>
						<a href="#" onclick="reset_form()">취소하기</a>
					</div>
				</form>				
			</div> <!-- end of col2 -->
			<div class="rightbanner">
				<img src="../img/guide_kfcapp.png" alt="kfcapp"/>
				<div class="righttext">
					<span class="rbtxt">모바일로 쉽게 주문할 수 있는<br/> KFC APP을 만나보세요!</span><br/><br/>
					<p>KFC APP은 모바일 단말기를 통해 손쉽게 딜리버리와 징거벨 오더를 이용할 수 있는 공식 애플리케이션입니다. 멤버쉽 확인과 선불카드 결제 등 KFC 홈페이지의 모든 서비스를 APP에서도 동일하게 이용할 수 있습니다.</p>
					<br/>
					<p class="apptxt">[* APP 다운로드는 스마트폰에서만 클릭할 수 있습니다.]</p>
				</div>
			</div>
		</div><!-- end of content -->
		<?php include "../lib/footer.php"; ?>
	</div> <!-- end of wrap -->
</body>
</html>






















