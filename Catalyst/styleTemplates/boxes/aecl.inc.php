<?php
/*
+--------------------------------------------------------------------------
|   CubeCart v4
|   ========================================
+--------------------------------------------------------------------------
|	rew.inc.php
|   ========================================
|	Categories menu cahce support by convict http://cubecart-mods-skins.com (c)2006-2007
+--------------------------------------------------------------------------
*/
if(!defined('CC_INI_SET')){ die("Access Denied"); }

$relP = $config['sef'] ? $glob['storeURL']."/" : "";

if (isset($catTreeIn) && $menucache->cacheStatus) {
	for ($j=0;$j<count($catTreeIn);$j++) {
		$box_content = str_replace(array('<ul id="u'.$catTreeIn[$j].'" style="display: none;">','p'.$catTreeIn[$j].'" src="'.$relP.'images/cplus'),array('<ul id="u'.$catTreeIn[$j].'" style="display: block;">','p'.$catTreeIn[$j].'" src="'.$relP.'images/cminus'),$box_content);
	}
	$box_content = str_replace($catName[$currentCategory].'</a>','<strong>'.$catName[$currentCategory].'</strong></a>',$box_content);
}
?>
