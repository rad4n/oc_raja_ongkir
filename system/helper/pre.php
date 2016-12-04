<?php
if (!function_exists('pre')) {
	function pre($data,$exit=true) {
		echo "<pre>";
		print_r($data);
		if($exit==true) exit;
	}
}