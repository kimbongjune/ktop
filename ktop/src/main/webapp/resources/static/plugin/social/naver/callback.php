<? if(!defined('_GUAVAPLATFORM_')) exit;

include_once(GUAVA_SOCIAL_PATH.'/naver/oauth.lib.php');

if(!defined('GUAVA_NAVER_CLIENT_ID') || !GUAVA_NAVER_CLIENT_ID || !defined('GUAVA_NAVER_CLIENT_SECRET') || !GUAVA_NAVER_CLIENT_SECRET) {
	alert('네이버 로그인 API 정보를 설정해 주십시오.');
}

$oauth = new NAVER_OAUTH(GUAVA_NAVER_CLIENT_ID, GUAVA_NAVER_CLIENT_SECRET);


if($oauth->check_valid_state_token($_GET['state'])) {
    if($oauth->get_access_token($_GET['code'])) {
        $oauth->get_profile();

        if($oauth->profile->message == 'success') {
            $email = $oauth->profile->email;
            $info  = get_oauth_member_info($oauth->profile->id, $oauth->profile->nickname, 'naver');

            if($info['id']) {
                unset($member);

                $member = array(
                            'user_id'       => $info['id'],
                            'user_passwd' => $info['pass'],
                            'user_email'    => $email,
                            'user_nick'     => $info['nick'],
                            'user_name'     => $oauth->profile->name,
                            'user_type'		=> '10',
                            'user_level'    => '',
							'user_picture'  => $oauth->profile->profile_image
                        );

                set_session('ss_oauth_member_no','naver_'.$oauth->profile->id);
                set_session('ss_oauth_member_naver_'.$oauth->profile->id.'_info', $member);
            }
        } else {
            alert('서비스 장애 또는 정보가 올바르지 않습니다.');
        }
    } else {
        alert('토큰 정보가 올바르지 않습니다.');
    }
} else {
    alert('올바른 방법으로 이용해 주십시오.');
}
?>