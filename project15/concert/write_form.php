<?php
	session_start();

	if(isset($_REQUEST["mode"]))  //수정 버튼을 클릭해서 호출했는지 체크
		$mode=$_REQUEST["mode"];
	else
		$mode="";

	if(isset($_REQUEST["num"]))  //수정 버튼을 클릭해서 호출했는지 체크
		$num=$_REQUEST["num"];
	else
		$num="";

	if ($mode=="modify"){
		try{

			require_once("../lib/MYDB.php");
			$pdo = db_connect();

			$sql = "select * from pado008.concert where num = ? ";
			$stmh = $pdo->prepare($sql);
			$stmh->bindValue(1,$num,PDO::PARAM_STR);
			$stmh->execute();
			$count = $stmh->rowCount();   //레코드 수
			if($count<1){
				print "검색결과가 없습니다.<br>";
			} else {  //수정처리
				$row = $stmh->fetch(PDO::FETCH_ASSOC);
				$item_subject = $row["subject"];
				$item_content = $row["content"];
				$item_file_0 = $row["file_name_0"];
				$item_file_1 = $row["file_name_1"];
				$item_file_2 = $row["file_name_2"];
				$copied_file_0 = $row["file_copied_0"];
				$copied_file_1 = $row["file_copied_1"];
				$copied_file_2 = $row["file_copied_2"];
			}
		}catch (PDOException $Exception) {
			print "오류: ".$Exception->getMessage();
		}
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
	<title>커뮤니티 글쓰기</title>
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
				<li>STORE</li>
				<li>write</li>
			</ul>
		</div>
	</div>
	<div id="content">
		<?php include "../lib/sub_left_menu.php"; ?>
		<div id="col2">
			<div id="title">글쓰기</div>
			<div class="clear"></div>
			<?php
				if($mode=="modify"){
			?>
			<form  name="board_form" method="post" action="insert.php?mode=modify&num=<?=$num?>" enctype="multipart/form-data">
			<?php  
				} else {
			?>
			<form  name="board_form" method="post" action="insert.php" enctype="multipart/form-data">
			<?php
				}
			?>
				<div id="write_form">
					<div class="write_line"></div>
					<div id="write_row1">
						<div class="col1"> 별명 </div>
						<div class="col2"><?=$_SESSION["nick"]?></div>
						<div class="col3">
							<input type="checkbox" name="html_ok" value="y"> HTML 쓰기
						</div>
					</div>
					<div class="write_line"></div>
					<div id="write_row2">
						<div class="col1"> 제목   </div>
						<div class="col2"><input type="text" name="subject"
								<?php if($mode=="modify"){ ?>value="<?=$item_subject?>" <?php }?> required>
						</div>
					</div>
					<div class="write_line"></div>
					<div id="write_row3">
						<div class="col1"> 내용   </div>
						<div class="col2">
							<textarea rows="15" cols="118" name="content"
								required><?php if($mode=="modify") print $item_content?></textarea>
						</div>
					</div>
					<div class="write_line"></div>
					<div id="write_row4">
						<div class="col1"> 이미지파일1   </div>
						<div class="col2"><input type="file" name="upfile[]"></div>
					</div>
					<div class="clear"></div>
				<?php
					if ($mode=="modify" && $item_file_0)
					{
				?>
					<div class="delete_ok">
						<?=$item_file_0?> 파일이 등록되어 있습니다.
						<input type="checkbox" name="del_file[]" value="0"> 삭제
					</div>
					<div class="clear"></div>
				<?php  	
					} 
				?>
					<div class="write_line"></div>
					<div id="write_row5">
						<div class="col1"> 이미지파일2  </div>
						<div class="col2"><input type="file" name="upfile[]"></div>
					</div>
					<div class="clear"></div>
				<?php 	
					if ($mode=="modify" && $item_file_1)
					{
				?>
					<div class="delete_ok">
						<?=$item_file_1?> 파일이 등록되어 있습니다.
						<input type="checkbox" name="del_file[]" value="1"> 삭제
					</div>
					<div class="clear"></div>
				<?php  	
					} 
				?>
					<div class="write_line"></div>
					<div class="clear"></div>
					<div id="write_row6">
						<div class="col1"> 이미지파일3   </div>
						<div class="col2"><input type="file" name="upfile[]"></div>
					</div>
					<div class="clear"></div>
				<?php 	
					if ($mode=="modify" && $item_file_2)
					{
				?>
					<div class="delete_ok">
						<?=$item_file_2?> 파일이 등록되어 있습니다.
						<input type="checkbox" name="del_file[]" value="2"> 삭제
					</div>
					<div class="clear"></div>
				<?php  	
					} 
				?>
					<div class="write_line"></div>
					<div class="clear"></div>
				</div>
				<div id="write_button">
					<input type="submit" value="완료">
					<a href="list.php">목록</a>
				</div>
			</form>
		</div><!--id="col2"-->
	</div><!--id="content"-->
	<?php include "../lib/footer.php"; ?>
</div><!--id="wrap"-->
</body>
</html>