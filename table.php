<?php 
$teachers = array(1,2,3,4,5,6,7,8);
$parameters = array('blackboard usage','audibility','able to clear doubts','preparation for exam');
?>
<table>
	<tr>
		<?php 
		$a="<th>";	
		$a=$a. implode("</th><th>", $teachers);
		$a=$a. "</th>";
		echo $a;
		?>
	</tr>

</table>