<?php
	session_start();

	require_once("../lib/MYDB.php");
	$pdo = db_connect();

	try{
		$sql = "select * from pado008.memo order by num desc";
		$stmh = $pdo->query($sql);
	} catch (PDOException $Exception) {
		print "오류: ".$Exception->getMessage();
	}
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
	<title>방명록</title>
	<link rel="stylesheet" type="text/css" href="../css/reset.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/base.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/main.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/memo.css" media="all" />
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
			<h2>방명록</h2>
			<ul>
				<li class="homeimg">home</li>
				<li>Menu</li>
				<li>memo</li>
			</ul>
		</div>
	</div>
	<div id="content">
		<?php include "../lib/sub_left_menu.php"; ?>
		<div id="col2">
			<div class="banner"><span>KFC에 오신것을 환영합니다!</span><p>하고 싶은 말을 자유롭게 하세요.</p></div>
			<div id="title">
				방명록 남기기
			</div>
		<?php
			//로그인 했을 때 글 쓸수 있는 권한 부여
			if(isset($_SESSION["userid"])){
		?>
			<div id="memo_row1">
				<form  name="memo_form" method="post" action="insert.php">
					<div id="memo_writer">
						<span>▷ <?=$_SESSION["nick"]?></span>
					</div>
					<div id="memo1">
						<textarea rows="4" cols="110" name="content" required></textarea>
					</div>
					<div id="memo2">
						<input type="submit" value="메모하기">
					</div>
				</form>
			</div>
		<?php
			} //if End

			while($row = $stmh->fetch(PDO::FETCH_ASSOC)) {
				$memo_id      = $row["id"];
				$memo_num     = $row["num"];
				$memo_date    = $row["regist_day"];
				$memo_nick    = $row["nick"];
				$memo_content = str_replace("\n", "<br>", $row["content"]);
				$memo_content = str_replace(" ", "&nbsp;", $memo_content);
		?>
				<div class="memo_writer_title">
					<ul>
						<li class="writer_title1"><?=$memo_num ?></li>
						<li class="writer_title2"><?=$memo_nick ?></li>
						<li class="writer_title3"><?=$memo_date ?></li>
						<li class="writer_title4">
		<?php
							if(isset($_SESSION["userid"])){
								if($_SESSION["userid"]=="admin" || $_SESSION["userid"]==$memo_id)
									print "<a href='delete.php?num=$memo_num'class='delmemo'>삭제</a>";
							}
		?>
						</li>
					</ul>
				</div><!--memo_writer_title end-->
				<div class="memo_content">
					<?= $memo_content ?>
				</div>

				<div class="ripple">
					<div class="ripple1">덧글</div>
					<div class="ripple2">
		<?php
						try{
							$sql = "select * from pado008.memo_ripple where parent='$memo_num'";
							$stmh1 = $pdo->query($sql);   // ripple PDOStatement 변수명을 다르게

						} catch (PDOException $Exception) {
							print "오류: ".$Exception->getMessage();
						}
						while ($row_ripple = $stmh1->fetch(PDO::FETCH_ASSOC)) {
							$ripple_num     = $row_ripple["num"];
							$ripple_id      = $row_ripple["id"];
							$ripple_nick    = $row_ripple["nick"];
							$ripple_content = str_replace("\n", "<br>", $row_ripple["content"]);
							$ripple_content = str_replace(" ", "&nbsp;", $ripple_content);
							$ripple_date    = $row_ripple["regist_day"];
		?>
							<div class="ripple_title">
								<ul>
									<li><?= $ripple_nick ?> &nbsp;&nbsp;&nbsp; <?= $ripple_date ?></li>
									<li class="mdi_del">
		<?php
										if(isset($_SESSION["userid"])){
											if($_SESSION["userid"]=="admin" || $_SESSION["userid"]==$ripple_id)
												print "<a href=delete_ripple.php?num=$ripple_num class='delmemo'>삭제</a>";
										}
		?>
									</li>
								</ul>
							</div>
							<div class="ripple_content"> <?= $ripple_content ?></div>
		<?php
						} //while End
						if(isset($_SESSION["userid"])){
		?>
							<form  name="ripple_form" method="post" action="insert_ripple.php">
								<input type="hidden" name="num" value="<?= $memo_num ?>">
								<div id="ripple_insert">
									<div id="ripple_textarea">
										<textarea rows="3" cols="105" name="ripple_content" required></textarea>
									</div>
									<div id="ripple_button">
										<input type="submit" value="답글달기">
									</div>
								</div>
							</form>
					
		<?php 			} ?><!-- if End-->
					</div> <!-- end of ripple2 -->
					<div class="clear"></div>
					<div class="linespace_10"></div>
				</div> <!-- end of ripple -->
		<?php
			} //65 line while End
		?>
		</div> <!-- end of col2 -->
	</div><!-- end of content -->
	<?php include "../lib/footer.php"; ?>
</div> 	<!-- end of wrap -->
</body>
</html>

