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
	$id=mysql_real_escape_string($_POST['id']);
	$con=mysql_connect($db_host,$db_user,$db_pass);
	$query=mysql_query("DELETE FROM `$db_name`.`faculty` WHERE id=$id");
	if($query){
		echo "Success";
	}else{
		echo "Fail";
	}
}
?>
