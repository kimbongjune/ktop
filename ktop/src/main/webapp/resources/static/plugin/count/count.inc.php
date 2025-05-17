<?php if(!defined('_GUAVAPLATFORM_')) exit;


// 방문자
$remote_addr = escape_trim($_SERVER['REMOTE_ADDR']);
$referer = '';
if(isset($_SERVER['HTTP_REFERER'])) {
	$referer = escape_trim(clean_xss_tags($_SERVER['HTTP_REFERER']));
}
$user_agent  = escape_trim(clean_xss_tags($_SERVER['HTTP_USER_AGENT']));
$user_type = ($user['user_type'])?$user['user_type']:0;


if($user_agent
	&& !preg_match("/bot/",strtolower($user_agent)) 
	&& !preg_match("/slurp/",strtolower($user_agent)) 
	&& !preg_match("/sleuth/",strtolower($user_agent)) 
	&& !preg_match("/spider/",strtolower($user_agent)) 
	&& !preg_match("/coccoc/",strtolower($user_agent)) 
	&& !preg_match("/checks/",strtolower($user_agent)) 
	&& !preg_match("/daumoa/",strtolower($user_agent)) 
	&& !preg_match("/drupal/",strtolower($user_agent)) 
	&& !preg_match("/dillo/",strtolower($user_agent)) 
	&& !preg_match("/ezoom/",strtolower($user_agent)) 
	&& !preg_match("/heritrix/",strtolower($user_agent)) 
	&& !preg_match("/archiver/",strtolower($user_agent)) 
	&& !preg_match("/python/",strtolower($user_agent)) 
	&& !preg_match("/powermark/",strtolower($user_agent)) 
	&& !preg_match("/crawler/",strtolower($user_agent))
	&& !preg_match("/yandex/",strtolower($user_agent)) 
	&& !preg_match("/wotbox/",strtolower($user_agent))
) {
	$sql = " insert into ".$cfg['table_visit']." set 
												visit_ip		= '".$remote_addr."',
												visit_session	= '".session_id()."',
												visit_type		= '".$is_device."',
												visit_date		= '".GUAVA_TIME_TODAY."',
												visit_time		= '".GUAVA_TIME_HIS."',
												visit_referer	= '".$referer."',
												visit_engine	= '".get_engine($referer)."',
												visit_agent		= '".$user_agent."',
												cclass			= '".$_SITE."',
												user_type		= '".$user_type."'
												";
	$result = sql_query($sql,false);
	if($result) {
		$sql = " insert into ".$cfg['table_visit_sum']." set 
														visit_count	= 1,
														visit_date	= '".GUAVA_TIME_TODAY."',
														cclass		= '".$_SITE."',
														user_type	= '".$user_type."'
														";
		$result = sql_query($sql,false);
		if(!$result) {
			$sql = " update ".$cfg['table_visit_sum']." set 
															visit_count	= visit_count + 1 
															where
															visit_date	= '".GUAVA_TIME_TODAY."' and
															cclass		= '".$_SITE."' and
															user_type	= '".$user_type."'
															";
			sql_query($sql);
		}
	}
}

?>