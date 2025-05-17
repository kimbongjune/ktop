<? if(!defined('_GUAVAPLATFORM_')) exit;

include_once(GUAVA_SOCIAL_PATH.'/google/oauth.lib.php');

if(!defined('GUAVA_GOOGLE_CLIENT_ID') || !GUAVA_GOOGLE_CLIENT_ID || !defined('GUAVA_GOOGLE_CLIENT_SECRET') || !GUAVA_GOOGLE_CLIENT_SECRET) {
	alert('구글+ 로그인 API 정보를 설정해 주십시오.');
}

$oauth = new GOOGLE_OAUTH(GUAVA_GOOGLE_CLIENT_ID, GUAVA_GOOGLE_CLIENT_SECRET);

$oauth->set_state_token();

$query = $oauth->get_auth_query();
?>