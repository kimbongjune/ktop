<? if(!defined('_GUAVAPLATFORM_')) exit;

function get_oauth_member_info($no, $nick, $provider) {
    if(!$no || !$provider) return '';

    $info = array();

    $id = $provider.'-'.$no;
    $nick = $provider.'-'.$nick;
	$pass = sql_password(rand(1, 999).$no);

    $info = array('id' => $id, 'pass' => $pass, 'nick' => $nick);

    return $info;
}
?>