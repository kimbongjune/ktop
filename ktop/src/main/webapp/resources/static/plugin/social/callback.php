<?php
include_once('../../../guava.php');
include_once(GUAVA_SOCIAL_PATH.'/functions.php');


if($user['user_id']) alert('잘못된 접근입니다.', GUAVA_URL);

$provider = preg_replace('#[^a-z]#', '', $_GET['provider']);

switch($provider) {
    case 'naver' :
    case 'kakao' :
    case 'facebook' :
    case 'google' :
        break;
    default :
        alert('SNS 로그인 서비스가 올바르지 않습니다.');
        break;
}

require GUAVA_SOCIAL_PATH.'/'.$provider.'/callback.php';

$member_no = get_session('ss_oauth_member_no');
$member_info = get_session('ss_oauth_member_'.$member_no.'_info');
$member_check = get_user($member_info['user_id']);


if(!$member_check['user_key']) {
	// 레벨코드 배열
	$ulevel_make = ulevel_make($_POST['user_type']);

	$SQL_ARR = array();

	$SQL_ARR['user_id'] = $member_info['user_id'];
	$SQL_ARR['user_key'] = $member_info['user_id'];
	$SQL_ARR['user_passwd'] = $member_info['user_passwd'];
	$SQL_ARR['user_type'] = ($member_info['user_type'])?$member_info['user_type']:0;
	$SQL_ARR['user_level'] = ($ulevel_make['groups'][$member_info['user_type']]['ugroup_defaultlevel'])?$ulevel_make['groups'][$member_info['user_type']]['ugroup_defaultlevel']:0;
	$SQL_ARR['user_name'] = $member_info['user_name'];
	$SQL_ARR['*user_hp'] = sql_secret_field($member_info['user_hp'], 'insert');
	$SQL_ARR['*user_email'] = sql_secret_field($member_info['user_email'], 'insert');
	$SQL_ARR['user_memo'] = '';
	$SQL_ARR['user_lastip'] = escape_trim($_SERVER['REMOTE_ADDR']);
	$SQL_ARR['user_lastlogin'] = GUAVA_TIME_NOW;
	$SQL_ARR['user_regip'] = escape_trim($_SERVER['REMOTE_ADDR']);
	$SQL_ARR['user_social'] = 1;
	$SQL_ARR['user_regdate'] = GUAVA_TIME_NOW;

	// 입력
	$sql = sql_make('insert',$cfg['table_user'],$SQL_ARR);
	sql_query($sql);

	$member_check = get_user($member_info['user_id']);
}else {
	// 차단된 아이디인가?
	if(date_make($member_check['user_intercept_date']) && $member_check['user_intercept_date'] <= GUAVA_TIME_TODAY) {
		$date = preg_replace("/([0-9]{4})-([0-9]{2})-([0-9]{2})/", "\\1년 \\2월 \\3일", $member_check['user_intercept_date']); 
		alert('차단된 아이디이므로 접근하실 수 없습니다.\\n\\n차단일자 : '.$date);
	}

	// 탈퇴한 아이디인가?
	if(date_make($member_check['user_leave_date']) && $member_check['user_leave_date'] <= GUAVA_TIME_TODAY) {
		$date = preg_replace("/([0-9]{4})-([0-9]{2})-([0-9]{2})/", "\\1년 \\2월 \\3일", $member_check['user_leave_date']); 
		alert('탈퇴한 아이디이므로 접근하실 수 없습니다.\\n\\n탈퇴일자 : '.$date);
	}

	// 단순 로그인 기록
	log_write($member_info['user_id'],'logintrue');
}

// 로그인 세션생성
set_session('ss_user_id', $member_info['user_id']);

// 메인으로 이동
$return_url = $_SESSION['sns_return_url'];
if(!$return_url) $return_url = GUAVA_URL;
gotourl($return_url);
?>