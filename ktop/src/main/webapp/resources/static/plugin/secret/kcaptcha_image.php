<? if(!defined('_GUAVAPLATFORM_')) exit;
define('_GUAVADESIGN_','NONE');


// 리퍼러 검사
referer_check();


include('kcaptcha.php');
$captcha = new KCAPTCHA();
$captcha->getKeyString();
?>