<? if(!defined('_GUAVAPLATFORM_')) exit;

include_once(GUAVA_SOCIAL_PATH.'/facebook/oauth.lib.php');

if(!defined('GUAVA_FACEBOOK_CLIENT_ID') || !GUAVA_FACEBOOK_CLIENT_ID || !defined('GUAVA_FACEBOOK_CLIENT_SECRET') || !GUAVA_FACEBOOK_CLIENT_SECRET) {
	alert('페이스북로그인 API 정보를 설정해 주십시오.');
}

$oauth = new FACEBOOK_OAUTH(GUAVA_FACEBOOK_CLIENT_ID, GUAVA_FACEBOOK_CLIENT_SECRET);

$oauth->set_state_token();

$query = $oauth->get_auth_query();
?>