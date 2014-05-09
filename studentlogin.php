<?php 
if(isset($_POST['submit']))
{
	if((!isset($_POST['usn'],$_POST['password'])) || $_POST['usn']=='' || $_POST['password']==''){
		header("location:studentlogin.php?error=emptyFields");
	}
	$usn=$_POST['usn'];
	require_once("required_files/config.php");
	require_once("classes/info.class.php");
	$con=mysql_connect($db_host,$db_user,$db_pass);
	$info=new getInfo($con,$db_name,$usn);
	if(!($info->valid)){
		header("location:studentlogin.php?error=usnInvalid");
		die();
	}
	if(!($info->enabled)){
		header("location:studentlogin.php?error=accountDisabled");
		die();
	}
	$usn=strtoupper($_POST['usn']);
	$password=strtoupper($_POST['password']);
	if($usn==$password){
		require_once("required_files/config.php");
		$usn=mysql_real_escape_string($usn);
		$con=mysql_connect($db_host,$db_user,$db_pass);
		$sql="INSERT INTO `$db_name`.`usns` (id,usn) VALUES (NULL,'$usn');";
		setcookie("usn",$usn,time()+3600,"/");
		setcookie("department",$info->department,time()+3600,"/");
		setcookie("sem",$info->sem,time()+3600,"/");
		setcookie("sec",$info->sec,time()+3600,"/");
		mysql_query($sql);
		header("location:feedback.php");
	}else{
		header("location:studentlogin.php?error=passwordMismatch");
	}
}else{
?>
<?php $title="Login Student";require_once('required_files/header.php'); ?>
	<div class="jumbotron">
		<p align="center" style="font-family:'acme'">Login using your University Serial Number</p>
		<?php if(isset($_GET['error'])){
		?>	
		<div class="alert alert-danger col-sm-6 col-sm-offset-3" align="center"><?php if($_GET['error']=="emptyFields"){
			echo "Form was not filled completely!";
			}elseif($_GET['error']=="usnInvalid"){echo "Usn you entered is invalid!";}elseif($_GET['error']=="loginRequired"){echo "You must login to continue";}else if($_GET['error']=='accountDisabled'){echo "Your account is disabled, please contact system administrator!";}else{echo "Username and password mismatch";
			} ?>
		</div>
		<?php
			} ?>
		<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3">
				<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
					<p><input type="text" id="usn" name="usn" onchange="setSem()" class="form-control" placeholder="University Seat Number" style="width:400px;"></p><p><input type="password" name="password" style="width:400px;" class="form-control" placeholder="Password"></p>
					<input type="submit" class="btn btn-default btn-login" value="Log me in!" name="submit">
				</form>
				</div>
			</div>
		</form>
	</div>
<?php require_once('required_files/footer.php'); ?>
<?php
}
?>
