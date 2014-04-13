<?php
require_once("../classes/info.class.php");
$usn=$_GET['usn'];
$a=new getInfo($usn);
if($a->valid){
	echo $a->getSem();
}else{
	echo "fail";
}
?>