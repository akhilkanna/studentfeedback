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
		if($_POST['username']==""|| $_POST['password']==""||$_POST['password']!=$_POST['repassword']){
			header("location:addAdmin.php?error=true");
		}else{
			$username=mysql_real_escape_string($_POST['username']);
			$password=mysql_real_escape_string($_POST['password']);
			$password=crypt($password,$salt);
			$con=mysql_connect($db_host,$db_user,$db_pass);;
			$sql="INSERT INTO `$db_name`.`admin` (id,username,password) VALUES (NULL,'$username','$password')";
			$query=mysql_query($sql) or die("Error:".mysql_error());
			header("location:addAdmin.php?error=false");
		}
		}else{ ?>
	<?php $title="Admin >> Add Admin"; require_once("required_files/header.php"); ?>
	<div class="container">
		<div class="row">
			<?php if(isset($_GET['error'])){
				if($_GET['error']=="true"){
				$class="alert-danger";
				$text="There was some problem in creation of user, please fill the form without any mistakes then try again.";
				}else{
					$class="alert-success";
					$text="User Sucessfully Created!";
					}
					?>
<div class="alert <?php echo $class ?>" align="center"><?php echo $text; ?></div>
					<?php
				} 
				?>
			<div class="alert alert-warning" align="center">Admins once created, can't be deleted. Be careful what you wish for.</div>
			<div class="col-sm-6 col-sm-offset-3">
				<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
				<p><input placeholder="Username" type="text" name="username" class="form-control"></p>
				<p><input maxlength="8" placeholder="Password" type="password" name="password" class="form-control"></p>
				<p><input maxlength="8" placeholder="Just In case, Re-type Password" type="password" name="repassword" class="form-control"></p>
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