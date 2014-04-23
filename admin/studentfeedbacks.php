<?php
	require_once("../required_files/config.php");
	require_once("../classes/auth.class.php");
	if(isset($_COOKIE['username'],$_COOKIE['password'])){
	authenticate::$db_host=$db_host;
	authenticate::$db_user=$db_user;
	authenticate::$db_pass=$db_pass;
	authenticate::$db_name=$db_name;
	authenticate::$username=$_COOKIE['username'];
	authenticate::$password=$_COOKIE['password'];
	$a=authenticate::check();
	if($a!=true){
		header("location:index.php?error=notLoggedIn");
		die();
	}
}else{
	header("location:/admin");
}
?>
<?php $title="Login Admin"; require_once('../required_files/header.php'); ?>
	<div align="center">
		<a href="admin.php" >Part A</a> | <a href="collegeResult.php" >Part B</a> | <a href="studentfeedbacks.php">Student's Comments</a>
	</div>
	<div class="jumbotron">
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1">
			<form action="<?php echo $_SERVER['PHP_SELF']; ?>" onchange="this.submit()" method="get">
			Show <select style="margin-bottom:20px;" name="limit" id="">
					<?php $limit=(isset($_GET['limit']))?$_GET['limit']:20;?>
					<option value="5" <?php if ($limit==5) {echo "selected";} ?>>5</option>
					<option value="10" <?php if ($limit==10) {echo "selected";} ?>>10</option>
					<option value="15" <?php if ($limit==15) {echo "selected";} ?>>15</option>
					<option value="20" <?php if ($limit==20) {echo "selected";} ?>>20</option>
					<option value="50" <?php if ($limit==50) {echo "selected";} ?>>50</option>
				</select> Comments Per Page
			</form>
				<?php 
					$limit=(isset($_GET['limit']))?$_GET['limit']:20;
					$limit=($limit<0)?0:$limit;
					$offset=(isset($_GET['offset']))?$_GET['offset']:0;
					$offset=($offset<0)?0:$offset;
					$sql="SELECT id,message FROM `$db_name`.`feedbackStudents` LIMIT $limit OFFSET $offset";
					$query=mysql_query($sql);
					while ($data=mysql_fetch_object($query)) {
						echo "<h3>Comment ID : ".$data->id."</h3><span style='font-family:acme;'>".$data->message."</span>";
					}
				 ?>
				 <div class="row"><a href="<?php $newoffset=$offset-$limit;echo $_SERVER['PHP_SELF']."?limit=$limit&offset=$newoffset"; ?>" class="badge <?php if($newoffset<0){echo "disabled";} ?> btn btn-info">&lt;&lt; Prev</a><a href="<?php $newoffset=$offset+$limit; echo $_SERVER['PHP_SELF']."?limit=$limit&offset=$newoffset"; ?>" class="badge btn btn-info pull-right">Next &gt;&gt;</a></div>
			</div>
		</div>
	</div>
<?php require_once('../required_files/footer.php'); ?>