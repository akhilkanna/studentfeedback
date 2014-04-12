<?php 
if(isset($_POST['submit']))
{
	if((!isset($_POST['usn'],$_POST['password'])) || $_POST['usn']=='' || $_POST['password']==''){
		header("location:studentlogin.php?error=emptyFields");
	}
	$usn=strtolower($_POST['usn']);
	$password=strtolower($_POST['password']);
	if($usn==$password){
		setcookie("usn", $usn, time()+35000, "/");
		require_once("required_files/config.php");
		$usn=mysql_real_escape_string($usn);
		$con=mysql_connect($db_host,$db_user,$db_pass);
		$sql="INSERT INTO `$db_name`.`usns` (id,usn) VALUES (NULL,$usn);";
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
			}else{echo "Username and password mismatch";
			} ?>
		</div>
		<?php
			} ?>
		<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3">
				<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
					<p><input type="text" name="usn" class="form-control" placeholder="University Seat Number" style="width:400px;"></p><p><input type="password" name="password" style="width:400px;" class="form-control" placeholder="Password"></p>
					<input type="submit" class="btn btn-default btn-login" name="submit">
				</form>
				</div>
			</div>
		</form>
	</div>
<?php require_once('required_files/footer.php'); ?>
<?php
}
?>