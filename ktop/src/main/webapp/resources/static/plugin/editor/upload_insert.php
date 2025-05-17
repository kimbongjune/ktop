<? if(!defined('_GUAVAPLATFORM_')) exit;
define('_GUAVADESIGN_','NONE');


// 리퍼러 검사
referer_check();


if(!$_POST['file_table']) exit;
if(!$file_target) $file_target = GUAVA_TEMP_FILETARGET;

$return_file_save = file_upload($file_table, $file_target, 'ed_file', $config['image_resize'], $config['image_original']);

echo $return_file_save;

?>