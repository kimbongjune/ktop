<?
include_once('../../../guava.php');

if($user['user_id']) alert('잘못된 접근입니다.', GUAVA_URL);

$provider = preg_replace('#[^a-z]#', '', $_GET['provider']);

$provider_txt = '';
switch($provider) {
    case 'naver' :
		$provider_txt = '네이버';
		break;
    case 'kakao' :
		$provider_txt = '카카오톡';
		break;
    case 'facebook' :
		$provider_txt = '페이스북';
		break;
    case 'google' :
		$provider_txt = '구글플러스';
		break;
    default :
        alert('SNS 로그인 서비스가 올바르지 않습니다.');
        break;
}

require GUAVA_SOCIAL_PATH.'/'.$provider.'/login.php';

?>
<script src="<?=GUAVA_URL?>/<?=GUAVA_COMMON_DIR?>/js/jquery.min.js"></script>

<script>$(function() { document.location.href = "<?=$query?>"; }); </script>

<div class="center">
    <p class="fblack fbold fsize15">
		<?=$provider_txt?> 로그인에 연결 중입니다.<br />
		잠시만 기다려 주십시오.<br /><br />
		<img src="<?=GUAVA_SOCIAL_URL?>/image/loader.gif" alt="로딩중" />
	</p>
</div>
