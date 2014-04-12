<?php
	require_once("required_files/config.php");
	require_once("classes/auth.class.php");
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
	
	<?php require_once("required_files/header.php"); ?>
	<div class="container">
		<?php
			$connection=mysql_connect($db_host,$db_user,$db_pass);
			$sql="SELECT * FROM `$db_name`.`faculty`";
			$query=mysql_query($sql,$connection);
			if(mysql_num_rows($query)!=0){
				echo "<p class='text-danger'>No Faculty inserted. Try adding some.</p>";
				?>
				<table class="table">
					<tr><th>Name</th> <th>Subject Code</th> <th>Subject Name</th> <th>Semester</th> <th>Section</th> <th>Department</th><th></th></tr>
					<td><input type="text" class="form-control" style="width:250px;"></td>
					<td><input type="text" class="form-control" style="width:150px;	"></td>
					<td><input type="text" class="form-control" style="width:150px;"></td>
					<td><input type="text" class="form-control" style="width:150px;"></td>
					<td><input type="text" class="form-control" style="width:150px;"></td>
					<td><input type="text" class="form-control" style="width:150px;"></td>
				</table>
				<?php
			}else{
		?>
		<table class="table">
			<tr><th>Name</th> <th>Subject Code</th> <th>Subject Name</th> <th>Semester</th> <th>Section</th> <th>Department</th><th></th> </tr>
			<?php while($data=mysql_fetch_object($query)){
			?>
			<tr><td><?php echo $data->name;?></td><td><?php echo $data->subCode; ?></td> <td><?php echo $data->subName; ?></td> <td><?php echo $data->semester; ?></td> <td><?php echo $data->sec; ?></td> <td><?php echo $data->department; ?></td> <td><span style="cursor:pointer;" id="<?php echo $data->id; ?>" class="glyphicon glyphicon-trash text-info delete"> Delete</span></td></tr>
			<?php
				}
			?>

		</table>


					<?php

				}

			 ?>

	</div>
	











	<?php require_once("required_files/footer.php"); ?>
	<?php
	}

?>