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
	<title>커뮤니티</title>
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

<?php
	require_once("../lib/MYDB.php");
	$pdo = db_connect();
	
	//search에서 넘긴 mode라고 하는 변수가 값을 가지고 있는지 여부 체크 (검색 여부)
	if(isset($_REQUEST["mode"])){
		$mode=$_REQUEST["mode"];
	}else{ 
		$mode="";
	}
	
	//사용자가 입력한 검색어
	if(isset($_REQUEST["search"])){
		$search=$_REQUEST["search"];
	} else { 
		$search="";
	}
	
	//select name=find 값으로 있음 option에 특정값을 선택 (제목/내용/닉네임/이름)
	if(isset($_REQUEST["find"])){
		$find=$_REQUEST["find"];
	} else {
		$find="";
	}
	
	if($mode=="search"){
		if(!$search){
?>
			<script>
				alert('검색할 단어를 입력해 주세요!');
				history.back();
			</script>
<?php
		}
			//where $find(제목/내용/이름) 중에서
			//like %$search% 검색어가 포함되어져 있는 것
			//order by num desc 내림차순으로
			$sql="select * from pado008.concert where $find like '%$search%' order by num desc";
	} else {
		$sql="select * from pado008.concert order by num desc";
	}//if end
	try {  
		$stmh = $pdo->query($sql); 
		$count=$stmh->rowCount(); 
?>
<body>
<div id="wrap">
	<?php include "../lib/header.php"; ?>
	<div id="subtitle">
		<div class="subtitWrap">
			<h2>커뮤니티</h2>
			<ul>
				<li class="homeimg">home</li>
				<li>STORE</li>
				<li>community</li>
			</ul>
		</div>
	</div>
	<div id="content">
		<?php include "../lib/sub_left_menu.php"; ?>
		<div id="col2">
			<div class="banner"><span>KFC에 오신것을 환영합니다!</span><p>사람들과 자유롭게 대화하세요.</p></div>
			<div id="title">게시글 목록보기</div>
			<form name="board_form" method="post" action="list.php?mode=search">
				<div id="list_search">
					<div id="list_search1">▷ 총 <?= $count ?> 개의 게시물이 있습니다.</div>
					<div id="list_search5"><input type="submit" value="검색"></div>
					<div id="list_search4"><input type="text" name="search"></div>
					<div id="list_search3">
						<select name="find">
						   <option value='subject'>제목</option>
						   <option value='content'>내용</option>
						   <option value='nick'>닉네임</option>
						   <option value='name'>이름</option>
						</select>
					</div>
					<div id="list_search2"><img src="../img/select_search.gif" alt="select"></div>					
				</div> <!-- end of list_search -->
			</form>
			<div class="clear"></div>
			<div id="list_top_title">
				<ul>
					<li id="list_title1">번호</li>
					<li id="list_title2">제목</li>
					<li id="list_title3">닉네임</li>
					<li id="list_title4">날짜</li>
					<li id="list_title5">조회수</li>
				</ul>
			</div> <!-- end of list_top_title -->
			<div id="list_content">
			<?php  // 글 목록 출력
				while($row = $stmh->fetch(PDO::FETCH_ASSOC)) {
					$item_num=$row["num"];
					$item_id=$row["id"];
					$item_name=$row["name"];
					$item_nick=$row["nick"];
					$item_hit=$row["hit"];
					$item_date=$row["regist_day"];
					$item_date=substr($item_date, 0, 10);
					$item_subject=str_replace(" ", "&nbsp;", $row["subject"]);
			?>
				<div class="list_item">
					<div class="list_item1"><?= $item_num ?></div>
					<div class="list_item2"><a href="view.php?num=<?=$item_num?>"><?= $item_subject ?></a></div>
					<div class="list_item3"><?= $item_nick ?></div>
					<div class="list_item4"><?= $item_date ?></div>
					<div class="list_item5"><?= $item_hit ?></div>
				</div> <!-- end of list_item -->

<?php
				}//while end 
	} catch (PDOException $Exception) {
		print "오류: ".$Exception->getMessage();
	}  
?>

				<div id="list_button">
					<a href="list.php">목록</a>&nbsp;
				<?php
					if(isset($_SESSION["userid"])){
				?>
						<a href="write_form.php">글쓰기</a>
				<?php
					}
				?>
				</div>
			</div> <!-- id="list_content" -->
		</div> <!-- end of col2 -->
	</div> <!-- end of content -->
	<?php include "../lib/footer.php"; ?>
</div> <!-- end of wrap -->
</body>
</html>