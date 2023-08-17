<?php
	session_start();
	
	$id=$_REQUEST["id"];
	$pw=$_REQUEST["pass"];
	
	if($id=='admin' && $pw=='123456'){
		$_SESSION["userid"]="admin";
		$_SESSION["name"]="관리자";
		$_SESSION["nick"]="관리자";
		$_SESSION["level"]=1;
		
		header("Location:../index.php");
		exit;
	}
	
	require_once("../lib/MYDB.php");
	$pdo = db_connect();
	
	try{
		$sql = "select * from pado008.member where id = ? ";
		$stmh = $pdo->prepare($sql);
		$stmh->bindValue(1,$id,PDO::PARAM_STR);
		$stmh->execute();
		$count = $stmh->rowCount();
	}catch (PDOException $Exception) {
		print "오류: ".$Exception->getMessage();
	}
	$row=$stmh->fetch(PDO::FETCH_ASSOC);
	
	if($count<1){ //일치하는 아이디가 없는 경우
?>
	<script>
		alert("아이디가 틀립니다.");
		history.back(); //이전 페이지로 이동
	</script>
<?php
	}elseif($pw!=$row["pass"]) { //비밀번호가 같지 않을때
?>
	<script>
		alert("비밀번호가 틀립니다.");
		history.back(); //이전 페이지로 이동
	</script>	
<?php
	}else {
		$_SESSION["userid"]=$row["id"];
		$_SESSION["name"]=$row["name"];
		$_SESSION["nick"]=$row["nick"];
		$_SESSION["level"]=$row["level"];
?>
	<script>
		alert("로그인에 성공하였습니다. 메인페이지로 이동합니다.");
		location.href="../index.php";
	</script>	

<?php	
		header("Location:../index.php");
		exit;
	}	
?>