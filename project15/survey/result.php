<?php
//survey/result.php

	require_once("../lib/MYDB.php");
	$pdo = db_connect();
	
	try{  
		$sql = "select * from pado008.survey";
		$stmh = $pdo->query($sql); 
    
		$row=$stmh->fetch(PDO::FETCH_ASSOC);
	
		$total=$row["ans1"] + $row["ans2"] + $row["ans3"] + $row["ans4"];
		$ans1_percent = $row["ans1"]/$total * 100;
		$ans2_percent = $row["ans2"]/$total * 100;
		$ans3_percent = $row["ans3"]/$total * 100;
		$ans4_percent = $row["ans4"]/$total * 100;
		$ans1_percent = floor($ans1_percent);
		$ans2_percent = floor($ans2_percent);
		$ans3_percent = floor($ans3_percent);
		$ans4_percent = floor($ans4_percent);
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
	<title>설문조사</title>
	<link rel="stylesheet" type="text/css" href="../css/reset.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/base.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/main.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../css/survey.css" media="all" />
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap&subset=korean" rel="stylesheet">
</head>
<body>
	<table width="300" height="250" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td width="180" height="1" colspan="5"></td>
		</tr>
		<tr>
			<td width="1" height="35"></td>
			<td width="1"></td>
			<td width="150" align="center"><b>총 투표수 : <?php print $total ?>&nbsp; 명</b></td>
			<td width="9"></td>
			<td width="1"></td>
		</tr>
		<tr>
			<td height="29"></td>
			<td></td>
			<td valign="middle"><b>가장 좋아하는 햄버거 메뉴는?</b></td>
			<td></td>
		</tr>
		<tr>
			<td height="20"></td>
			<td></td>
			<td>오리지널 타워버거 (<b><?php print $ans1_percent ?></b> %)
			<font color="purple"><b><?php print $row["ans1"] ?></b></font> 명</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td height="3"></td>
			<td></td>
			<td>
				<table width="100" border="0" height="3" cellspacing="0" cellpadding="0">
					<tr>
					<?php
						$rest = 100 - $ans1_percent;
						print "
							<td width='$ans1_percent%' bgcolor='purple'></td>
							<td width='$rest%' bgcolor='#dddddd' height='5'></td>
							";
					?>
					</tr>
				</table>
			</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td height="20"></td>
			<td></td>
			<td>트리플리치 오리지널버거(<b><?php print $ans2_percent ?></b> %)
			<font color="blue"><b><?php print $row["ans2"] ?></b></font> 명</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td height="3"></td>
			<td></td>
			<td>
				<table width="100" border="0" height="3" cellspacing="0" cellpadding="0">
					<tr>
					<?php
						$rest = 100 - $ans2_percent;
						print "
							<td width='$ans2_percent%' bgcolor='blue'></td>
							<td width='$rest%' bgcolor='#dddddd' height='5'></td>
							";
					?>
					</tr>
				</table>
			</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td height="20"></td>
			<td></td>
			<td>징거더블 다운맥스버거(<b><?php print $ans3_percent ?></b>%)
				<font color="skyblue"><b><?php print $row["ans3"] ?></b></font> 명
			</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td height="3"></td>
			<td></td>
			<td>
				<table width="100" border="0" height="3" cellpadding="0" cellpadding="0">
					<tr>
					
						<?php
						$rest = 100 - $ans3_percent;
						print "
							<td width='$ans3_percent%' bgcolor='green'></td>
							<td width='$rest%' bgcolor='#dddddd' height='5'></td>
							";
						?>
					</tr>
				</table>
			</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td height="20"></td>
			<td></td>
			<td>블랙라벨에그 타워버거(<b><?php print $ans4_percent ?></b>%)
				<font color="skyblue"><b><?php print $row["ans4"] ?></b></font> 명
			</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td height="3"></td>
			<td></td>
			<td>
				<table width="100" border="0" height="3" cellpadding="0" cellpadding="0">
					<tr>
					
						<?php
						$rest = 100 - $ans4_percent;
						print "
							<td width='$ans4_percent%' bgcolor='skyblue'></td>
							<td width='$rest%' bgcolor='#dddddd' height='5'></td>
							";
						?>
					</tr>
				</table>
			</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td height="40"></td>
			<td></td>
			<td id="button"align="center" valign="middle">
				<!--<input type="image" style="cursor:hand" src="../img/close.gif" border="0" onfocus="this.blur()" onclick="window.close()"/>-->
				<a href="#" onclick="window.close()">창닫기</a>
			</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td height="1" colspan="5"></td>
		</tr>
	</table>
	<?php
		}catch (PDOException $Exption) {
			print "오류: ".$Exception->getMessage();
		}
	?>
</body>
</html>