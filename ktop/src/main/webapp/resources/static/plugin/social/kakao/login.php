<? if(!defined('_GUAVAPLATFORM_')) exit;

include_once(GUAVA_SOCIAL_PATH.'/kakao/oauth.lib.php');

if(!defined('GUAVA_KAKAO_REST_API_KEY') || !GUAVA_KAKAO_REST_API_KEY) {
	alert('카카오 로그인 API 정보를 설정해 주십시오.');
}

$oauth = new KAKAO_OAUTH(GUAVA_KAKAO_REST_API_KEY);

$oauth->set_state_token();

$query = $oauth->get_auth_query();
?>