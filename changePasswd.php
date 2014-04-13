<?php
	require_once("required_files/config.php");
	require_once("classes/auth.class.php");
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
	if($a!=true){
		header("location:adminlogin.php?error=notLoggedIn");
	}else{?>

	<?php if(isset($_POST['submit'])){
		if($_POST['oldPass']==""|| $_POST['password']==""||$_POST['password']!=$_POST['repassword']){
			header("location:changePasswd.php?error=true");
		}else{
			$username=mysql_real_escape_string($_COOKIE['username']);
			$oldPass=mysql_real_escape_string($_POST['oldPass']);
			$oldPass=crypt($oldPass,$salt);
			$con=mysql_connect($db_host,$db_user,$db_pass);
			$data=mysql_fetch_object(mysql_query("SELECT * FROM `$db_name`.`admin` WHERE username='$username';"));
			$passwddb=$data->password;
			if($oldPass!=$passwddb){
				header("location:changePasswd.php?error=true");
				die();
			}
			$password=mysql_real_escape_string($_POST['password']);
			$password=crypt($password,$salt);
			$sql="UPDATE `$db_name`.`admin` SET password='$password' WHERE username='$username';";
			$query=mysql_query($sql) or die("Error:".mysql_error());
			setcookie("password",$password,time()+3600);
			header("location:changePasswd.php?error=false");
		}
		}else{ ?>

	<?php $title="Admin >> Change Password"; require_once("required_files/header.php"); ?>
	<div class="container">
		<div class="row">
			<?php if(isset($_GET['error'])){
				if($_GET['error']=="true"){
				$class="alert-danger";
				$text="There was some error in changing of data, please try again!";
				}else{
					$class="alert-success";
					$text="Password Successfully Updated";
					}
					?>
<div class="alert <?php echo $class ?>" align="center"><?php echo $text; ?></div>
					<?php

				} 

				?>
			<div class="col-sm-6 col-sm-offset-3">
				<p class="lead">Your password can't be more than 8 characters.</p>
				<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
				<!-- could have given a reCaptcha to solve, but we are in a college computer so that much security isn't required! -->
				<p><input placeholder="Old Password" maxlength="8" type="password" name="oldPass" class="form-control"></p>
				<p><input placeholder="New Password" maxlength="8" type="password" name="password" class="form-control"></p>
				<p><input placeholder="Verify New Password" maxlength="8" type="password" name="repassword" class="form-control"></p>
				<p><input type="submit" name="submit" value="submit" class="btn btn-default btn-login btn-block"></p>
		</form>
			</div>
		</div>

	</div>
	<?php require_once("required_files/footer.php"); ?>
	<?php
	}
}
?>