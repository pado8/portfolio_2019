<?php
//greet/view.php
	session_start();

	$num=$_REQUEST["num"];

	require_once("../lib/MYDB.php");
	$pdo = db_connect();

	try{
		$sql = "select * from pado008.greet where num=?";
		$stmh = $pdo->prepare($sql);
		$stmh->bindValue(1, $num, PDO::PARAM_STR);
		$stmh->execute();

		while($row = $stmh->fetch(PDO::FETCH_ASSOC)){
			$item_num     = $row["num"];
			$item_id      = $row["id"];
			$item_name    = $row["name"];
			$item_nick    = $row["nick"];
			$item_subject = str_replace(" ", "&nbsp;", $row["subject"]);
			$item_content = $row["content"];
			$item_date    = $row["regist_day"];
			$item_date    = substr($item_date, 0, 10);
			$item_hit     = $row["hit"];
			$is_html      = $row["is_html"];

			if ($is_html!="y"){
				$item_content = str_replace(" ", "&nbsp;", $item_content);
				$item_content = str_replace("\n", "<br />", $item_content);
			}

			$new_hit = $item_hit + 1;
			
			try{
				$pdo->beginTransaction();
				$sql = "update pado008.greet set hit=? where num=?";   // 글 조회수 증가
				$stmh = $pdo->prepare($sql);
				$stmh->bindValue(1, $new_hit, PDO::PARAM_STR);
				$stmh->bindValue(2, $num, PDO::PARAM_STR);
				$stmh->execute();
				$pdo->commit();
			} catch (PDOException $Exception) {
				$pdo->rollBack();
				print "오류: ".$Exception->getMessage();
			}
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
	<title>글내용보기</title>
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
<script>
	function del(href)
	{
		if(confirm("한번 삭제한 자료는 복구할 방법이 없습니다.\n\n정말 삭제하시겠습니까?")) {
			document.location.href = href;
		}
	}
</script>
</head>
<body>
<div id="wrap">
	<?php include "../lib/header.php"; ?>
	<div id="subtitle">
		<div class="subtitWrap">
			<h2>내용보기</h2>
			<ul>
				<li class="homeimg">home</li>
				<li>DELIVERY</li>
				<li>VIEW</li>
			</ul>
		</div>
	</div>
	<div id="content">
		<?php include "../lib/sub_left_menu.php"; ?>
		<div id="col2">
			<div id="view_title">
				<div id="view_title1"><?= $item_subject ?></div>
				<div id="view_title2"><?= $item_nick ?>&nbsp;&nbsp;|&nbsp;&nbsp;조회 : <?= $item_hit ?>&nbsp;&nbsp;|&nbsp;&nbsp;<?= $item_date ?> </div>
			</div>
			<div id="view_content"><?= $item_content ?></div>
			<div id="view_button">
				<a href="list.php">목록</a>
		<?php
			if(isset($_SESSION["userid"])) {
				if($_SESSION["userid"]==$item_id || $_SESSION["userid"]=="admin"){
		?>
					<a href="modify_form.php?num=<?=$num?>">수정</a>
					<a href="javascript:del('delete.php?num=<?=$num?>')">삭제</a>
		<?php  	
				}
		?>
					<a href="write_form.php">글쓰기</a>
<?php
			}//if end
		}//while end
	} catch (PDOException $Exception) {
		print "오류: ".$Exception->getMessage();
	}
?>
			</div><!-- id="view_button" -->
			<div class="clear"></div>
		</div><!-- id="col2" -->
	</div><!-- end of content -->
	<?php include "../lib/footer.php"; ?>
</div><!-- id="wrap" -->
</body>
</html>

