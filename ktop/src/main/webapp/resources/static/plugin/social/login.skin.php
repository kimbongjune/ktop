<? if(!defined('_GUAVAPLATFORM_')) exit;

if((defined('GUAVA_NAVER_CLIENT_ID') && GUAVA_NAVER_CLIENT_ID) || (defined('GUAVA_KAKAO_REST_API_KEY') && GUAVA_KAKAO_REST_API_KEY) || (defined('GUAVA_FACEBOOK_CLIENT_ID') && GUAVA_FACEBOOK_CLIENT_ID) || (defined('GUAVA_GOOGLE_CLIENT_ID') && GUAVA_GOOGLE_CLIENT_ID)) {

//$login_oauth_url = GUAVA_SOCIAL_URL.'/login.php?provider=';
//$login_oauth_url = APP().'/social';
$login_oauth_url = GUAVA_URL.'/main/snslogin.php';
?>
<div class="login_snsbox">
	<p>SNS LOGIN</p>
	<ul>
		<?	if(defined('GUAVA_NAVER_CLIENT_ID') && GUAVA_NAVER_CLIENT_ID) { 
		?>
			<a href="<? echo $login_oauth_url.'?provider=naver'; ?>">
				<li class="sns_login_btn sns_n"></li>
			</a>
		<?	}	?>
			
		<?	if(defined('GUAVA_KAKAO_REST_API_KEY') && GUAVA_KAKAO_REST_API_KEY) { 
		?>
			<a href="<? echo $login_oauth_url.'?provider=kakao'; ?>">
				<li class="sns_login_btn sns_k"></li>
			</a>
		<?	}	?>

			
		<?	if($_SERVER['SERVER_PORT'] != 80) {	?>
		<?	if(defined('GUAVA_FACEBOOK_CLIENT_ID') && GUAVA_FACEBOOK_CLIENT_ID) { 
		?>
			<a href="<? echo $login_oauth_url.'?provider=facebook'; ?>">
				<li class="sns_login_btn sns_f"></li>
			</a>
		<?	}	?>
		<?	}	?>
			
		<?	if(defined('GUAVA_GOOGLE_CLIENT_ID') && GUAVA_GOOGLE_CLIENT_ID) { 
		?>
			<a href="<? echo $login_oauth_url.'?provider=google'; ?>">
				<li class="sns_login_btn sns_g"></li>
			</a>
		<?	}	?>
	</ul>
</div>
<? } ?>