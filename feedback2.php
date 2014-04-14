<?php require_once("required_files/header.php"); ?>
<div class="container">
<table class="table f2">
	<tr>
		<th style="vertical-align:middle;" rowspan="3">Class Room Ambience</th><th>Ventillation</th> <td><div class="score" data-name="ventillation"></div></td> </tr> 

		<tr> <th>power supply</th> <td><div class="score" data-name="powerSupply"></div></td> </tr>

		<tr> <th>backup</th> <td><div class="score" data-name="backup"></div></td> </tr>

		 <tr> <th rowspan="3" style="vertical-align:middle;">Cleanliness</th> <th>Classrooms</th> <td><div class="score" data-name="classroom"></div></td> </tr>

		 <tr>  <th>Corridors</th> <td><div class="score" data-name="corridors"></div></td> </tr>

		 <tr>  <th>Toilets</th> <td><div class="score" data-name="toilets"></div></td> </tr>

		 <tr> <td rowspan="4"></td> <th>Water Supply</th> <td><div class="score" data-name="watersupply"></div></td> </tr>

		 <tr>  <th>Campus Environment</th> <td><div class="score" data-name="environment"></div></td> </tr>

		 <tr>  <th>Medical Facilities in Emergency</th> <td><div class="score" data-name="medical"></div></td> </tr>

		 <tr>  <th>Transport</th> <td><div class="score" data-name="transport"></div></td> </tr>
		 <tr>
		 	<td colspan="2" align="right" style="vertical-align:middle;">Click Next to continue</td>
		 	<td><input type="submit" class="btn btn-primary btn-login" value="Next >>"></td>
		 </tr>

</table>
</div>
<script type="text/javascript" language="javascript" src="raty/lib/jquery.raty.js"></script>
<script>
$(document).ready(function() {
	$.each($('.score'), function(index, val) {
		$this=$(this);
		name=$this.data('name');
		$this.raty({scoreName:name,hints:['poor','satisfactory','good','very good','excellent']});
	});
	$(".score img").tooltip();
});
</script>
<?php require_once("required_files/footer.php"); ?>