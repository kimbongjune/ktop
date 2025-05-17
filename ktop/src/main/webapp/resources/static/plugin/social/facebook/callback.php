<? if(!defined('_GUAVAPLATFORM_')) exit;

include_once(GUAVA_SOCIAL_PATH.'/facebook/oauth.lib.php');

if(!defined('GUAVA_FACEBOOK_CLIENT_ID') || !GUAVA_FACEBOOK_CLIENT_ID || !defined('GUAVA_FACEBOOK_CLIENT_SECRET') || !GUAVA_FACEBOOK_CLIENT_SECRET) {
	alert('페이스북로그인 API 정보를 설정해 주십시오.');
}

$oauth = new FACEBOOK_OAUTH(GUAVA_FACEBOOK_CLIENT_ID, GUAVA_FACEBOOK_CLIENT_SECRET);

if($oauth->check_valid_state_token($_GET['state'])) {
    if($oauth->get_access_token($_GET['code'])) {
        if($oauth->check_valid_access_token()) {
            $oauth->get_profile();

            if($oauth->profile->id) {
                $email = $oauth->profile->email;
                $info  = get_oauth_member_info($oauth->profile->id, $oauth->profile->name, 'facebook');

                if($info['id']) {
                    unset($member);

                    $member = array(
                                'mb_id'       => $info['id'],
                                'mb_password' => $info['pass'],
                                'mb_email'    => $email,
                                'mb_nick'     => $info['nick'],
                                'mb_name'     => $oauth->profile->name,
                                'mb_level'    => $default['de_register_level'],
								'mb_picture'  => 'https://graph.facebook.com/'.$oauth->profile->id.'/picture?width=150&height=150'
                            );

                    set_session('ss_oauth_member_no','facebook_'.$oauth->profile->id);
                    set_session('ss_oauth_member_facebook_'.$oauth->profile->id.'_info', $member);
                }
            } else {
                alert_close('서비스 장애 또는 정보가 올바르지 않습니다.');
            }
        } else {
            alert_close('토큰 정보가 올바르지 않습니다.');
        }
    } else {
        alert_close('서비스 장애 또는 정보가 올바르지 않습니다.');
    }
} else {
    alert_close('올바른 방법으로 이용해 주십시오.');
}
?>