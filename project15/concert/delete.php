﻿<meta charset="UTF-8">
<?php
	session_start();
	$num=$_REQUEST["num"];

	require_once("../lib/MYDB.php");
	$pdo = db_connect();


	try{
		$sql = "select * from pado008.concert where num = ? ";
		$stmh = $pdo->prepare($sql);
		$stmh->bindValue(1,$num,PDO::PARAM_STR);
		$stmh->execute();
		$count = $stmh->rowCount();

		$row = $stmh->fetch(PDO::FETCH_ASSOC);
		$copied_name[0] = $row[file_copied_0];
		$copied_name[1] = $row[file_copied_1];
		$copied_name[2] = $row[file_copied_2];

		for ($i=0; $i<3; $i++){
			if ($copied_name[$i]){
				$image_name = $upload_dir.$copied_name[$i];
				unlink($image_name);
			}
		}
	}catch (PDOException $Exception) {
        print "오류: ".$Exception->getMessage();
	}

	try{
		$pdo->beginTransaction();
		$sql = "delete from pado008.concert where num = ?";
		$stmh = $pdo->prepare($sql);
		$stmh->bindValue(1,$num,PDO::PARAM_STR);
		$stmh->execute();
		$pdo->commit();

		header("Location:../concert/list.php");
	} catch (Exception $ex) {
        $pdo->rollBack();
        print "오류: ".$Exception->getMessage();
	}
?>