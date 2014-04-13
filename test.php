<?php
//var_dump($_GET);
// echo crypt("nishchal11","n!shch@l")."<br>";
// echo crypt("nishchal12","n!shch@l")."<br>";
// echo crypt("password23","n!shch@l")."<br>";
// echo crypt("password","n!shch@l")."<br>";
// echo crypt("admin","n!shch@l")."<br>";
$usn="1VE12IS025";
$pattern="/([0-9]{2})([A-Z]{2})(?:[0-9]{3})/";
preg_match($pattern, $usn,$matches);
var_dump($matches);
?>