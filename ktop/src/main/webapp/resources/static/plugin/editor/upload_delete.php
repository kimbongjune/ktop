<? if(!defined('_GUAVAPLATFORM_')) exit;
define('_GUAVADESIGN_','NONE');


// 리퍼러 검사
referer_check();


if(!$_POST['file_save']) exit;

$delfile = sql_fetch("select * from ".$cfg['table_file']." where  file_save='".$_POST['file_save']."'");

/* 첨부된 파일을 삭제한다. */
file_delete($delfile['file_table'], $delfile['file_target'], $delfile['file_gubun'], $delfile['csort']);

?>