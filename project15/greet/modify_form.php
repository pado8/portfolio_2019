<?php
	session_start();

	$num=$_REQUEST["num"];

	require_once("../lib/MYDB.php");
	$pdo = db_connect();

	try{
		$sql = "select * from pado008.greet where num=?";
		$stmh = $pdo->prepare($sql);
		$stmh->bindValue(1, $num, PDO::PARAM_STR);
		$stmh->execute();
		$count = $stmh->rowCount();
		
		if($count<1){
			print "검색결과가 없습니다. <br/>";
		} else {
			
			while($row = $stmh->fetch(PDO::FETCH_ASSOC)){
				$item_subject = $row["subject"];
				$item_content = $row["content"];
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
	<title>글수정</title>
	<link rel="stylesheet" type="text/css" href="../css/reset.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/base.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/main.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/greet.css" media="all" />
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
			<h2>가입인사</h2>
			<ul>
				<li class="homeimg">home</li>
				<li>DELIVERY</li>
				<li>write</li>
			</ul>
		</div>
	</div>
	<div id="content">
		<?php include "../lib/sub_left_menu.php"; ?>
		<div id="col2">
			<div id="title">글수정</div>
			<div class="clear"></div>
			<form  name="board_form" method="post" action="insert.php?mode=modify&num=<?=$num?>">
				<div id="write_form">
					<div class="write_line"></div>
					<div id="write_row1">
						<div class="col1"> 닉네임 </div>
						<div class="col2"><?=$_SESSION["nick"]?></div>
						<div class="col3">
							<input type="checkbox" name="html_ok" value="y"> HTML 쓰기
						</div>
					</div>
					<div class="write_line"></div>
					<div id="write_row2">
						<div class="col1"> 제목 </div>
						<div class="col2"><input type="text" name="subject" value="<?= $item_subject ?>" required></div>
					</div>
					<div class="write_line"></div>
					<div id="write_row3">
						<div class="col1"> 내용 </div>
						<div class="col2">
							<textarea rows="15" cols="79" name="content" required><?= $item_content ?></textarea>
						</div>
					</div>
					<div class="write_line"></div>
				</div> <!-- id="write_form" -->
				<div id="write_button">
					<input type="submit" value="완료">
					<a href="list.php">목록</a>
				</div>
			</form>
		</div> <!-- id="col2" -->
	</div><!-- end of content -->
	<?php include "../lib/footer.php"; ?>
</div> <!-- end of wrap -->
<?php
			}//if end
		}//while end
	} catch (PDOException $Exception) {
		print "오류: ".$Exception->getMessage();
	}
?>
</body>
</html>