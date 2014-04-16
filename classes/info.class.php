<?php
class getInfo
{
	public $valid,$usn,$branch,$sem,$sec,$enabled;
	function __construct($con,$db_name,$usn)
	{
		$sql="SELECT * FROM `$db_name`.`students` WHERE usn='$usn'";
		$query=mysql_query($sql);
		$data=mysql_fetch_object($query);
		if(mysql_num_rows($query)==0){
			$this->valid=false;
		}else{
			$this->valid=true;
			$this->usn=$usn;
			$this->department=$data->department;
			$this->sem=$data->semester;
			$this->sec=$data->section;
			$this->enabled=($data->enabled=="true")?true:false;
		}
	}
}

?>