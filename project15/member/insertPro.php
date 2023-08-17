<?php 
	$id = $_REQUEST["id"];
	$pass = $_REQUEST["pass"];
	$name = $_REQUEST["name"];
	$nick = $_REQUEST["nick"];
	$hp1 = $_REQUEST["hp1"];
	$hp2 = $_REQUEST["hp2"];
	$hp3 = $_REQUEST["hp3"];
	$email1 = $_REQUEST["email1"];
	$email2 = $_REQUEST["email2"];
	$hp = $hp1."-".$hp2."-".$hp3;
	$email = $email1."@".$email2;
	
	

	require_once("../lib/MYDB.php"); //데이터 베이스 연동
	$pdo = db_connect();
	
	try{
		$pdo->beginTransaction();
		$sql = "insert into pado008.member VALUES(?, ?, ?, ?, ?, ?, now(), 9)";
		$stmh = $pdo->prepare($sql);
		$stmh->bindValue(1,$id,PDO::PARAM_STR);
		$stmh->bindValue(2,$pass,PDO::PARAM_STR);
		$stmh->bindValue(3,$name,PDO::PARAM_STR);
		$stmh->bindValue(4,$nick,PDO::PARAM_STR);
		$stmh->bindValue(5,$hp,PDO::PARAM_STR);
		$stmh->bindValue(6,$email,PDO::PARAM_STR);
		$stmh->execute();
		$count = $stmh->rowCount();	//q	
		$pdo->commit();
		
		header("Location:../index.php");
		
	} catch (PDOException $Exception) {
		$pdo->rollBack();
		print "오류 : ".$Exception->getMessage();		
	}
?>