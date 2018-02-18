<?php
$db="$_POST[db]";
$status=system("mysqldump --host=$_POST[mysql_host] --user=$_POST[login] --password=$_POST[password] $db > ../$db.sql");
?>

