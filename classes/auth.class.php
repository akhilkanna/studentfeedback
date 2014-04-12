<?php
	/**
	* 
	*/
	class authenticate
	{
		public static $db_host,$db_user,$db_pass,$db_name,$username,$password;
		public static function check(){
			$db_host=self::$db_host;
			$db_user=self::$db_user;
			$db_pass=self::$db_pass;
			$db_name=self::$db_name;
			$username=self::$username;
			$password=self::$password;
			$con=mysql_connect($db_host,$db_user,$db_pass);
			$username=mysql_real_escape_string($username);
			$sql="SELECT * FROM `$db_name`.`admin` WHERE `username`='$username' LIMIT 1";
			$query=mysql_query($sql);
			$num=mysql_num_rows($query);
			if($num!=1){
				return false;
			}
			else{
				$data=mysql_fetch_object($query);
				$passdb=$data->password;
				if($password==$passdb){
					return true;
				}else{
					return false;
				}
			}
		}

	}


?>