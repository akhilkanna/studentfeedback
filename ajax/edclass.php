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
	require_once("../required_files/config.php");
	$con=mysql_connect($db_host,$db_user,$db_pass);
	$check=$_POST['enable'];
	$value=$_POST['values'];
	$values=explode("&", $value);
	$department=mysql_real_escape_string($values[0]);
	$semester=mysql_real_escape_string($values[1]);
	$section=mysql_real_escape_string($values[2]);
	$sql="UPDATE `$db_name`.`students` SET enabled='$check' WHERE department='$department' AND semester='$semester' AND section='$section' ";
	$con=mysql_connect($db_host,$db_user,$db_pass);
	if(mysql_query($sql)){
		echo "success";
	}else{
		echo "fail".mysql_error();
	}
}
?>
