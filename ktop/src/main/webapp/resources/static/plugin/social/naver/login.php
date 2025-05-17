<? if(!defined('_GUAVAPLATFORM_')) exit;

include_once(GUAVA_SOCIAL_PATH.'/naver/oauth.lib.php');

if(!defined('GUAVA_NAVER_CLIENT_ID') || !GUAVA_NAVER_CLIENT_ID || !defined('GUAVA_NAVER_CLIENT_SECRET') || !GUAVA_NAVER_CLIENT_SECRET) {
	alert('네이버 로그인 API 정보를 설정해 주십시오.');
}
$oauth = new NAVER_OAUTH(GUAVA_NAVER_CLIENT_ID, GUAVA_NAVER_CLIENT_SECRET);

$oauth->set_state_token();

$query = $oauth->get_auth_query();
?>