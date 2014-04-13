<?php
class getInfo
{
	private $usn,$branchVar,$year;
	function __construct($usn)
	{
		$this->usn=$usn;
		///////////////////////////regular exp to get year and the branch var
		//set the values.
	}
	function getBranch(){
		switch ($this->branchVar)
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
	function getSem($this->year){
		switch ($year) {
			case '13':
				return 2
				break;
			case '12':
				return 4;
				break;
			case '11':
				return 6;
				break;
			case '10'
				return 8;
				break;
			default:
				return false;
				break;
		}
	}
}

?>