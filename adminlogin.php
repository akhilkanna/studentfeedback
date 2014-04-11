<?php 
if(isset($_POST['submit']))
{
	if((!isset($_POST['usn'],$_POST['password'])) || $_POST['usn']=='' || $_POST['password']==''){
		header("location:studentlogin.php?error=emptyFields");
	}
	//login logic.

}else{
?>
<?php require_once('required_files/header.php'); ?>
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
					<p><input type="text" name="username" class="form-control" placeholder="Username" style="width:400px;"></p><p><input type="password" name="password" style="width:400px;" class="form-control" placeholder="Password"></p>
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