<?php
/***************************************************************************
 *   copyright				: (C) 2008 - 2014 WeBid
 *   site					: http://www.webidsupport.com/
 ***************************************************************************/

/***************************************************************************
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 2 of the License, or
 *   (at your option) any later version. Although none of the code may be
 *   sold. If you have been sold this script, get a refund.
 ***************************************************************************/

define('InAdmin', 1);
$current_page = 'stats';
include '../common.php';
include $include_path . 'functions_admin.php';
include 'loggedin.inc.php';

// Retrieve data
$query = "SELECT * FROM " . $DBPrefix . "currentbrowsers WHERE month = :month AND year = :year ORDER BY counter DESC";
$params = array();
$params[] = array(':month', date('n'), 'int');
$params[] = array(':year', date('Y'), 'int');
$db->query($query, $params);

$MAX = 0;
$TOTAL = 0;
$BROWSERS = array();
while ($row = fetch())
{
	$BROWSERS[$row['browser']] = $row['counter'];
	$TOTAL = $TOTAL + $row['counter'];

	if ($row['counter'] > $MAX)
	{
		$MAX = $row['counter'];
	}
}

foreach ($BROWSERS as $k => $v)
{
	$template->assign_block_vars('sitestats', array(
		'BROWSER' => $k,
		'NUM' => $BROWSERS[$k],
		'WIDTH' => ($BROWSERS[$k] * 100) / $MAX,
		'PERCENTAGE' => ceil(intval($BROWSERS[$k] * 100 / $TOTAL))
		));
}

$template->assign_vars(array(
		'SITENAME' => $system->SETTINGS['sitename'],
		'STATSMONTH' => date('F Y', $system->ctime)
		));

$template->set_filenames(array(
		'body' => 'viewbrowserstats.tpl'
		));
$template->display('body');
?>
