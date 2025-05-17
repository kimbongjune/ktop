<?php
class AESCrypt {
	var $skey;
	var $iv;

	function filter($par) {
		$par = htmlspecialchars($par);
		$par = strip_tags($par);
		$par = sql_escape_string($par);
		$par = str_replace("'","\"",$par);
		$par = str_replace("`","\"",$par);
		$par = $par.trim();
		
		return $par;
	}

	function setKey($KEY, $IV) {
		$this->skey = $KEY;
		$this->iv = $IV;
	}

	function decrypt($value) {
		$value = base64_decode($value);
		$output = mcrypt_decrypt(MCRYPT_RIJNDAEL_128, $this->skey, $value, MCRYPT_MODE_CBC, $this->iv);
		$valueLen = strlen($output);

		if( $valueLen % 16 > 0 ) $output = '';

		$padSize = ord($output{$valueLen - 1});
		if( ($padSize < 1) or ($padSize > 16) ) $output = '';                // Check padding.

		for($i=0;$i<$padSize;$i++) {
			if ( ord($output{$valueLen - $i - 1}) != $padSize ) $output = '';
		}

		$output = substr($output, 0, $valueLen - $padSize);

		//return $this->filter($output);
		return $output;
	}
}
/*
function attemptpack($s) {
	$p=pack("H*", $s);
	return $p;
}
*/
?>