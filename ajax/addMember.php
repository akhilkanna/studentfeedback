<?php
	require_once("../required_files/config.php");
	require_once("../classes/auth.class.php");
	if(!isset($_COOKIE['username'],$_COOKIE['password'])){
		header("location:adminlogin.php?error=notLoggedIn");
		die();
	}
	authenticate::$db_host=$db_host;
	authenticate::$db_user=$db_user;
	authenticate::$db_pass=$db_pass;
	authenticate::$db_name=$db_name;
	authenticate::$username=$_COOKIE['username'];
	authenticate::$password=$_COOKIE['password'];
	$a=authenticate::check();
	if(!$a){
		echo "Fail";
		header("location:adminlogin.php?error=notLoggedIn");
	}else{
		$name=mysql_real_escape_string($_POST['name']);
		$subCode=mysql_real_escape_string($_POST['subCode']);
		$subName=mysql_real_escape_string($_POST['subName']);
		$sem=mysql_real_escape_string($_POST['sem']);
		$section=strtoupper(mysql_real_escape_string($_POST['section']));
		if($name==""||$subCode==""||$subName==""||$sem==""||$section==""||(!is_numeric($sem))||($section!="A"&&$section!="B")){
			die("Fail");
		}
		$department=mysql_real_escape_string($_POST['department']);
		$con=mysql_connect($db_host,$db_user,$db_pass);
		$sql="INSERT INTO `$db_name`.`faculty` (id,name,subCode,subName,semester,sec,department) VALUES(NULL,'$name','$subCode','$subName','$sem','$section','$department');";
		$query=mysql_query($sql) or die("Fail");
		if($query){
			echo mysql_insert_id($con);
		}else{
			echo "Fail";
		}
	}
?>