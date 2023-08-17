<?php
	$composer=$_REQUEST["composer"];
	
	require_once("../lib/MYDB.php");
	$pdo = db_connect();
	
	try{
		$pdo->beginTransaction();   
		$sql = "update pado008.survey set $composer=$composer + 1";
		$stmh = $pdo->prepare($sql); 
		$stmh->execute();
		$pdo->commit(); 
    
		header("Location:result.php");
    } catch (PDOException $Exception) {
		$pdo->rollBack();
		print "오류: ".$Exception->getMessage();
    } 
?>	