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
				data.html("<span class='glyphicon glyphicon-trash text-info delete' data-id='"+e+"' onClick=\"alert('You must refresh page before deleting newly added members');\" style='cursor:pointer;'> Delete</span>");
				row.append(data)
				table=$("table").first();
				table.append(row);
				$("#membershipForm")[0].reset();
				$("#name")[0].focus();
			}else{
				$div=document.createElement("div");
				$($div).addClass('alert').addClass('alert-danger').html('Something went wrong, please try again!');
				$table=$('table').first();
				$table.after($div);
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
		function degroup (e) {
			check=e.checked;
			value=e.value;
			$.ajax({
				url: 'ajax/edclass.php',
				type: 'POST',
				dataType: 'text',
				data: {enable: check,values:value},
			})
			.done(function(e) {
				if(e=="success"){

				}else{
					alert("There was an error disabling that group please refresh the page then try again");
					console.log(e);
				}
			})
			.fail(function(e) {
				console.log("error");
			});			
		}