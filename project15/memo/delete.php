<?php
	$num=$_REQUEST["num"];
	
	require_once("../lib/MYDB.php");
	$pdo = db_connect();

	try{
		$pdo->beginTransaction();
		$sql = "delete from pado008.memo where num = ?";
		$stmh = $pdo->prepare($sql);
		$stmh -> bindValue(1,$num,PDO::PARAM_STR);
		$stmh -> execute();
		$pdo->commit();
		
		header("Location:../memo/memo.php");
	}  catch (Exception $ex){
		$pdo->rollBack();
		print "오류: ".$Exception -> getMassage();
	}
?>