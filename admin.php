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
	<?php $title="Admin >> Add or Delete Member"; require_once("required_files/header.php"); ?>
	<div class="container">
		<?php 
	$form = '<tr><td><input type="text" name="name" class="form-control" style="width:250px;"></td>
	<td><input type="text" name="subCode" class="form-control" style="width:150px;"></td>
	<td><input type="text" name="subName" class="form-control" style="width:150px;"></td>
	<td><input type="text" name="sem" class="form-control" style="width:150px;"></td>
	<td><input type="text" name="section" class="form-control" style="width:150px;"></td>
	<td><input type="text" name="department" class="form-control" style="width:150px;"></td>
	<td><input type="submit" id="addMember" name="submit" class="btn btn-primary" value="Add"></td></td>';
	 ?>

		<?php
			$connection=mysql_connect($db_host,$db_user,$db_pass);
			$sql="SELECT * FROM `$db_name`.`faculty`";
			$query=mysql_query($sql,$connection);
			if(mysql_num_rows($query)==0){
				echo "<p class='text-danger'>No faculty added. Try adding some.</p>";
			}else{
		?>
		<table class="table">
			<tr><th>Name</th> <th>Subject Code</th> <th>Subject Name</th> <th>Semester</th> <th>Section</th> <th>Department</th><th></th> </tr>
			<?php while($data=mysql_fetch_object($query)){
			?>
			<tr><td><?php echo $data->name;?></td><td><?php echo $data->subCode; ?></td> <td><?php echo $data->subName; ?></td> <td><?php echo $data->semester; ?></td> <td><?php echo $data->sec; ?></td> <td><?php echo $data->department; ?></td> <td><span style="cursor:pointer;" data-id="<?php echo $data->id; ?>" class="glyphicon glyphicon-trash text-info delete"> Delete</span></td></tr>

			<?php
				}
			?>

		</table>


					<?php

				}

			 ?>
			 <table class="table">
			 	<tr><th>Name</th> <th>Subject Code</th> <th>Subject Name</th> <th>Semester</th> <th>Section</th> <th>Department</th><th></th> </tr>
			 	<form action="ajax/addmember.php" id="membershipForm" method="post">
					<?php echo $form; ?>
				</form>
			 </table>

	</div>
	
	



	<script>

	$("#membershipForm").on('submit',function(e){
		e.preventDefault();
		$data=$(this).serialize();
		$.ajax({
			url: 'ajax/addMember.php',
			type: 'POST',
			dataType: 'text',
			data: $data,
		})
		.done(function(e) {
			if(e!="Fail"){
				a=$("#membershipForm").serializeArray()
				row=$(document.createElement("tr"));
				for (var i = 0;i<=a.length - 1; i++) {
					data=$(document.createElement("td"));
					data.html(a[i].value);
					row.append(data);
				}
				data=$(document.createElement("td"))
				data.html("<span class='glyphicon glyphicon-trash text-info delete' data-id='"+e+"' onClick=\"alert('You must refresh page before deleting newly added members')\" style='cursor:pointer;'> Delete</span>");
				row.append(data)
				table=$("table").first();
				table.append(row);
			}else{
				$div=document.createElement("div");
				$($div).addClass('alert').addClass('alert-danger').html('Something went wrong, please try again!');
				$table=$('table').first();
				$table.append($div);
			}
		})
		.fail(function() {
			$div=document.createElement("div");
			$($div).addClass('alert').addClass('alert-danger').html('Seems like network is down!');
			$table=$('table').first();
			$table.append($div);
		})
		
	})





		$(".delete").click(function(event) {
			$this=$(this);
			$row=$this.parent().parent();
			$data=$this.data("id");
			if(confirm("This might hurt, Don't say we didn't warn you. And Deleting Can't be undone")){
				$.ajax({
					url: 'ajax/deleteMember.php',
					type: 'POST',
					dataType: 'text',
					data: {id: $data},
				})
				.done(function(e) {
					if(e=="Success"){
						$row.hide("slow");
					}
					else{
						$div=document.createElement("div");
						$($div).addClass('alert').addClass('alert-danger').html('Please check your connection!');
						$table=$('table').first();
						$table.append($div);
					}
					
				})
				.fail(function(e) {
						$div=document.createElement("div");
						$($div).addClass('alert').addClass('alert-danger').html('Something went wrong, please try again!');
						$table=$('table').first();
						$table.append($div);
				});
				
			}
		});

		function deletehandler(){
			$this=$(this);
			$row=$this.parent().parent();
			$data=$this.data("id");
			if(confirm("This might hurt, Don't say we didn't warn you. And Deleting Can't be undone")){
				$.ajax({
					url: 'ajax/deleteMember.php',
					type: 'POST',
					dataType: 'text',
					data: {id: $data},
				})
				.done(function(e) {
					if(e=="Success"){
						$row.hide("slow");
					}
					else{
						$div=document.createElement("div");
						$($div).addClass('alert').addClass('alert-danger').html('Please check your connection!');
						$table=$('table').first();
						$table.append($div);
					}
					
				})
				.fail(function(e) {
						$div=document.createElement("div");
						$($div).addClass('alert').addClass('alert-danger').html('Something went wrong, please try again!');
						$table=$('table').first();
						$table.append($div);
				});
				
			}
		});
		}

	</script>
	<?php require_once("required_files/footer.php"); ?>
	<?php
	}

?>