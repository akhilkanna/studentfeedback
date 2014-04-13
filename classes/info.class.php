<?php
class getInfo
{
	private $usn,$branchVar,$year;
	public $valid;
	function __construct($usn)
	{
		$this->usn=strtoupper($usn);
		$pattern="/^1VE([0-9]{2})([A-Z]{2})(?:[0-9]{3})/";
		if(preg_match($pattern, $usn,$matches)){
			$this->valid=true;
			$this->year=$matches[1];
			$this->branchVar=$matches[2];

		}else{
			$this->valid=false;
		}

	}
	function getBranch(){
		$branchVar=$this->branchVar;
		switch ($branchVar)
		{
			case 'IS':
				return 'ISE';
				break;

			case 'CS':
				return 'CSE';
				break;

			case 'ME':
				return 'ME';
				break;

			case 'EC':
				return 'ECE';
				break;

			case 'EE':
				return 'EEE';
				break;
			default:
				return false;
				break;

		}
	}
	function getSem(){
		switch ($this->year) {
			case '13':
				return 2;
				break;
			case '12':
				return 4;
				break;
			case '11':
				return 6;
				break;
			case '10':
				return 8;
				break;
			default:
				return false;
				break;
		}
	}
}

?>