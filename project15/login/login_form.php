<?php
	session_start();
?>
<!DOCTYPE HTML>
<html>
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
	<title>로그인</title>
	<link rel="stylesheet" type="text/css" href="../css/reset.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/base.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/main.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/member.css" media="all" />
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
</head>
<body>
	<div id="wrap">
		<?php include "../lib/header.php"; ?>
		<div id="subtitle">
			<div class="subtitWrap">
				<h2>로그인</h2>
				<ul>
					<li class="homeimg">home</li>
					<li>KFC SERVICE</li>
					<li>Login</li>
				</ul>
			</div>
		</div>
		<div id="content">
			<?php include "../lib/sub_left_menu.php"; ?>
			<div id="col2" class="loginbg">
				<div class="loginopbox"></div>
				<form action="login_result.php" method="post" name="login_form" class="loginForm">
					<div id="title">
						<h3>정직한 음식이 만드는 행복한 세상!</h3>
						<h2>맛있는 KFC에 오신것을 환영합니다.</h2>
						<p>기존(2018년 이전 가입) 고객 분들은 통합회원 가입을 한번 더 해주셔야 합니다.</p>
					</div> <!-- end of title-->
					<div id="login_form">
						<div id="login2">
							<div id="id_input_button">
								<div id="id_pw_title">
									<ul>
										<li><img src="../img/ico_id.png" alt="icoid"/></li>
										<li><img src="../img/ico_pw.png" alt="icopw"/></li>
									</ul>
								</div>
							</div>
							<div id="id_pw_input">
								<ul>
									<li><input type="text" name="id" class="login_input guide" value="아이디" required /></li>
									<li><input type="password" name="pass" class="guide" value="비밀번호" required /></li>
								</ul>
							</div>
							<div id="login_button">
								<input type="checkbox"/><span>아이디 저장</span>
							</div>
							<div class="clear"></div>
							<div id="login_Btnbox">
								<input type="submit" value="로그인" class="loginbtn" onclick="document.member_form.submit()" />
								<a href="#" class="blogin">비회원주문내역조회</a>
							</div>
							<div id="join_button">
								<a href="../member/insertForm.php">통합 회원가입</a>&nbsp;|&nbsp;
								<a href="#">아이디 찾기</a>&nbsp;|&nbsp;
								<a href="#">비밀번호 찾기</a>
							</div>
						</div>
					</div>
				</form>
			</div> <!-- end of col2 -->
		</div><!-- end of content -->
		<?php include "../lib/footer.php"; ?>
	</div> <!-- end of wrap -->
</body>
</html>






















