<?php 
if(isset($_POST['submit']))
{
	
}else{
?>
<?php require_once('required_files/header.php'); ?>
	<div class="jumbotron">
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